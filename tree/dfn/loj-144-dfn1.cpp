#include<bits/stdc++.h>

#define N 1000005
#define lowbit(x) x&(~x+1)
using namespace std;
typedef long long ll;

int n, m, root, a[N];

struct Edge {
    int to, next;
} edge[N << 1];

int head[N], tot;

void addEdge(int u, int v) {
    edge[++tot].to = v;
    edge[tot].next = head[u];
    head[u] = tot;
}

ll tree[N];

void add(int i, int v) {
    while (i <= n) {
        tree[i] += v;
        i += lowbit(i);
    }
}

ll sum(int i) {
    ll res = 0;
    while (i > 0) {
        res += tree[i];
        i -= lowbit(i);
    }
    return res;
}

int idx=0, l[N], r[N];

//l[curr]和r[curr]分别是以u为根节点的子树对应的区间左右端点
void dfs(int curr, int pre) {
    l[curr] = ++idx;
    add(idx, a[curr]);
    for (int i = head[curr]; i; i = edge[i].next) {
        int to = edge[i].to;
        if (to == pre) continue;
        dfs(to, curr);
    }
    r[curr] = idx;
}

int main() {
    int u, v, op, pos, val;
    cin >> n >> m >> root;
    for (int i = 1; i <= n; i++)
        cin >> a[i];
    for (int i = 1; i < n; i++) {
        cin >> u >> v;
        addEdge(u, v);
        addEdge(v, u);
    }
    dfs(root, 0);
    for (int i = 1; i <= n; ++i) {
        cout << l[i] << "," << r[i] << endl;
    }

    for (int i = 1; i <= m; i++) {
        cin >> op;
        if (op == 1) {
            cin >> pos >> val;
            add(l[pos], val);
        } else {
            cin >> pos;
            cout<<sum(r[pos]) - sum(l[pos] - 1)<<endl;
        }
    }
    return 0;
}