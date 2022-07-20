#include <bits/stdc++.h>

#define N 100005
#define ls(x) x << 1
#define rs(x) x << 1 | 1
typedef long long ll;
// luogu P3372
using namespace std;

ll n, m, data[N], tree[N << 2 + 2], tag[N << 2 + 2];

/**
 *@description:from down to top update tree value
 *
 */
void push_up(int i) { tree[i] = tree[ls(i)] + tree[rs(i)]; }

/**
 *@description:manipulation,here is add
 *
 */
void f(int l, int r, int i, int k) {
    tag[i] += k;
    tree[i] += k * (r - l + 1);
}

/**
 *@description:push down lazy tag
 *
 */
void push_down(int l, int r, int i) {
    int mid = (l + r) >> 1;
    f(l, mid, ls(i), tag[i]);
    f(mid + 1, r, rs(i), tag[i]);
    tag[i] = 0;
}

void build(int l, int r, int i) {
    tag[i] = 0;
    if (l == r) {
        tree[i] = data[l];
    } else {
        int mid = (l + r) >> 1;
        build(l, mid, ls(i));
        build(mid + 1, r, rs(i));
        push_up(i);
    }
}

/**
 *@description:query[l,r],current:[s,t]
 *
 */
ll getSum(int l, int r, int s, int t, int i) {
    if (s >= l && t <= r) {
        return tree[i];
    } else {
        int mid = (s + t) >> 1;
        ll sum = 0;
        push_down(s, t, i);
        if (l <= mid) sum += getSum(l, r, s, mid, ls(i));
        if (r > mid) sum += getSum(l, r, mid + 1, t, rs(i));
        return sum;
    }
}

/**
 *@description:update:[l,r],current:[s,t]
 *
 */
void update(int l, int r, int s, int t, int i, int k) {
    if (l <= s && t <= r) {
        f(s, t, i, k);
    } else {
        int mid = (s + t) >> 1;
        push_down(s, t, i);
        if (l <= mid) update(l, r, s, mid, ls(i), k);
        if (r > mid) update(l, r, mid + 1, t, rs(i), k);
        push_up(i);
    }
}

int main() {
    cin >> n >> m;
    for (int i = 1; i <= n; i++) {
        cin >> data[i];
    }
    build(1, n, 1);

    for (int i = 1; i <= m; i++) {
        int tmp;
        cin >> tmp;
        if (tmp == 1) {
            int l, r, k;
            cin >> l >> r >> k;
            update(l, r, 1, n, 1, k);
        } else if (tmp == 2) {
            int l, r;
            cin >> l >> r;
            cout << getSum(l, r, 1, n, 1) << endl;
        }
    }
    return 0;
}