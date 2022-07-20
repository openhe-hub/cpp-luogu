#include <bits/stdc++.h>
#define N 100005
#define ls(x) x << 1
#define rs(x) x << 1 | 1
#define Mid(l, r) (l + r) >> 1
typedef long long ll;
using namespace std;

int n, m, p;
ll data[N], tree[N << 2 + 2], add_tag[N << 2 + 2], mul_tag[N << 2 + 2];

void push_up(int i) { tree[i] = (tree[ls(i)] + tree[rs(i)]) % p; }

void add(int l, int r, int i, int k) {
  add_tag[i] = (add_tag[i] + k) % p;
  tree[i] = (tree[i] + (r - l + 1) * k) % p;
}

void mul(int l, int r, int i, int k) {
  add_tag[i] = (add_tag[i] * k) % p;
  mul_tag[i] = (mul_tag[i] * k) % p;
  tree[i] = (tree[i] * k) % p;
}

void push_down(int l, int r, int i) {
  int mid = Mid(l, r);

  tree[ls(i)] = (tree[ls(i)] * mul_tag[i] + (mid - l + 1) * add_tag[i]) % p;
  tree[rs(i)] =
      (tree[rs(i)] * mul_tag[i] + (r - (mid + 1) + 1) * add_tag[i]) % p;

  mul_tag[ls(i)] = (mul_tag[ls(i)] * mul_tag[i]) % p;
  mul_tag[rs(i)] = (mul_tag[rs(i)] * mul_tag[i]) % p;

  add_tag[ls(i)] = (add_tag[ls(i)] * mul_tag[i] + add_tag[i]) % p;
  add_tag[rs(i)] = (add_tag[rs(i)] * mul_tag[i] + add_tag[i]) % p;

  add_tag[i] = 0;
  mul_tag[i] = 1;
}

void build(int l, int r, int i) {
  add_tag[i] = 0;
  mul_tag[i] = 1;
  if (l == r)
    tree[i] = data[l];
  else {
    int mid = Mid(l, r);
    build(l, mid, ls(i));
    build(mid + 1, r, rs(i));
    push_up(i);
  }
}

void update_add(int l, int r, int s, int t, int i, int k) {
  if (s >= l && t <= r) {
    add(s, t, i, k);
  } else {
    int mid = Mid(s, t);
    push_down(s, t, i);
    if (l <= mid) update_add(l, r, s, mid, ls(i), k);
    if (r > mid) update_add(l, r, mid + 1, t, rs(i), k);
    push_up(i);
  }
}

void update_mul(int l, int r, int s, int t, int i, int k) {
  if (s >= l && t <= r) {
    mul(s, t, i, k);
  } else {
    int mid = Mid(s, t);
    push_down(s, t, i);
    if (l <= mid) update_mul(l, r, s, mid, ls(i), k);
    if (r > mid) update_mul(l, r, mid + 1, t, rs(i), k);
    push_up(i);
  }
}

ll query(int l, int r, int s, int t, int i) {
  if (s >= l && t <= r)
    return tree[i] % p;
  else {
    int mid = Mid(s, t);
    ll sum = 0;
    push_down(s, t, i);
    if (l <= mid) sum = (sum + query(l, r, s, mid, ls(i))) % p;
    if (r > mid) sum = (sum + query(l, r, mid + 1, t, rs(i))) % p;
    return sum;
  }
}

int main(int argc, char const *argv[]) {
  cin >> n >> p;
  for (int i = 1; i <= n; i++) {
    cin >> data[i];
  }
  build(1, n, 1);
  cin >> m;
  for (int i = 1; i <= m; i++) {
    int tmp;
    cin >> tmp;
    switch (tmp) {
      case 1: {
        int l, r, k;
        cin >> l >> r >> k;
        update_mul(l, r, 1, n, 1, k);
      } break;
      case 2: {
        int l, r, k;
        cin >> l >> r >> k;
        update_add(l, r, 1, n, 1, k);
      } break;
      case 3: {
        int l, r;
        cin >> l >> r;
        cout << query(l, r, 1, n, 1) << endl;
      } break;
    }
  }
  return 0;
}