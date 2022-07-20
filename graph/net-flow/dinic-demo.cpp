#include <bits/stdc++.h>
//luogu P3376
#define N 10010
#define E 200010
#define INF 1<<29
using namespace std;
typedef long long ll;

struct Edge {
    int to, nxt;
    ll val;
} e[E];

int n, m, s, t, dep[N], head[N], tot = 1;
ll maxflow = 0;

inline void add(int u, int v, ll w) {
    e[++tot] = {v, head[u], w};
    head[u] = tot;
}


bool bfs() {
    memset(dep, 0, (n + 1) * sizeof(int));
    queue<int> q;
    q.push(s);
    dep[s] = 1;
    while (!q.empty()) {
        int u = q.front();
        q.pop();
        for (int i = head[u]; i; i = e[i].nxt) {
            int v = e[i].to;
            ll val = e[i].val;
            if (val && !dep[v]) {
                dep[v] = dep[u] + 1;
                q.push(v);
            }
        }
    }
    return dep[t];//dep[t] != 0，就是搜到了汇点
}

ll dfs(int u, ll sum) {
    if (u == t)
        return sum;//到达汇点是第一个有效return
    for (int i = head[u]; i && sum; i = e[i].nxt) {
        int v = e[i].to;
        ll val = e[i].val;
        if (val && dep[v] == dep[u] + 1) {//仅允许流向下一层
            ll rlow = dfs(v, min(val, sum));
            if (rlow) {
                e[i].val -= rlow;
                e[i ^ 1].val += rlow;
                return rlow;
            }
        }
    }
    return 0;
}

int main() {
    scanf("%d %d %d %d", &n, &m, &s, &t);
    for (int i = 1; i <= m; ++i) {
        int u, v;
        ll w;
        scanf("%d %d %lld", &u, &v, &w);
        add(u, v, w);
        add(v, u, 0);
    }
    while (bfs()) maxflow += dfs(s, INF);
    printf("%lld\n", maxflow);
    return 0;
}