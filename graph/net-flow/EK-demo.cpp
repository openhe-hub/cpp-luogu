#include <bits/stdc++.h>

#define N 205
#define M 10005
#define INF 1<<29 //infinite
typedef long long ll;
using namespace std;

struct Edge {
    int to, nxt;
    ll val;
} e[M];

int n, m, s, t, tot = 1, head[N], pre[N];//traceback
ll maxflow, inc[N];
bool vis[N];

void add(int u, int v, int w) {
    e[++tot] = {v, head[u], w};
    head[u] = tot;
}

bool bfs() {
    memset(vis, false, sizeof(vis));
    queue<int> q;
    q.push(s);
    vis[s] = true;
    inc[s] = INF;
    while (!q.empty()) {
        int u = q.front();
        q.pop();
        for (int i = head[u]; i; i = e[i].nxt) {
            int v = e[i].to;
            ll w = e[i].val;
            if (w == 0 || vis[v]) continue;//if limit=0 or has visited

            vis[v] = true;
            inc[v] = min(inc[u], w);//get min
            q.push(v);
            pre[v] = i;
            if (v == t) return true;
        }
    }
    return false;
}

void update() {
    int u = t;
    while (u != s) {
        int v = pre[u];
        e[v].val -= inc[t];
        e[v ^ 1].val += inc[t]; //even^1=even+1,odd^1=odd-1
        u = e[v ^ 1].to;
    }
    maxflow += inc[t];
}


int main() {
    cin >> n >> m >> s >> t;
    for (int i = 1; i <= m; ++i) {
        int u, v, w;
        cin >> u >> v >> w;
        add(u, v, w);
        add(v, u, 0);
    }
    while (bfs()) update();
    cout << maxflow << endl;
    return 0;
}