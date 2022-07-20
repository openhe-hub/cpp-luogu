#include <bits/stdc++.h>

#define N 100005
#define LOWBIT(x) x&(~x+1)
using namespace std;

int tree[N], n, m;

void update(int i, int num) {
    while (i <= n) {
        tree[i] += num;
        i += LOWBIT(i);
    }
}

int query(int i) {
    int ans = 0;
    while (i >= 1) {
        ans += tree[i];
        i -= LOWBIT(i);
    }
    return ans;
}


int main() {
    cin >> n >> m;
    memset(tree, 0, n + 1);
    for (int i = 1; i <= m; ++i) {
        int t;
        cin >> t;
        if (t == 1) {
            int l, r;
            cin >> l >> r;
            if (query(l) == 1) {
                update(l, -1);
                update(r + 1, 1);
            } else {
                update(l, 1);
                update(r + 1, -1);
            }
        } else if (t == 2) {
            int j;
            cin >> j;
            cout << abs(query(j))%2 << endl;
        }
    }
    return 0;
}