#include <bits/stdc++.h>

#define N 1000005
using namespace std;

string s1, s2;
int len1, len2, top = 0;
int nxt[N], st[N], pos[N];

void getNext() {
    int i = 0, j = -1;
    nxt[0] = -1;
    while (i < len1) {
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
            st[top++] = i;
            i++;
            j++;
            pos[i - 1] = j;
        } else {
            j = nxt[j];
            pos[i] = 0;
        }
        pos[i - 1] = j + 1;
        if (j == len2) {
            top -= len2;
            j = pos[st[top]];
        }
    }
}

int main() {
    cin >> s1 >> s2;
    len1 = s1.size();
    len2 = s2.size();
    getNext();
    kmp();
    for (int i = 0; i < top; i++) {
        cout << s1[st[i]];
    }
    return 0;
}