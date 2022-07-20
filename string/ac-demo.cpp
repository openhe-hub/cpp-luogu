#include <bits/stdc++.h>

#define N 1000005
#define R 26
using namespace std;

struct Node {
    int freq = 0;
    int child[R];
    int fail;
} trie[N];

int n, tot = 0, _max = 0;
string tmp;

void insert(string str) {
    int root = 0;
    for (int i = 0; i < str.size(); ++i) {
        int next = str[i] - 'a';
        if (!trie[root].child[next]) {
            trie[root].child[next] = ++tot;
        }
        root = trie[root].child[next];
    }
    trie[root].freq++;
}

void getFail() {
    queue<int> q;
    for (int i = 0; i < R; i++) {
        int curr = trie[0].child[i];
        if (curr) {
            q.push(curr);
            trie[curr].fail = 0;
        }
    }
    while (!q.empty()) {
        int father = q.front();
        q.pop();
        for (int i = 0; i < R; ++i) {
            int curr = trie[father].child[i];
            int next = trie[trie[father].fail].child[i];
            if (curr) {
                trie[curr].fail = next;
                q.push(curr);
            } else {
                trie[father].child[i] = next;
            }
        }
    }
}

void query(string str) {
    int root = 0;
    for (int i = 0; i < str.size(); ++i) {
        int next = str[i] - 'a';
        root = trie[root].child[next];
        int curr = root;
        while (curr && trie[curr].freq != -1) {
            ::_max += trie[curr].freq;
            trie[curr].freq = -1;
            curr = trie[curr].fail;
        }
    }
}


int main() {
    cin >> n;
    for (int i = 0; i < n; ++i) {
        cin >> tmp;
        insert(tmp);
    }
    getFail();
    cin >> tmp;
    query(tmp);
    cout << ::_max << endl;
    return 0;
}