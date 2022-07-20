#include <bits/stdc++.h>

#define N 100005
#define M 200005
#define INF 0x3f3f3f3f
using namespace std;

struct Edge {
    int from, to, weight;
};

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

int n, m, s, dis[N], vis[N];
vector<Edge> graph[N];
priority_queue<Edge> pq;
/**
 * 堆优化dijkstra:O(m*log m)
 * 不能处理负权边
 */
void dijkstra() {
    pq.push({s, s, 0});
    while (!pq.empty()) {
        Edge e = pq.top();
        pq.pop();
        int from = e.to;
        if (!vis[from]) {
            vis[from] = 1;
            for (int i = 0; i < graph[from].size(); ++i) {
                int to = graph[from][i].to;
                int weight = graph[from][i].weight;
                if (dis[to] > dis[from] + weight) {
                    dis[to] = dis[from] + weight;
                    pq.push({from, to, dis[to]});
                }
            }
        }
    }
}

int main() {
    cin >> n >> m >> s;
    for (int i = 1; i <= n; ++i) {
        dis[i] = i == s ? 0 : INF;
        vis[i] = 0;
    }
    for (int i = 1; i <= m; ++i) {
        int u, v, w;
        cin >> u >> v >> w;
        graph[u].push_back({u, v, w});
    }
    dijkstra();
    for (int i = 1; i <= n; ++i) {
        cout << dis[i] << " ";
    }
    return 0;
}