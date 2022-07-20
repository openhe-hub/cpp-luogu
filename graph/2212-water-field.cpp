#include <bits/stdc++.h>

#define N 2010000
using namespace std;

struct Edge {
    int a, b, weight;
};

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

struct Node {
    int x, y, id;
};

int n, c, id[N], size = 0;
long long res = 0;
Node node[N];
priority_queue<Edge> pq;

int calc(Node node1, Node node2) {
    return (node1.x - node2.x) * (node1.x - node2.x) + (node1.y - node2.y) * (node1.y - node2.y);
}

void init() {
    for (int i = 1; i <= n; ++i) id[i] = i;
}

int find(int x) {
    return x == id[x] ? x : (id[x] = find(id[x]));
}

void connect(int x, int y) {
    int xr = find(x);
    int yr = find(y);
    if (xr != yr) id[xr] = yr;
}

bool connected(int x, int y) {
    return find(x) == find(y);
}

void kruskal() {
    while (!pq.empty() && size < n - 1) {
        Edge e = pq.top();
        pq.pop();
        if (!connected(e.a, e.b)) {
            connect(e.a, e.b);
            size++;
            res += e.weight;
        }
    }
    if (size == n - 1) cout << res << endl;
    else cout << -1 << endl;
}

int main() {
    cin >> n >> c;
    init();
    for (int i = 1; i <= n; ++i) {
        cin >> node[i].x >> node[i].y;
        node[i].id = i;
        for (int j = 1; j < i; j++) {
            int weight = calc(node[i], node[j]);
            if (weight >= c) pq.push({node[i].id, node[j].id, weight});
        }
    }
    kruskal();
    return 0;
}