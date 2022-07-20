#include<bits/stdc++.h>

#define N 200005
#define mid ((l+r)>>1)
#define lson i<<1,l,mid
#define rson i<<1|1,mid+1,r
#define len (r-l+1)
#define ls(i) i<<1
#define rs(i) i<<1|1
using namespace std;

struct Edge {
    int to, next;
} edge[N];

int n, m, r, p;
//见题意
int tot = 0, head[N], a[N], wt[N];
//链式前向星数组，a[]、wt[]初始点权数组
int seg[N << 2], laz[N << 2];
//线段树数组、lazy操作
int son[N], id[N], fa[N], idx = 0, dep[N], siz[N], top[N];
//son[]重儿子编号,id[]新编号,fa[]父亲节点,idx dfs_clock/dfs序,dep[]深度,siz[]子树大小,top[]当前链顶端节点
int res = 0;
//查询答案

inline void add(int u, int v) {//链式前向星加边
    edge[++tot].to = v;
    edge[tot].next = head[u];
    head[u] = tot;
}

//-------------------------------------- 以下为线段树
inline void push_up(int i) {
    seg[i] = (seg[ls(i)] + seg[rs(i)]) % p;
}

inline void push_down(int i, int lenn) {
    laz[ls(i)] += laz[i];
    laz[rs(i)] += laz[i];
    seg[ls(i)] = (seg[ls(i)] + laz[i] * (lenn - (lenn >> 1))) % p;
    seg[rs(i)] = (seg[rs(i)] + laz[i] * (lenn >> 1)) % p;
    laz[i] = 0;
}

inline void build(int i, int l, int r) {
    if (l == r) {
        seg[i] = wt[l] % p;
        return;
    }
    build(lson);
    build(rson);
    push_up(i);
}

inline void query(int i, int l, int r, int L, int R) {
    if (L <= l && r <= R) {
        res = (res + seg[i]) % p;
        return;
    } else {
        if (laz[i])push_down(i, len);
        if (L <= mid)query(lson, L, R);
        if (R > mid)query(rson, L, R);
    }
}

inline void update(int i, int l, int r, int L, int R, int k) {
    if (L <= l && r <= R) {
        laz[i] += k;
        seg[i] += k * len;
    } else {
        if (laz[i])push_down(i, len);
        if (L <= mid)update(lson, L, R, k);
        if (R > mid)update(rson, L, R, k);
        push_up(i);
    }
}

//---------------------------------以上为线段树
inline int qRange(int x, int y) {
    int ans = 0;
    while (top[x] != top[y]) {//当两个点不在同一条链上
        if (dep[top[x]] < dep[top[y]])swap(x, y);//把x点改为所在链顶端的深度更深的那个点
        res = 0;
        query(1, 1, n, id[top[x]], id[x]);//ans加上x点到x所在链顶端 这一段区间的点权和
        ans = (ans + res) % p;
        x = fa[top[x]];//把x跳到x所在链顶端的那个点的上面一个点
    }
    //直到两个点处于一条链上
    if (dep[x] > dep[y])swap(x, y);//把x点深度更深的那个点
    res = 0;
    query(1, 1, n, id[x], id[y]);//这时再加上此时两个点的区间和即可
    ans = (ans + res) % p;
    return ans;
}

inline void updRange(int x, int y, int k) {//同上
    k %= p;
    while (top[x] != top[y]) {
        if (dep[top[x]] < dep[top[y]])swap(x, y);
        update(1, 1, n, id[top[x]], id[x], k);
        x = fa[top[x]];
    }
    if (dep[x] > dep[y])swap(x, y);
    update(1, 1, n, id[x], id[y], k);
}

inline int qSon(int x) {
    res = 0;
    query(1, 1, n, id[x], id[x] + siz[x] - 1);//子树区间右端点为id[x]+siz[x]-1
    return res;
}

inline void updSon(int x, int k) {//同上
    update(1, 1, n, id[x], id[x] + siz[x] - 1, k);
}

inline void dfs1(int x, int f, int depth) {//x当前节点，f父亲，deep深度
    dep[x] = depth;//标记每个点的深度
    fa[x] = f;//标记每个点的父亲
    siz[x] = 1;//标记每个非叶子节点的子树大小
    int maxson = -1;//记录重儿子的儿子数
    for (int i = head[x]; i; i = edge[i].next) {
        int v = edge[i].to;
        if (v == f)continue;//若为父亲则continue
        dfs1(v, x, depth + 1);//dfs其儿子
        siz[x] += siz[v];//把它的儿子数加到它身上
        if (siz[v] > maxson) {
            son[x] = v;
            maxson = siz[v];//标记每个非叶子节点的重儿子编号
        }
    }
}

inline void dfs2(int x, int tp) {//x当前节点，tp当前链的最顶端的节点
    id[x] = ++idx;//标记每个点的新编号
    wt[idx] = a[x];//把每个点的初始值赋到新编号上来
    top[x] = tp;//这个点所在链的顶端
    if (!son[x])return;//如果没有儿子则返回
    dfs2(son[x], tp);//按先处理重儿子，再处理轻儿子的顺序递归处理
    for (int i = head[x]; i; i = edge[i].next) {
        int v = edge[i].to;
        if (v == fa[x] || v == son[x])continue;
        dfs2(v, v);//对于每一个轻儿子都有一条从它自己开始的链
    }
}

int main() {
    cin >> n >> m >> r >> p;
    for (int i = 1; i <= n; i++) cin >> a[i];
    for (int i = 1; i < n; i++) {
        int a, b;
        cin >> a >> b;
        add(a, b);
        add(b, a);
    }
    dfs1(r, 0, 1);
    dfs2(r, r);
    build(1, 1, n);
    for (int i = 1; i <= m; ++i) {
        int op, x, y, z;
        cin >> op;
        if (op == 1) {
            cin >> x >> y >> z;
            updRange(x, y, z);
        } else if (op == 2) {
            cin >> x >> y;
            cout << qRange(x, y) << endl;
        } else if (op == 3) {
            cin >> x >> z;
            updSon(x, z);
        } else if (op == 4) {
            cin >> x;
            cout << qSon(x) << endl;
        }
    }
}