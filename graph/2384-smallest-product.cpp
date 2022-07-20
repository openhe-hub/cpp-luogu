#include <bits/stdc++.h>

#define N 1005
#define M 1000005
#define MOD 9987
#define INF 0x7fffffff
using namespace std;

struct Edge {
    int from, to;
    double weight;
};

bool operator<(Edge edge1, Edge edge2) {
    return edge1.weight >= edge2.weight;
}

int m, n, s = 1, vis[N], pre[N], weight[N][N], ans = 1;
double dis[N];
vector<Edge> graph[N];
priority_queue<Edge> pq;

void dijkstra() {
    pq.push({s, s, 0});
    while (!pq.empty()) {
        Edge e = pq.top();
        pq.pop();
        int from = e.to;
        if (!vis[from]) {
            vis[from] = 1;
            for (int i = 0; i < graph[from].size(); i++) {
                int to = graph[from][i].to;
                double w = graph[from][i].weight;
                if (dis[to] > dis[from] + log(w)) {
                    dis[to] = dis[from] + log(w);
                    pq.push({from, to, w});
                    pre[to] = from;
                }
            }
        }
    }
}


int main() {
    cin >> n >> m;
    for (int i = 1; i <= n; ++i) {
        dis[i] = i == s ? 0 : INF;
        vis[i] = 0;
    }
    for (int i = 1; i <= m; ++i) {
        int u, v;
        double w;
        cin >> u >> v >> w;
        weight[u][v] = weight[v][u] = w;
        graph[u].push_back({u, v, w});
    }
    dijkstra();

    int pos = n;
    while (pos != s) {
        int next = pre[pos];
        ans = (ans * weight[next][pos]) % MOD;
        pos = next;
    }
    cout << ans << endl;
    return 0;
}