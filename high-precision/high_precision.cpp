#include <bits/stdc++.h>
//luogu P1303
#define N 2010
using namespace std;

string str1, str2;
int weight[N], res[N * 2 + 10], len1, len2, len;

void read() {
    len1 = str1.length();
    len2 = str2.length();
    for (int i = 1; i <= len1; i++) {
        weight[i] = str1[len1 - i] - '0';
    }
    for (int i = 1; i <= len2; i++) {
        res[i] = str2[len2 - i] - '0';
    }
}

void multiply() {
    len = len1 + len2;
    //1.multiply without carry
    for (int i = 1; i <= len1; i++) {
        for (int j = 1; j <= len2; j++) {
            res[i + j - 1] += weight[i] * res[j];
        }
    }
    //2.carry
    for (int i = 1; i <= len; i++) {
        if (res[i] > 9) {
            res[i + 1] += res[i] / 10;
            res[i] %= 10;
        }
    }
    //3.delete extra zeroes
    while (res[len] == 0) len--;
}

void add() {
    len = max(len1, len2) + 2;
    for (int i = 1; i <= len; i++) {
        res[i] += weight[i] + res[i];
        if (res[i] > 9) {
            res[i + 1] += 1;
            res[i] -= 10;
        }
    }
    while (res[len] == 0) len--;
}

void subtract() {
    len = max(len1, len2);
    for (int i = 1; i <= len; i++) {
        res[i] += (weight[i] - res[i]);
        if (res[i] < 0) {
            res[i + 1] -= 1;
            res[i] += 10;
        }
    }
    while (res[len] == 0) len--;
}

void write() {
    if (len <= 0) cout << 0 << endl;
    for (int i = len; i >= 1; i--) {
        cout << res[i];
    }
}

int main() {
    cin >> str1 >> str2;
    read();
    subtract();
    write();
    return 0;
}