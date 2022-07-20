#include <bits/stdc++.h>

#define N 500
#define M 410000
#define INF 1<<9
using namespace std;

struct Edge {
    int to, nxt, val;
} e[M];

int n, m, s, t, head[M], pre[N], dep[N], maxflow, tot = 1, res;

inline void add(int u, int v, int w) {
    e[++tot] = {v, head[u], w};
    head[u] = tot;
}

inline bool bfs() {
    memset(dep, 0, (n + 3) * sizeof(int));
    queue<int> q;
    q.push(s);
    dep[s] = 1;
    while (!q.empty()) {
        int u = q.front();
        q.pop();
        for (int i = head[u]; i; i = e[i].nxt) {
            int v = e[i].to;
            int val = e[i].val;
            if (val && !dep[v]) {
                dep[v] = dep[u] + 1;
                q.push(v);
            }
        }
    }
    return dep[t];
}

inline int dfs(int u, int sum) {
    if (u == t) return sum;
    for (int i = head[u]; i && sum; i = e[i].nxt) {
        int v = e[i].to;
        int val = e[i].val;
        if (val && dep[v] == dep[u] + 1) {
            int rlow = dfs(v, min(sum, val));
            if (rlow) {
                e[i].val -= rlow;
                e[i ^ 1].val += rlow;
                return rlow;
            }
        }
    }
    return 0;
}

//FIXME
int main() {
    cin >> m >> n;
    s = n + m + 1;
    t = s + 1;
    for (int i = 1; i <= m; i++) {
        int r;
        cin >> r;
        add(s, i, r);
        add(i, s, 0);
        res += r;
    }
    for (int i = 1 + m; i <= m + n; i++) {
        int c;
        cin >> c;
        add(i, t, c);
        add(t, i, 0);
    }
    for (int i = 1; i <= m; i++) {
        for (int j = m + 1; j <= m + n; j++) {
            add(i, j, 1);
            add(j, i, 0);
        }
    }
    while (bfs()) maxflow += dfs(s, INF);
    if (maxflow != res) {
        cout << 0 << endl;
        return 0;
    } else {
        cout << 1 << endl;
          for (int i = 2; i <= tot; i += 2) {
              if (e[i].to != s && e[i ^ 1].to != s && e[i].to != t && e[i ^ 1].to != t && e[i ^ 1].val != 0) {
                  cout << e[i ^ 1].to << "=>"<<(e[i].to - m) << endl;
              }
          }
        return 0;
    }

}