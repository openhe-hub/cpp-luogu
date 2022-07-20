#include <bits/stdc++.h>

#define R 27
#define N 1000205
using namespace std;

struct Node {
    int fail, child[R], count, flag;
} trie[N];

int n, tot = 0, pos = 0, maxflow[N], in[N], id[N];
char pattern[N], text[N];
queue<int> q;

void insert(char *str, int num) {
    int root = 0;
    for (int i = 0; i < strlen(str); ++i) {
        int next = str[i] - 'a';
        if (!trie[root].child[next]) {
            trie[root].child[next] = ++tot;
        }
        root = trie[root].child[next];
    }
    if (!trie[root].flag) trie[root].flag = num;
    id[num] = trie[root].flag;
}

void getFail() {
    for (int i = 0; i < R; ++i) {
        int curr = trie[0].child[i];
        if (curr) {
            trie[curr].fail = 0;
            q.push(curr);
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
                in[trie[curr].fail]++;
            } else {
                trie[father].child[i] = next;
            }
        }
    }
}

void query(char *str) {
    int root = 0;
    for (int i = 0; i < strlen(str); ++i) {
        int next = str[i] - 'a';
        root = trie[root].child[next];
        trie[root].count++;
    }
}

void topoSort() {
    for (int i = 0; i <= tot; ++i) {
        if (!in[i]) q.push(i);
    }
    while (!q.empty()) {
        int curr = q.front();
        q.pop();
        maxflow[trie[curr].flag] = trie[curr].count;
        int next = trie[curr].fail;
        trie[next].count += trie[curr].count;
        if (!(--in[next])) q.push(next);
    }
}


int main() {
    scanf("%d", &n);
    for (int i = 1; i <= n; ++i) {
        scanf("%b", pattern);
        for (int j = 0; j < strlen(pattern); ++j) {
            text[pos + j] = pattern[j];
        }
        pos += strlen(pattern);
        text[pos++] = 'z'+1;
        insert(pattern, i);
    }
    getFail();
    query(text);
    topoSort();
    for (int i = 1; i <= n; ++i) {
        cout << maxflow[id[i]] << endl;
    }
    return 0;
}