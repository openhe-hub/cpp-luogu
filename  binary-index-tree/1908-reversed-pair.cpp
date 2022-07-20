#include <bits/stdc++.h>

#define N 500005
#define LOWBIT(x) x&(~x+1)
typedef long long ll;
using namespace std;

int tree[N], n;
ll res = 0;

struct Num {
    int i;
    int num;
} data[N];

bool cmp(Num num1, Num num2) {
    return num1.num < num2.num;
}

void update(int i) {
    while (i <= n) {
        tree[i]++;
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
    cin >> n;
    for (int i = 1; i <= n; ++i) {
        cin >> data[i].num;
        data[i].i = i;
    }
    stable_sort(data + 1, data + 1 + n, cmp);
    for (int i = 1; i <= n; ++i) {
        update(data[i].i);
        res += query(n) - query(data[i].i);
    }
    cout << res << endl;
    return 0;
}