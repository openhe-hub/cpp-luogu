#include <bits/stdc++.h>
//luogu P3374
#define N 500005
#define LOWBIT(x) x&(-x)
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

int querySegment(int i, int j) {
    return query(j) - query(i);
}

int main() {
    cin >> n >> m;
    for (int i = 1; i <= n; ++i) {
        cin >> weight[i];
        update(i, weight[i]);
    }
    for (int i = 1; i <= m; ++i) {
        int a, b, c;
        cin >> a >> b >> c;
        if (a == 1) update(b, c);
        else if (a == 2) {
            int ans = querySegment(b - 1, c);
            cout << ans << endl;
        }
    }
    return 0;
}