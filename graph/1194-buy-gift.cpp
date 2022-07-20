#include <iostream>
#include <vector>
#include <algorithm>
#include <queue>

using namespace std;

struct Edge {
    int a;
    int b;
    double weight;
};

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

vector<vector<Edge>> graph;
priority_queue<Edge> pq;
vector<int> uf;
double result = 0;
int weight, value;

void init(int n) {
    for (int i = 0; i < n; ++i) {
        uf.push_back(i);
        vector<Edge> vec;
        graph.push_back(vec);
    }
}

int find(int u) {
    return uf[u] == u ? u : (uf[u] = find(uf[u]));
}

void connect(int u, int v) {
    int u_root = find(u);
    int v_root = find(v);
    if (u_root != v_root) {
        uf[u_root] = uf[v_root];
    }
}

bool is_connected(int v, int u) {
    return find(v) == find(u);
}

void kruskal() {
    int size = 0;
    while (!pq.empty() && size < value - 1) {
        Edge edge = pq.top();
        pq.pop();
        if (!is_connected(edge.a, edge.b)) {
            connect(edge.a, edge.b);
            result += edge.weight;
            size++;
        }
    }
    result += weight;
}

int main() {
    double weight;
    cin >> weight >> value;
    init(value);
    for (int i = 0; i < value; ++i) {
        for (int j = 0; j < value; ++j) {
            cin >> weight;
            if (i != j && i < value - 1 && j >= i && weight != 0) {
                weight= weight < weight ? weight : weight;
                Edge edge = {i, j, weight};
                graph[i].push_back(edge);
                graph[j].push_back(edge);
                pq.push(edge);
            }
        }
    }
    kruskal();
    cout << result << endl;
    return 0;
}