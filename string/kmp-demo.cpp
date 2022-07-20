#include <iostream>

#define N 1000005
using namespace std;

string s1, s2;
int len1, len2;
int nxt[N];

void getNext() {
    int i = 0, j = -1;
    nxt[0] = -1;
    while (i < len2) {
        if (j == -1 || s2[i] == s2[j]) {
            nxt[++i] = ++j;
        } else {
            j = nxt[j];
        }
    }
}

void kmp() {
    int i = 0, j = 0;
    while (i < len1) {
        if (j == -1 || s1[i] == s2[j]) {
            i++;
            j++;
        } else {
            j = nxt[j];
        }
        if (j == len2) {
            cout << i - j + 1 << endl;
        }
    }
}

int main() {
    cin >> s1 >> s2;
    len1 = s1.size();
    len2 = s2.size();
    getNext();
    kmp();
    for (int i = 1; i <= len2; ++i) {
        cout << nxt[i] << " ";
    }
    return 0;
}