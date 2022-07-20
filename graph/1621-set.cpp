#include <bits/stdc++.h>

#define N 100005
using namespace std;

int id[N], a, b, p, ans = 0;
int isPrimeGCD[N];
vector<int> primes;

int gcd(int x, int y) {
    return (y == 0) ? x : gcd(y, x % y);
}

bool isPrime(int x) {
    if (x < 2) return false;
    for (int i = 2; i * i <= x; i++) {
        if (!(x % i)) return false;
    }
    return true;
}

void init() {
    for (int i = a; i <= b; i++) id[i] = i;
    primes.push_back(2);
    for (int i = 3; i <= b; i++) {
        if (isPrime(i)) primes.push_back(i);
    }
}

int find(int x) {
    return id[x] == x ? x : (id[x] = find(id[x]));
}

void connect(int x, int y) {
    int xr = find(x);
    int yr = find(y);
    if (xr != yr) id[xr] = id[yr];
}

bool isConnected(int x, int y) {
    return find(x) == find(y);
}

bool judge(int num) {
    if (isPrimeGCD[num] != 0) return isPrimeGCD[num] == 1;
    if (num < p) {
        isPrimeGCD[num] = -1;
        return false;
    }
    for (int i = 0; i < primes.size(); i++) {
        if (num % primes[i] == 0 && primes[i] >= p) {
            isPrimeGCD[num] = 1;
            return true;
        }
    }
    isPrimeGCD[num] = -1;
    return false;
}

int main() {
    cin >> a >> b >> p;
    ans = b - a + 1;
    init();
    for (int i = a; i <= b; i++) {
        for (int j = i + 1; j <= b; j++) {
            int _gcd = gcd(i, j);
            if (judge(_gcd) && !isConnected(i, j)) {
                connect(i, j);
                ans--;
            }
        }
    }
    cout << ans << endl;
    return 0;
}