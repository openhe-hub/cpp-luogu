#include <bits/stdc++.h>

#define R 30
#define N 1000005
#define M 1000005
#define LEN 55
using namespace std;

int trie[N][R], freq[N];
bool flag[N];
int tot = 0, n, m, pos = 0;
string tmp, res[M];

void insert(string str) {
    int root = 0;
    for (int i = 0; i < str.size(); i++) {
        int next = str[i] - 'a';
        if (trie[root][next] == 0) {
            trie[root][next] = ++tot;
        }
        root = trie[root][next];
    }
    flag[root] = true;
}

int search(string str) {
    int root = 0;
    for (int i = 0; i < str.size(); i++) {
        int next = str[i] - 'a';
        if (trie[root][next] == 0) break;
        else root = trie[root][next];
    }
    if (flag[root]) freq[root]++;
    return root;
}

int main() {
    cin >> n;
    for (int i = 0; i <= n; i++) {
        flag[i] = false;
        freq[i] = 0;
    }
    for (int i = 1; i <= n; i++) {
        cin >> tmp;
        insert(tmp);
    }
    cin >> m;
    for (int i = 1; i <= m; i++) {
        cin >> tmp;
        int root = search(tmp);
        if (root == 0 || !flag[root]) res[pos++] = "WRONG";
        else {
            if (freq[root] == 1) res[pos++] = "OK";
            else res[pos++] = "REPEAT";
        }
    }
    for (int i = 0; i < m; ++i) {
        cout << res[i] << endl;
    }
    return 0;
}