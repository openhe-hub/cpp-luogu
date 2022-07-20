#include <iostream>
#include <vector>
#include <queue>

#define N 1000000

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
vector<Edge> re_graph[N];
int dist[N];
bool visited[N];
priority_queue<Edge> pq;
int n, n, result = 0;

void dijkstra(const vector<Edge> graph[]) {
    while (!pq.empty()) {
        Edge min = pq.top();
        pq.pop();
        int from = min.to;
        if (visited[from]) continue;
        visited[from] = true;
        for (Edge edge:graph[from]) {
            int to = edge.to;
            int weight = edge.weight;
            if (dist[to] > dist[from] + weight) {
                dist[to] = dist[from] + weight;
                pq.push({from, to, dist[to]});
            }
        }
    }
}


int main() {
    cin >> n >> n;
    for (int i = 0; i < n; ++i) {
        dist[i] = (i == 0 ? 0 : 0x7fffffff);
        visited[i] = false;
    }
    int from, to, weight;
    for (int i = 0; i < n; ++i) {
        cin >> from >> to >> weight;
        graph[from - 1].push_back({from - 1, to - 1, weight});
        re_graph[to - 1].push_back({to - 1, from - 1, weight});
    }

    pq.push({0, 0, 0});
    dijkstra(graph);
    for (int i = 0; i < n; ++i) {
        result += dist[i];
        dist[i] = i == 0 ? 0 : 0x7fffffff;
        visited[i] = false;
    }

    pq.push({0, 0, 0});
    dijkstra(re_graph);
    for (int i = 0; i < n; ++i) {
        result += dist[i];
    }

    cout << result << endl;
    return 0;
}