#include <bits/stdc++.h>
//SH-OI 2012
#define N 20005
#define M 100005
#define INF 0x7fffffff
using namespace std;

struct Edge {
    int from, to, weight;
};

struct Node {
    int x, y, id;
};


bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

int n, m, s, t, dis[M << 1], vis[M << 1], id[N][N];
vector<Edge> graph[N];
Node node[N];
priority_queue<Edge> pq;

bool cmp_x(Node node1, Node node2) {
    return node1.x == node2.x ? node1.y < node2.y : node1.x < node2.x;
}

bool cmp_y(Node node1, Node node2) {
    return node1.y == node2.y ? node1.x < node2.x : node1.y < node2.y;
}

void add(int u, int v, int w) {
    graph[u].push_back({u, v, w});
    graph[v].push_back({v, u, w});
}

void dijkstra() {
    for (int i = 1; i <= m; ++i) {
        dis[i] = i == s ? 0 : INF;
        vis[i] = 0;
    }
    pq.push({s, s, 0});
    while (!pq.empty()) {
        Edge e = pq.top();
        pq.pop();
        int from = e.to;
        if (!vis[from]) {
            vis[from] = 1;
            for (int i = 0; i < graph[from].size(); ++i) {
                int to = graph[from][i].to;
                int w = graph[from][i].weight;
                if (dis[to] > dis[from] + w) {
                    dis[to] = dis[from] + w;
                    if(!vis[to]) pq.push({from, to, dis[to]});
                }
            }
        }
    }
}

int main() {
    cin >> n >> m;
    m += 2;
    s = m - 1;
    t = m;
    for (int i = 1; i <= m; ++i) {
        cin >> node[i].x >> node[i].y;
        node[i].id = i;
    }

    sort(node + 1, node + m + 1, cmp_x);
    for (int i = 1; i < m; ++i) {
        if (node[i].x == node[i + 1].x) {
            add(node[i].id, node[i + 1].id, (node[i + 1].y - node[i].y) << 1);
        }
    }
    sort(node + 1, node + m + 1, cmp_y);
    for (int i = 1; i < m; ++i) {
        if (node[i].y == node[i + 1].y) {
            add(node[i].id + m, node[i + 1].id + m, (node[i + 1].x - node[i].x) << 1);
        }
    }
    for (int i = 1; i <= m - 2; i++) {
        add(i, i + m, 1);
    }
    add(s, s + m, 0);
    add(t, t + m, 0);

    dijkstra();
    cout << ((dis[t]==INF)?-1:dis[t]) << endl;
    return 0;
}