#include <iostream>
#include <vector>

#define N 100005
#define ll long long
using namespace std;

long long weight[N], tree[N * 4], addtag[N * 4];
ll n, m;
vector<ll> _max;

void refresh(ll node) {
    tree[node] = tree[node * 2] + tree[node * 2 + 1];
}

void push_down(ll l, ll r, ll mid, ll node) {
    long long last = addtag[node];
    addtag[node] = 0;
    tree[node * 2] += (mid - l + 1) * last;
    tree[node * 2 + 1] += (r - (mid + 1) + 1) * last;
    addtag[node * 2] += last;
    addtag[node * 2 + 1] += last;
}

void build(ll l, ll r, ll node) {
    addtag[node] = 0;
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
        tree[node] += (r - l + 1) * num;
        addtag[node] += num;
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

long long query(ll L, ll R, ll node, ll l, ll r) {
    if (l >= L && r <= R) {
        return tree[node];
    }
    ll mid = (l + r) / 2;
    if (l != r && addtag[node] != 0) {
        push_down(l, r, mid, node);
    }
    long long res = 0;
    if (L <= mid) res += query(L, R, node * 2, l, mid);
    if (R > mid) res += query(L, R, node * 2 + 1, mid + 1, r);
    return res;
}

int main() {
    cin >> n >> m;
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
            cin >> a >> b;
            _max.push_back(query(a, b, 1, 1, n));
        }
    }
    for (int i = 0; i < _max.size(); ++i) {
        cout << _max[i] << endl;
    }
    return 0;
}