#include <bits/stdc++.h>

#define N 10000005
#define ls(x) x<<1
#define rs(x) x<<1|1
#define Mid(l, r) (l+r)>>1
using namespace std;

int a[N], tree[N << 2 + 2], n, num[N];

struct Qes {
    int opt, x;
} qes[N];

void push_up(int i) {
    tree[i] = tree[rs(i)] + tree[ls(i)];
}

void add(int i, int l, int r, int pos, int v) {
    if (l == r) tree[i] += v;
    else {
        int mid = Mid(l, r);
        if (pos <= mid) add(ls(i), l, mid, pos, v);
        else add(rs(i), mid + 1, r, pos, v);
        push_up(i);
    }
}

int kth(int i, int l, int r, int rk) {
    if (l == r) return l;
    else {
        int mid = Mid(l, r);
        if (tree[ls(i)] >= rk) {
            return kth(ls(i), l, mid, rk);
        } else {
            return kth(rs(i), mid + 1, r, rk - tree[ls(i)]);
        }
    }
}

int _kth(int x) {
    return kth(1, 1, N, x);
}

//res=[1,x-1]+1,curr:[s,t],tar:[l,r]
int rank(int i, int l, int r, int s, int t) {
    if (s >= l && t <= r) return tree[i];
    else {
        int mid = Mid(s, t);
        int ans = 0;
        if (l <= mid) ans += ::rank(ls(i), l, r, s, mid);
        if (r > mid) ans += ::rank(rs(i), l, r, mid + 1, t);
        return ans;
    }
}

int _rank(int x) {
    return ::rank(1, 1, x - 1, 1, N) + 1;
}

//pre(x)=kth(rank(x)-1)
int pre(int x) {
    return _kth(_rank(x) - 1);
}

//next(x)=kth(rank(x+1))
int next(int x) {
    return _kth(_rank(x + 1));
}

int main() {
    cin >> n;
    int k=0,m=0;
    for (int i = 1; i <= n; ++i) {
        cin >> qes[i].opt >> qes[i].x;
        if (qes[i].opt != 4) num[k++] = qes[i].x;
    }
    sort(num , num + k);
    m = unique(num , num  + k) - num ;

    for (int i = 1; i <= n; i++) {
        int opt = qes[i].opt;
        int x = lower_bound(num, num + m, qes[i].x) - num+1;
        switch (opt) {
            case 1: { //add x
                add(1, 1, N, x, 1);
                break;
            }
            case 2: { //remove x
                add(1, 1, N, x, -1);
                break;
            }
            case 3: { //query rank of x
                if (x == 1) cout << 1 << endl;
                else cout << _rank(x) << endl;
                break;
            }
            case 4: { //query kth-num
                cout << num[_kth(x)] << endl;
                break;
            }
            case 5: { //pre
                cout << num[pre(x)] << endl;
                break;
            }
            case 6: { //next
                cout << num[next(x)] << endl;
                break;
            }
        }
    }
    return 0;
}