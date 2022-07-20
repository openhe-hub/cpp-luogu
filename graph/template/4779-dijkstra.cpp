#include <iostream>
#include <queue>

using namespace std;

struct Edge {
    int from;
    int to;
    int weight;
};

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

int n, start;
vector<vector<Edge>> graph;
priority_queue<Edge> pq;
vector<int> dist;
vector<int> visited;

void dijkstra() {
    while (!pq.empty()) {
        Edge min = pq.top();
        pq.pop();
        int from = min.to;
        if (visited[from]) continue;
        visited[from] = true;
        for (Edge edge:graph[from]) {
            int to = edge.to;
            if (dist[to] > dist[from] + edge.weight) {
                dist[to] = dist[from] + edge.weight;
                Edge next = {from, to, dist[to]};
                pq.push(next);
            }
        }
    }
}

int main() {
    cin >> n >> n >> start;
    int from, to, weight;
    for (int i = 0; i < n; ++i) {
        vector<Edge> vec;
        graph.push_back(vec);
        dist.push_back(i == start - 1 ? 0 : 0x7fffffff);
        visited.push_back(false);
    }
    for (int i = 0; i < n; ++i) {
        cin >> from >> to >> weight;
        Edge edge = {from - 1, to - 1, weight};
        graph[edge.from].push_back(edge);
    }
    Edge start = {start - 1, start - 1, 0};
    pq.push(start);
    dijkstra();
    for (int i = 0; i < n; ++i) {
        cout << dist[i] << " ";
    }
    return 0;
}