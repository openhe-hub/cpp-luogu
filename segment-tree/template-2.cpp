#include <iostream>
#include <vector>

#define N 100005
#define ll long long
using namespace std;

long long weight[N], tree[N * 4], addtag[N * 4], multag[N * 4];
ll n, m, v;
vector<ll> _max;

void refresh(ll node) {
    tree[node] = (tree[node * 2] + tree[node * 2 + 1]) % v;
}

void push_down(ll l, ll r, ll mid, ll node) {
    tree[node * 2] = (tree[node * 2] * multag[node] + (mid - l + 1) * addtag[node]) % v;
    tree[node * 2 + 1] = (tree[node * 2 + 1] * multag[node] + (r - mid) * addtag[node]) % v;
    addtag[node * 2] = (addtag[node * 2] * multag[node] + addtag[node]) % v;
    addtag[node * 2 + 1] = (addtag[node * 2 + 1] * multag[node] + addtag[node]) % v;
    multag[node * 2] = (multag[node * 2] * multag[node]) % v;
    multag[node * 2 + 1] = (multag[node * 2 + 1] * multag[node]) % v;
    addtag[node] = 0;
    multag[node] = 1;
}

void build(ll l, ll r, ll node) {
    addtag[node] = 0;
    multag[node] = 1;
    if (l == r) {
        tree[node] = weight[l];
        return;
    }
    ll mid = (l + r) / 2;
    build(l, mid, node * 2);
    build(mid + 1, r, node * 2 + 1);
    refresh(node);
}

void add(ll L, ll R, ll l, ll r, ll node, long long num) {
    if (l >= L && r <= R) {
        tree[node] = (tree[node] + (r - l + 1) * num) % v;
        addtag[node] = (addtag[node] + num) % v;
        return;
    }
    ll mid = (l + r) / 2;
    if (l != r && addtag[node] != 0) {
        push_down(l, r, mid, node);
    }
    if (L <= mid) add(L, R, l, mid, node * 2, num);
    if (R > mid) add(L, R, mid + 1, r, node * 2 + 1, num);
    refresh(node);
}

void mul(ll L, ll R, ll l, ll r, ll node, long long num) {
    if (l >= L && r <= R) {
        tree[node] = (tree[node] * num) % v;
        multag[node] = (multag[node] * num) % v;
        addtag[node] = (addtag[node] * num) % v;
        return;
    }
    ll mid = (l + r) / 2;
    if (l != r && multag[node] != 1) {
        push_down(l, r, mid, node);
    }
    if (L <= mid) add(L, R, l, mid, node * 2, num);
    if (R > mid) add(L, R, mid + 1, r, node * 2 + 1, num);
    refresh(node);
}

long long query(ll L, ll R, ll node, ll l, ll r) {
    if (l >= L && r <= R) {
        return tree[node];
    }
    ll mid = (l + r) / 2;
    if (l != r && addtag[node] != 0) {
        push_down(l, r, mid, node);
    }
    long long res = 0;
    if (L <= mid) res = (query(L, R, node * 2, l, mid) + res) % v;
    if (R > mid) res = (query(L, R, node * 2 + 1, mid + 1, r) + res) % v;
    return res;
}

int main() {
    cin >> n >> m >> v;
    for (int i = 1; i <= n; ++i) {
        cin >> weight[i];
    }
    build(1, n, 1);
    for (int i = 1; i <= m; ++i) {
        ll type, a, b, c;
        cin >> type;
        if (type == 1) {
            cin >> a >> b >> c;
            add(a, b, 1, n, 1, c);
        } else if (type == 2) {
            cin >> a >> b >> c;
            mul(a, b, 1, n, 1, c);
        } else if (type == 3) {
            cin >> a >> b;
            _max.push_back(query(a, b, 1, 1, n) % v);
        }
    }
    for (int i = 0; i < _max.size(); ++i) {
        cout << _max[i] << endl;
    }
    return 0;
}