#include <bits/stdc++.h>

#define N 10005
#define M 20005
using namespace std;

struct Edge {
    int a, b, weight, id;
};

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

int n, k, m, idx = 0, id[N], rec[M], _max = -1;
priority_queue<Edge> pq1, pq2;

void init() {
    for (int i = 1; i <= n; i++) id[i] = i;
    memset(rec, 0, m);
}

int find(int x) {
    return id[x] == x ? x : (id[x] = find(id[x]));
}

void connect(int x, int y) {
    int xr = find(x);
    int yr = find(y);
    if (xr != yr) id[xr] = yr;
}

bool connected(int x, int y) {
    return find(x) == find(y);
}

void kruskal1() {
    while (!pq1.empty() && idx < k) {
        Edge e = pq1.top();
        pq1.pop();
        if (!connected(e.a, e.b)) {
            connect(e.a, e.b);
            idx++;
            _max = max(_max, e.weight);
            rec[e.id] = 1;
        }
    }
}

void kruskal2() {
    while (!pq2.empty() && idx < n - 1) {
        Edge e = pq2.top();
        pq2.pop();
        if (!connected(e.a, e.b)) {
            connect(e.a, e.b);
            if (!rec[e.id]) {
                idx++;
                _max = max(_max, e.weight);
                rec[e.id] = 2;
            }
        }
    }
}

int main() {
    cin >> n >> k >> m;
    init();
    for (int i = 1; i <= m-1; ++i) {
        int a, b, c1, c2;
        cin >> a >> b >> c1 >> c2;
        pq1.push({a, b, c1, i});
        pq2.push({a, b, c2, i});
    }
    kruskal1();
    kruskal2();
    cout << _max << endl;
    for (int i = 1; i <= m; ++i) {
        if (rec[i]) cout << i << " " << rec[i] << endl;
    }
    return 0;
}