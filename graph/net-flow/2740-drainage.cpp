#include <bits/stdc++.h>

#define N 205
#define M 405
#define INF 1<<29
typedef long long ll;
using namespace std;

struct Edge {
    int to, nxt, val;
} e[M];

int n, m, s, t, head[M], pre[N], tot = 1;
ll inc[N], maxflow;
bool vis[N];

inline void add(int u, int v, int w) {
    e[++tot] = {v, head[u], w};
    head[u] = tot;
}

inline bool bfs() {
    memset(vis, false, sizeof(vis));
    queue<int> q;
    q.push(s);
    vis[s] = true;
    inc[s] = INF;

    while (!q.empty()) {
        int u = q.front();
        q.pop();
        for (int i = head[u]; i; i = e[i].nxt) {
            int v = e[i].to;
            ll val = e[i].val;
            if (val == 0 || vis[v]) continue;

            vis[v] = true;
            inc[v] = min(inc[u], val);
            q.push(v);
            pre[v] = i;
            if (v == t) return true;
        }
    }
    return false;
}

inline void update() {
    int u = t;
    while (u != s) {
        int v = pre[u];
        e[v].val -= inc[t];
        e[v ^ 1].val += inc[t];
        u = e[v ^ 1].to;
    }
    maxflow += inc[t];
}

int main() {
    cin >> n >> m;
    s = 1;
    t = m;
    for (int i = 1; i <= n; ++i) {
        int u, v, w;
        cin >> u >> v >> w;
        add(u, v, w);
        add(v, u, 0);
    }
    while (bfs()) update();
    cout << maxflow << endl;
    return 0;
}