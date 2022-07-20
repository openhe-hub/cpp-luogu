#include <bits/stdc++.h>

//luogu P1226
typedef long long ll;
using namespace std;

ll maxflow, b, v, k;

ll fastPower(ll base, ll power) {
    if (power == 1) return base;
    else if (power == 0) return 1;
    else {
        ll res = fastPower(base, power / 2) % k;
        if (power % 2 == 0) return res * res;
        else return res * res * (base % k);
    }
}

ll fastPower2(ll base, ll power) {
    if (power == 1) return base;
    else if (power == 0) return 1;
    else {
        ll res = 1;
        while (power > 0) {
            if (power & 1) res = (res * base) % k;
            base = (base * base) % k;
            power >>= 1;
        }
        return res;
    }
}

int main() {
    cin >> b >> v >> k;
    maxflow = fastPower2(b, v) % k;
    printf("%lld^%lld p %lld=%lld", b, v, k, maxflow);
    return 0;
}