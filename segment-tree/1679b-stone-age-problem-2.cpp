#include<iostream>
#include<algorithm>
using namespace std;
typedef long long ll;
struct name {
    int val;
    int ts;
};
name a[200005], all;
int n, q;

int main() {
    cin >> n >> q;
    ll sum = 0;
    for (int i = 1; i <= n; i++) {
        int x;
        cin >> x;
        a[i].val = x;
        a[i].ts = 0;
        sum += 1ll * a[i].val;
    }
    all.ts = 0;

    for (int ts = 1; ts <= q; ts++) {
        int t, i, x;
        cin >> t;
        if (t == 1) {
            cin >> i >> x;
            if (a[i].ts >= all.ts) {
                sum += x - a[i].val;
            } else {
                sum += x - all.val;
            }
            a[i].ts = ts;
            a[i].val = x;
            printf("%lld\n", sum);
        } else {
            cin >> x;
            all.ts = ts;
            all.val = x;
            sum = 1ll * all.val * n;
            printf("%lld\n", sum);
        }
    }
    return 0;
}