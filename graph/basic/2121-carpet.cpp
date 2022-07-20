#include <bits/stdc++.h>

#define N 100001
using namespace std;

struct Edge {
    int a;
    int b;
    int weight;
};

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight <= edge2.weight;
}

int n, m, k, res = 0, num = 0;
priority_queue<Edge> pq;
int id[N];
vector<Edge> graph[N];

int find(int x) {
    return id[x] == x ? x : (id[x] = find(id[x]));
}

bool connected(int u, int v) {
    return find(u) == find(v);
}

void connect(int u, int v) {
    int ur = find(u);
    int vr = find(v);
    if (id[ur] != id[vr]) {
        id[ur] = vr;
    }
}

void kruskal() {
    while (!pq.empty() && num < n - 1 && num <= k) {
        Edge edge = pq.top();
        pq.pop();
        if (connected(edge.a, edge.b)) continue;
        connect(edge.a, edge.b);
        res += edge.weight;
        num++;
    }
}


int main() {
    cin >> n >> m >> k;
    for (int i = 1; i <= n; ++i) {
        id[i] = i;
    }
    for (int i = 1; i <= m; ++i) {
        int u, v, w;
        cin >> u >> v >> w;
        pq.push({u, v, w});
    }
    kruskal();
    cout << res << endl;
    return 0;
}