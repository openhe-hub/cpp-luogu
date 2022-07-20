#include <bits/stdc++.h>

#define N 210
#define M 10100
#define INF 1<<9
#define VAL 1
using namespace std;

struct Edge {
    int to, nxt, val;
} e[M];

int n, m, s, t, head[M], pre[N], dep[N], maxflow, tot = 1;

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

int main() {
    cin >> m >> n;
    s = 0;
    t = n + 1;
    while (true) {
        int from, to;
        cin >> from >> to;
        if (from == -1 && to == -1) break;
        else {
            add(from, to, INF);
            add(to, from, 0);
        }
    }
    for (int i = 1; i <= m; i++) {
        add(s, i, VAL);
        add(i, s, 0);
    }
    for (int i = m + 1; i <= n; i++) {
        add(i, t, VAL);
        add(t, i, 0);
    }
    while (bfs()) maxflow += dfs(s, INF);
    cout << maxflow << endl;
    for (int i = 2; i <= tot; i += 2) {
        if (e[i].to != s && e[i ^ 1].to != s && e[i].to != t && e[i ^ 1].to != t && e[i ^ 1].val != 0) {
            cout << e[i ^ 1].to << " " << e[i].to << endl;
        }
    }
    return 0;
}