#include<bits/stdc++.h>

#define N 1001
#define R 26
#define LEN 500007

using namespace std;

int n, m, l, tot = 0;
int trie[LEN][R];
bitset<N> flag[LEN];
string tmp;


void insert(string s, int x) {
    int root = 0;
    for (int i = 0; i < s.size(); i++) {
        int next = s[i] - 'a';
        if (!trie[root][next]) {
            trie[root][next] = ++tot;
        }
        root = trie[root][next];
    }
    flag[root][x] = 1;
}

void search(string s) {
    int root = 0;
    for (int i = 0; i < s.size(); i++) {
        int next = s[i] - 'a';
        if (!trie[root][next]) {
            cout << ' ' << endl;
            return;
        }
        root = trie[root][next];
    }
    for (int i = 1; i <= n; i++) {
        if (flag[root][i] == 1) {
            cout << i << ' ';
        }
    }
    cout << endl;
}

int main() {
    cin >> n;
    for (int i = 1; i <= n; i++) {
        cin >> l;
        for (int j = 1; j <= l; j++) {
            cin >> tmp;
            insert(tmp, i);
        }
    }
    cin >> m;
    for (int i = 1; i <= m; i++) {
        cin >> tmp;
        search(tmp);
    }
    return 0;
}