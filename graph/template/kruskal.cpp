#include <bits/stdc++.h>

#define N 5005
using namespace std;

int n, m;

struct Edge {
    int a;
    int b;
    int weight;
};

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

vector<Edge> graph[N];
int id[N];
priority_queue<Edge> pq;
int size = 0, res = 0;

int find(int v) {
    return v == id[v] ? v : (id[v] = find(id[v]));
}

void connect(int u, int v) {
    int vr = find(v);
    int ur = find(u);
    if (vr != ur) {
        id[vr] = ur;
    }
}

bool connected(int u, int v) {
    return find(u) == find(v);
}

void kruskal() {
    while (!pq.empty() && size < n - 1) {
        Edge edge = pq.top();
        pq.pop();
        if (!connected(edge.a, edge.b)) {
            connect(edge.a, edge.b);
            size++;
            res += edge.weight;
        }
    }
}

int main() {
    cin >> n >> m;
    for (int i = 1; i <= n; ++i) {
        id[i] = i;
    }
    for (int i = 1; i <= m; ++i) {
        int x, y, z;
        cin >> x >> y >> z;
        pq.push({x, y, z});
    }
    kruskal();
    cout << res << endl;
    return 0;
}