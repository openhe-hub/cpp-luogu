#include <bits/stdc++.h>

#define WARNING "Crossing the line"
#define N 1000005
#define M 100005
using namespace std;

int n, m, prime[M], isPrime[N], sum[N], num = 0;

void getPrime() {
    for (int i = 0; i < N; i++) {
        isPrime[i] = 1;
    }
    isPrime[0] = 0;
    isPrime[1] = 0;
    for (int i = 2; i < N; i++) {
        if (isPrime[i]) {
            prime[num++] = i;
            for (int j = 2 * i; j < N; j += i) {
                isPrime[j] = 0;
            }
        }
    }
}

void getSum() {
    sum[1] = 0;
    sum[2] = 1;
    for (int i = 3; i < N; i++) sum[i] = isPrime[i] ? sum[i - 1] + 1 : sum[i - 1];
}

int search(int l, int r) {
    return sum[r] - sum[l - 1];
}

int main() {
    getPrime();
    getSum();
    cin >> n >> m;
    for (int i = 1; i <= n; i++) {
        int l, r;
        cin >> l >> r;
        if (l < 1 || r > m) cout << WARNING << endl;
        else cout << search(l, r) << endl;
    }
    return 0;
}
