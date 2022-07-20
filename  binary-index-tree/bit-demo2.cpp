#include <bits/stdc++.h>
//luogu P 3368
#define N 500005
#define LOWBIT(x) x&(~x+1)
using namespace std;

int tree[N], weight[N], n, m;

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
    for (int i = 1; i <= n; ++i) {
        cin >> weight[i];
        update(i, weight[i] - weight[i - 1]);
    }
    for (int i = 1; i <= m; ++i) {
        int flag;
        cin >> flag;
        if (flag == 1) {
            int x, y, k;
            cin >> x >> y >> k;
            update(x, k);
            update(y + 1, -k);
        } else if (flag == 2) {
            int x;
            cin >> x;
            int ans = query(x);
            cout << ans << endl;
        }
    }
    return 0;
}