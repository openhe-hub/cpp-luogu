#include <iostream>

#define N 10001
using namespace std;

int n;
int weight[N];
int res[N * 4], add[N * 4];

void build(int l, int r, int node);

void update(int index, int l, int r, int node, int num);

void update_segment(int L, int R, int num, int l, int r, int node);

int query(int L, int R, int l, int r, int node);

int query_point(int index, int l, int r, int node);

void push_down(int l, int r, int node, int mid);

void refresh(int node);

int main() {
    cin >> n;
    for (int i = 1; i <= n; ++i) {
        cin >> weight[i];
    }
    build(1, n, 1);
    update(3, 1, n, 1, 4);
    cout << query_point(3, 1, n, 1) << endl;
    cout << query(2, 5, 1, n, 1) << endl;
    update_segment(2, 6, 1, 1, n, 1);
    cout << query(2, 6, 1, n, 1) << endl;
    return 0;
}

void build(int l, int r, int node) {
    if (l == r) {
        res[node] = weight[l];
        return;
    }
    int mid = (l + r) / 2;
    build(l, mid, node * 2);
    build(mid + 1, r, node * 2 + 1);
    refresh(node);
}

/**
 *
 * @param index origin index to alter
 * @param l
 * @param r
 * @param node segment tree Cow index
 * @param num num to add
 */
void update(int index, int l, int r, int node, int num) {
    if (l == r) {
        res[node] += num;
        return;
    }
    int mid = (l + r) / 2;
    if (index <= mid) update(index, l, mid, node * 2, num);
    if (index > mid) update(index, mid + 1, r, node * 2 + 1, num);
    refresh(node);
}

void update_segment(int L, int R, int num, int l, int r, int node) {
    if (l >= L && r <= R) {
        res[node] += (r - l + 1) * num;
        add[node] += num;
        return;
    }
    int mid = (l + r) / 2;
    if (add[node] != 0 && l != r) {//如果标记数组不空，那么更新
        push_down(l, r, node, mid);
    }
    if (L <= mid) update_segment(L, R, num, l, mid, node * 2);
    if (R > mid) update_segment(L, R, num, mid + 1, r, node * 2 + 1);
    refresh(node);
}

int query_point(int index, int l, int r, int node) {
    if (l == r) {
        return res[node];
    }
    int mid = (l + r) / 2;
    if (add[node] != 0) {
        push_down(l, r, node, mid);
    }
    if (index <= mid) return query_point(index, l, mid, node * 2);
    if (index > mid) return query_point(index, mid + 1, r, node * 2 + 1);
}

int query(int L, int R, int l, int r, int node) {
    if (l >= L && r <= R) {//如果真包含，就直接返回
        return res[node];
    }
    int mid = (l + r) / 2;
    if (add[node] != 0) {
        push_down(l, r, node, mid);
    }
    int res = 0;
    if (L <= mid) res += query(L, R, l, mid, node * 2);//如果与右树有交集
    if (R > mid) res += query(L, R, mid + 1, r, node * 2 + 1);//如果与左树有交集
    return res;
}


void refresh(int node) { res[node] = res[node * 2] + res[node * 2 + 1]; }

void push_down(int l, int r, int node, int mid) {
    int last = add[node];
    add[node] = 0;
    res[node * 2] += (mid - l + 1) * last;
    res[node * 2 + 1] += (r - (mid + 1) + 1) * last;
    add[node * 2] += last;
    add[node * 2 + 1] += last;
}
