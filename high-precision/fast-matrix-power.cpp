#include <bits/stdc++.h>

#define N 101
#define MOD 1000000007
typedef long long ll;
using namespace std;

ll n, k;

struct Matrix {
    ll matrix[N][N];
} weight, res;

Matrix operator*(const Matrix &x, const Matrix &y) {
    Matrix ans;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            ans.matrix[i][j] = 0;
        }
    }
    for (int i = 1; i <= n; ++i) {
        for (int j = 1; j <= n; ++j) {
            for (int m = 1; m <= n; ++m) {
                ans.matrix[i][j] = (ans.matrix[i][j] + (x.matrix[i][m] * y.matrix[m][j]) % MOD) % MOD;
            }
        }
    }
    return ans;
}

void fastPower() {
    while (k > 0) {
        if (k & 1) res = res * weight;
        weight = weight * weight;
        k >>= 1;
    }
}

int main() {
    cin >> n >> k;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; ++j) {
            cin >> weight.matrix[i][j];
            res.matrix[i][j] = (i == j) ? 1 : 0;
        }
    }
    fastPower();
    for (int i = 1; i <= n; ++i) {
        for (int j = 1; j <= n; ++j) {
            cout << res.matrix[i][j] << " ";
        }
        cout << endl;
    }
    return 0;
}