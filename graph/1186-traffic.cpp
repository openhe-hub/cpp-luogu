#include <bits/stdc++.h>

#define N 1005
using namespace std;

struct Edge {
    int from;
    int to;
    int weight;
};

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

vector<Edge> graph[N];
priority_queue<Edge> pq;
vector<Edge> edges;
int dist[N];
bool maxflow[N];
int n, m, res = 0;

void dijkstra(Edge deleted) {
    while (!pq.empty()) {
        Edge min = pq.top();
        pq.pop();
        int from = min.to;
        if (maxflow[from]) continue;
        maxflow[from] = true;
        for (int i = 0; i < graph[from].size(); ++i) {
            Edge edge = graph[from][i];
            int to = edge.to;
            int weight = edge.weight;
            if (from == deleted.from && to == deleted.to || from == deleted.to && to == deleted.from) continue;
            if (dist[to] > dist[from] + weight) {
                dist[to] = dist[from] + weight;
                pq.push({from, to, dist[to]});
            }
        }
    }
}

int main() {
    cin >> n >> m;
    for (int i = 1; i <= n; ++i) {
        dist[i] = (i == n) ? 0 : 0x7fffffff;
        maxflow[i] = false;
    }

    for (int i = 1; i <= m; ++i) {
        int a, b, weight;
        cin >> a >> b >> weight;
        Edge edge1 = {a, b, weight};
        Edge edge2 = {b, a, weight};
        edges.push_back(edge1);
        graph[edge1.from].push_back(edge1);
        graph[edge2.from].push_back(edge2);
    }

    for (int i = 0; i < edges.size(); ++i) {
        for (int j = 1; j <= n; ++j) {
            dist[j] = (j == n) ? 0 : 0x7fffffff;
            maxflow[j] = false;
        }
        pq.push({n, n, 0});
        dijkstra(edges[i]);
        res = max(res, dist[1]);
    }

    cout << res << endl;

    return 0;
}


