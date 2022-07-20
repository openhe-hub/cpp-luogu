#include <iostream>
#include <algorithm>

#define N 100
using namespace std;

struct Edge {
    int from;
    int to;
    int weight;
} graph[N];

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

int n, m, dist[N];

bool bellman_ford() {
    for (int i = 1; i <= n-1; ++i) {
        for (int j = 1; j <= m; ++j) {
            dist[graph[j].to] = min(dist[graph[j].to], dist[graph[j].from] + graph[j].weight);
        }
    }
    bool flag= false;
    for (int j = 1; j <= m; ++j) {
        if (dist[graph[j].to]>dist[graph[j].from]+graph[j].weight){
            flag= true;
        }
    }
    return flag;
}

int main() {
    cin >> n >> m;
    for (int i = 1; i <= n; ++i) {
        dist[i] = i == 1 ? 0 : 0x7fffffff;
    }
    for (int i = 1; i <= m; ++i) {
        int u, v, w;
        cin >> u >> v >> w;
        graph[u] = {u, v, w};
    }
    if (bellman_ford()){
        cout <<"Yes"<< endl;
    }
    cout << dist[n] << endl;
    return 0;
}