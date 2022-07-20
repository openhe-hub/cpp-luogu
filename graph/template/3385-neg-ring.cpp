#include <bits/stdc++.h>

#define N 2005
#define M 3005
#define INF 0x7fffffff
using namespace std;

struct Edge {
    int from, to, weight;
};

int t, n, m, s = 1, dis[N], idx[N], vis[N];
vector<Edge> graph[N];
queue<int> q;

void init() {
    while (!q.empty()) q.pop();
    for (int i = 1; i <= n; ++i) {
        graph[i].clear();
        dis[i] = i == s ? 0 : INF;
        vis[i] = i == s ? 1 : 0;
        idx[i] = 0;
    }
}

void add(int u, int v, int w) {
    graph[u].push_back({u, v, w});
}

void spfa() {
    q.push(s);
    while (!q.empty()) {
        int u = q.front();
        q.pop();
        vis[u] = 0;
        for (int i = 0; i < graph[u].size(); i++) {
            int v = graph[u][i].to;
            int w = graph[u][i].weight;
            if (dis[v] > dis[u] + w) {
                dis[v] = dis[u] + w;
                if (!vis[v]) {
                    if (++idx[v] >= n) {
                        cout << "YES" << endl;
                        return;
                    }
                    vis[v] = 1;
                    q.push(v);
                }
            }
        }
    }
    cout << "NO" << endl;
}

void test() {
    cin >> n >> m;
    init();
    for (int i = 1; i <= m; ++i) {
        int u, v, w;
        cin >> u >> v >> w;
        add(u, v, w);
        if (w >= 0) add(v, u, w);
    }
    spfa();
}

int main() {
    cin >> t;
    for (int i = 1; i <= t; ++i) {
        test();
    }
    return 0;
}