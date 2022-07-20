#include <iostream>
#include <vector>
#include <unordered_map>
#include <queue>
#include <cmath>
#include <cstring>

using namespace std;

struct Edge {
    int a;
    int b;
    double weight;
};

vector<vector<Edge>> graph;
vector<int> id, size;
priority_queue<Edge> pq;

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

int start, v, n = 0;
double result = 0.0;

void init_union_find();

int find(int v);

void connect(int v, int w);

bool is_connected(int v, int w);

void kruskal();

int main() {
    unordered_map<int, pair<int, int>> points;
    int x, y;

    cin >> v >> start;
    for (int i = 0; i < start; ++i) {
        vector<Edge> vec;
        graph.push_back(vec);
    }

    for (int i = 0; i < start; ++i) {
        cin >> x >> y;
        points.insert(make_pair(i, make_pair(x, y)));
    }

    for (int i = 0; i < points.size() - 1; ++i) {
        for (int j = i + 1; j < points.size(); ++j) {
            Edge edge = {i, j, sqrt(pow((double) (points[i].first - points[j].first), 2) +
                                    pow((double) (points[i].second - points[j].second), 2))};
            graph[i].push_back(edge);
            pq.push(edge);
        }
    }

    kruskal();
    printf("%.2f", result);
    return 0;
}


void init_union_find() {
    for (int i = 0; i < start; ++i) {
        id.push_back(i);
    }
    for (int i = 0; i < start; ++i) {
        size.push_back(1);
    }
}

int find(int v) {
    return id[v] == v ? v : (id[v] = find(id[v]));
}

void connect(int v, int w) {
    int vRoot = find(v);
    int wRoot = find(w);
    if (vRoot != wRoot) {
        if (size[vRoot] < size[wRoot]) {
            id[vRoot] = id[wRoot];
            size[wRoot] += size[vRoot];
        } else {
            id[wRoot] = id[vRoot];
            size[vRoot] += size[wRoot];
        }
    }
}

bool is_connected(int v, int w) {
    return find(v) == find(w);
}

void kruskal() {
    init_union_find();
    while (!pq.empty() && n < start - v) {
        Edge edge = pq.top();
        pq.pop();
        if (!is_connected(edge.a, edge.b)) {
            connect(edge.a, edge.b);
            n++;
        }
        if (n == start - v) {
            result = edge.weight;
        }
    }
}


