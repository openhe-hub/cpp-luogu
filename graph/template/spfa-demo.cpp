#include <bits/stdc++.h>

#define N 10005
#define M 500005
#define INF INT_MAX
using namespace std;

struct Edge {
    int from, to, weight;
};
int n, m, s, dis[N], vis[N];
vector<Edge> graph[N];
queue<int> q;
/*
 * 最坏情况O(n*m)
 * */
void spfa() {
    for (int i = 1; i <= n; ++i) {
        dis[i] = i == s ? 0 : INF;
        vis[i] = i == s ? 1 : 0;
    }
    q.push(s);
    while (!q.empty()) {
        int u = q.front();
        q.pop();
        vis[u] = 0;
        for (int i = 0; i < graph[u].size(); i++) {
            int v = graph[u][i].to;
            int w = graph[u][i].weight;
            if (dis[v] > dis[u] + w) {
                dis[v] = dis[u] + w;
                if (!vis[v]) {
                    vis[v] = 1;
                    q.push(v);
                }
            }
        }
    }
}

int main() {
    cin >> n >> m >> s;
    for (int i = 1; i <= m; ++i) {
        int u, v, w;
        cin >> u >> v >> w;
        graph[u].push_back({u, v, w});
    }
    spfa();
    for (int i = 1; i <= n; ++i) {
        cout << dis[i] << " ";
    }
    return 0;
}