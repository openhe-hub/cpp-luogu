#include <bits/stdc++.h>
#define N 200005
#define ls(x) x << 1
#define rs(x) x << 1 | 1
typedef long long ll;

using namespace std;

ll n, m, data[N], tree[N << 2 + 2];

void push_up(int i) { tree[i] = max(tree[ls(i)], tree[rs(i)]); }

void build(int l, int r, int i) {
  if (l == r) {
    tree[i] = data[l];
  } else {
    int mid = (l + r) >> 1;
    build(l, mid, ls(i));
    build(mid + 1, r, rs(i));
    push_up(i);
  }
}

ll getMax(int l, int r, int s, int t, int i) {
  if (s >= l && t <= r) {
    return tree[i];
  } else {
    int mid = (s + t) >> 1;
    ll res = -0x3f3f3f3f;
    if (l <= mid) res = max(getMax(l, r, s, mid, ls(i)), res);
    if (r > mid) res = max(getMax(l, r, mid + 1, t, rs(i)), res);
    return res;
  }
}

void update(int pos, int s, int t, int i, ll k) {
  if (s == t) {
    tree[i] = max(k, tree[i]);
  } else {
    int mid = (s + t) >> 1;
    if (pos <= mid) update(pos, s, mid, ls(i), k);
    if (pos > mid) update(pos, mid + 1, t, rs(i), k);
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
    char tmp;
    cin >> tmp;
    if (tmp == 'U') {
      int i;
      ll k;
      cin >> i >> k;
      update(i, 1, n, 1, k);
    } else if (tmp == 'Q') {
      int l, r;
      cin >> l >> r;
      cout << getMax(l, r, 1, n, 1) << endl;
    }
  }
  return 0;
}