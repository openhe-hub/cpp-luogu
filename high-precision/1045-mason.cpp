#include <bits/stdc++.h>

#define N 501
using namespace std;

int v;
int weight[N], b[N], res[N];

void multiply(int x[], int y[]) {
    memset(res, 0, sizeof(res));
    for (int i = 1; i <= x[0]; i++) {
        for (int j = 1; j <= y[0]; j++) {
            if (i + j > N) break;
            else {
                res[i + j - 1] += x[i] * y[j];
                if (res[i + j - 1] > 9) {
                    res[i + j] += res[i + j - 1] / 10;
                    res[i + j - 1] %= 10;
                }
            }
            res[0] = i + j;
        }
    }
    memcpy(weight, res, sizeof(weight));
}

void fastPower(int p) {
    if (p == 1) {
        memcpy(weight, b, sizeof(weight));
        return;
    }
    fastPower(p / 2);
    multiply(weight, weight);
    if (p % 2 == 1) multiply(weight, b);
}


int main() {
    cin >> v;
    cout << floor(v * log10(2)) + 1 << endl;
    weight[1] = 1;
    b[1] = 2;
    weight[0] = 1;
    b[0] = 1;
    fastPower(v);
    for (int i = N-1; i >= 1; i--) {
        if (i == 1) cout << weight[i] - 1;
        else cout << weight[i];
        if ((i - 1) % 50 == 0) cout << endl;
    }
    return 0;
}