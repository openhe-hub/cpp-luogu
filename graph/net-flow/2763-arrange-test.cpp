#include <bits/stdc++.h>

#define N 1025
#define M 21100
#define INF 1<<9
using namespace std;

struct Edge {
    int to, nxt, val;
} e[M];

int n, k, s, t, head[M], pre[N], dep[N], maxflow, tot = 1, res = 0;

inline void add(int u, int v, int w) {
    e[++tot] = {v, head[u], w};
    head[u] = tot;
}

inline bool bfs() {
    memset(dep, 0, sizeof(dep));
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
    cin >> k >> n;
    s = k + n + 1;
    t = s + 1;
    for (int i = 1; i <= k; ++i) {
        int w;
        cin >> w;
        res += w;
        add(i + n, t, w);
        add(t, i + n, 0);
    }
    for (int i = 1; i <= n; ++i) {
        int p;
        cin >> p;
        for (int j = 1; j <= p; ++j) {
            int v;
            cin >> v;
            add(i, v + n, 1);
            add(v + n, i, 0);
        }
    }
    for (int i = 1; i <= n; ++i) {
        add(s, i, 1);
        add(i, s, 0);
    }

    while (bfs()) maxflow += dfs(s, INF);
    if (maxflow != res) {
        cout << "No Solution!" << endl;
    } else {
        for (int i = 1; i <= k; ++i) {
            cout << i << ":";


            cout << endl;
        }
    }
    return 0;
}
