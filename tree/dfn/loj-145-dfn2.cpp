#include<bits/stdc++.h>

#define N 1000005
#define ls(x) x<<1
#define rs(x) x<<1|1
#define Mid(l, r) (l+r)>>1
using namespace std;
typedef long long ll;

ll n, m, root, data[N], head[N], tot = 0, idx = 0, lc[N], rc[N],dfn[N];
ll seg[N << 2 + 2], tag[N << 2 + 2];

struct Edge {
    int to, next;
} edge[N << 1];

void addEdge(int u, int v) {
    edge[++tot].to = v;
    edge[tot].next = head[u];
    head[u] = tot;
}

void dfs(int curr, int pre) {
    lc[curr] = ++idx;
    dfn[idx]= data[curr];
    for (int i = head[curr]; i; i = edge[i].next) {
        int to = edge[i].to;
        if (to == pre) continue;
        dfs(to, curr);
    }
    rc[curr] = idx;
}

void push_up(int i) {
    seg[i] = seg[ls(i)] + seg[rs(i)];
}

void build(int l, int r, int i) {
    tag[i] = 0;
    if (l == r) seg[i] = dfn[l];
    else {
        int mid = Mid(l, r);
        build(l, mid, ls(i));
        build(mid + 1, r, rs(i));
        push_up(i);
    }
}

void f(int l, int r, int i, ll k) {
    tag[i] += k;
    seg[i] += k * (r - l + 1);
}

void push_down(int l, int r, int i) {
    int mid = Mid(l, r);
    f(l, mid, ls(i), tag[i]);
    f(mid + 1, r, rs(i), tag[i]);
    tag[i] = 0;
}

void add(int l, int r, int s, int t, int i, ll k) {
    if (l <= s && t <= r) f(s, t, i, k);
    else {
        int mid = Mid(s, t);
        push_down(s, t, i);
        if (l <= mid) add(l, r, s, mid, ls(i), k);
        if (r > mid) add(l, r, mid + 1, t, rs(i), k);
        push_up(i);
    }
}

ll sum(int l, int r, int s, int t, int i) {
    if (l <= s && t <= r) return seg[i];
    else {
        int mid = Mid(s, t);
        ll res = 0;
        push_down(s, t, i);
        if (l <= mid) res += sum(l, r, s, mid, ls(i));
        if (r > mid) res += sum(l, r, mid + 1, t, rs(i));
        return res;
    }
}

int main() {
    ll u, v, op, pos, val;
    scanf("%lld %lld %lld",&n,&m,&root);
    for (int i = 1; i <= n; i++)
        scanf("%lld",&data[i]);
    for (int i = 1; i < n; i++) {
        scanf("%lld %lld",&u,&v);
        addEdge(u, v);
        addEdge(v, u);
    }
    dfs(root, 0);
    build(1, n, 1);

    for (int i = 1; i <= m; i++) {
        scanf("%lld",&op);
        if (op == 1) {
            scanf("%lld %lld",&pos,&val);
            add(lc[pos], rc[pos], 1, n, 1, val);
        } else {
            scanf("%lld",&pos);
            printf("%lld\n",sum(lc[pos], rc[pos], 1, n, 1));
        }
    }
    return 0;
}