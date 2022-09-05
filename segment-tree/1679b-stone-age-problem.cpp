#include <bits/stdc++.h>

#define N 200005
#define ls(x) x << 1
#define rs(x) x << 1 | 1
#define mid(l, r) ((l+r)>>1)
using namespace std;

int tree[(N << 2) + 2], nums[N];


void build(int l, int r, int i) {
    if (l == r) {
        tree[i] = nums[l];
        return;
    } else {
        build(l, mid(l, r), ls(i));
        build(mid(l, r) + 1, r, rs(i));
        tree[i] = tree[ls(i)] + tree[rs(i)];
    }
}

void update(int l, int r, int idx, int i, int upd) {
    if (l == r) {
        tree[i] = upd;
        return;
    }
    if (idx <= mid(l, r)) update(l, mid(l, r), idx, ls(i), upd);
    else update(mid(l, r) + 1, r, idx, rs(i), upd);
    tree[i] = tree[ls(i)] + tree[rs(i)];
}

void updateRange(int l, int r, int i, int s, int t, int upd) {
    if (l == r) {
        tree[i] = upd;
        return;
    }
    int mid = mid(l, r);
    if (t <= mid) {
        updateRange(l, mid, ls(i), s, t, upd);
    } else if (s >= mid + 1) {
        updateRange(mid + 1, r, rs(i), s, t, upd);
    } else {
        updateRange(l, mid, ls(i), s, mid, upd);
        updateRange(mid + 1, r, rs(i), mid+1, t, upd);
    }
    tree[i] = tree[ls(i)] + tree[rs(i)];
}

int query(int l, int r, int i, int s, int t) {
    if (l == s && r == t) {
        return tree[i];
    }
    int mid = mid(l, r);
    if (t <= mid) {
        return query(l, mid, ls(i), s, t);
    } else if (s >= mid + 1) {
        return query(mid + 1, r, rs(i), s, t);
    } else {
        return query(l, mid, ls(i), s, mid) +
               query(mid + 1, r, rs(i), mid+1, t);
    }
}

int main() {
    int n, q, op, idx, upd;
    cin >> n >> q;
    for (int i = 1; i <= n; ++i) {
        cin >> nums[i];
    }
    build(1, n, 1);
    for (int i = 0; i < q; ++i) {
        cin >> op;
        if (op == 1) {
            cin >> idx >> upd;
            update(1, n, idx, 1, upd);
        } else if (op == 2) {
            cin >> upd;
            updateRange(1,n,1,1,n,upd);
        }
        cout << query(1, n, 1, 1, n) << endl;
    }
    return 0;
}