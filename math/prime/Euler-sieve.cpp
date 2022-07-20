#include <bits/stdc++.h>

#define N 1000005
#define WARNING "Crossing the line"
using namespace std;

int isPrime[N], prime[N], sum[N], cnt = 0, n, m;

void getPrime() {
    for (int i = 0; i <= N; i++) {
        isPrime[i] = 1;
    }
    isPrime[0] = 0;
    isPrime[1] = 0;
    for (int i = 2; i <= N; i++) {
        if (isPrime[i]) prime[cnt++] = i;
        for (int j = 0; j <= cnt && i * prime[j] <= N; j++) {
            isPrime[i * prime[j]] = 0;
            if (i % prime[j] == 0) break;
        }
    }
}

void getSum() {
    sum[2] = 1;
    for (int i = 3; i <= N; i++) sum[i] = (isPrime[i]) ? sum[i - 1] + 1 : sum[i - 1];
}

int query(int l, int r) {
    return sum[r] - sum[l - 1];
}

int main(int argc, char const *argv[]) {
    getPrime();
    getSum();
    cin >> n >> m;
    for (int i = 1; i <= n; i++) {
        int l, r;
        cin >> l >> r;
        if (l < 1 || r > m) cout << WARNING << endl;
        else cout << query(l, r) << endl;
    }
    return 0;
}