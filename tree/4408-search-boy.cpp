#include <bits/stdc++.h>

#define N 200010
typedef long long ll;
using namespace std;
struct Edge {
    int u, v,w;
};
int n, m, tot, vis[N], v, q;
ll dis1[N], dis2[N], dis3[N], ans;
vector<Edge> graph[N];

inline void add(int u, int v, int w) {
    graph[u].push_back({u, v, w});
    graph[v].push_back({v, u, w});
}

void dfs1(int u) {
    vis[u] = 1;
    for (int i = 0; i < graph[u].size(); i++) {
        int to = graph[u][i].v;
        ll w = graph[u][i].w;
        if (!vis[to]) {
            dis1[to] = dis1[u] + w;
            dfs1(to);
        }
    }
}

void dfs2(int u) {
    vis[u] = 1;
    for (int i = 0; i < graph[u].size(); i++) {
        int to = graph[u][i].v;
        ll w = graph[u][i].w;
        if (!vis[to]) {
            dis2[to] = dis2[u] + w;
            dfs2(to);
        }
    }
}

void dfs3(int u) {
    vis[u] = 1;
    for (int i = 0; i < graph[u].size(); i++) {
        int to = graph[u][i].v;
        ll w = graph[u][i].w;
        if (!vis[to]) {
            dis3[to] = dis3[u] + w;
            dfs3(to);
        }
    }
}

int main() {
    scanf("%d%d", &n, &m);
    for (int i = 1; i <= m; i++) {
        int u, v, w;
        scanf("%d%d%d", &u, &v, &w);
        add(u, v, w);
    }
    dfs1(1);
    for (int i = 1; i <= n; i++)
        if (dis1[v] < dis1[i])
            v = i;
    memset(vis, 0, sizeof(vis));
    dfs2(v);
    for (int i = 1; i <= n; i++)
        if (dis2[q] < dis2[i])
            q = i;
    memset(vis, 0, sizeof(vis));
    dfs3(q);
    for (int i = 1; i <= n; i++)
        ans = max(ans, min(dis2[i], dis3[i]) + dis2[q]);
    printf("%lld", ans);
    return 0;
}