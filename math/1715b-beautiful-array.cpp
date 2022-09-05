#include <bits/stdc++.h>

using namespace std;
typedef long long ll;

int main() {
    ll t, n, k, b, s;
    cin >> t;
    for (int i = 0; i < t; ++i) {
        cin >> n >> k >> b >> s;
        ll remain = s - k * b;
        if (remain < 0) {
            cout << -1 << endl;
            continue;
        }
        ll *res = new ll[n];

        //base
        for (int j = 0; j < n; ++j) {
            res[j] = (j != (n - 1)) ? 0 * k : b * k;
        }

        //remainder
        int pt = 0;
        while (remain > 0 && pt <= n - 1) {
            ll tmp = min(k - 1, remain);
            res[pt++] += tmp;
            remain -= tmp;
        }
        if (remain > 0 && pt == n) cout << -1;
        else {
            for (int j = 0; j < n; ++j) {
                cout << res[j] << " ";
            }
        }
        cout << endl;
    }
    return 0;
}