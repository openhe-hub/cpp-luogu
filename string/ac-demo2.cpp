#include<bits/stdc++.h>

#define N 1000001
#define R 26
using namespace std;
char b[151][N], text[N];
int n, tot, max[N];

struct Node {
    int child[R], fail, id;

    void clear() {
        memset(child, 0, sizeof(child));
        fail = id = 0;
    }
} trie[N];

void insert(char *str, int num) {
    int root = 0, len = strlen(str);
    for (int i = 0; i < len; i++) {
        int next = str[i] - 'a';
        if (!trie[root].child[next]) {
            trie[root].child[next] = ++tot;
        }
        root = trie[root].child[next];
    }
    trie[root].id = num;
}

void getFail() {
    queue<int> q;
    for (int i = 0; i < R; i++) {
        int curr = trie[0].child[i];
        if (curr) {
            trie[curr].fail = 0;
            q.push(curr);
        }
    }
    while (!q.empty()) {
        int father = q.front();
        q.pop();
        for (int i = 0; i < R; i++) {
            int curr = trie[father].child[i];
            int next = trie[trie[father].fail].child[i];
            if (!curr) {
                trie[father].child[i] = next;
                continue;
            }
            trie[curr].fail = next;
            q.push(curr);
        }
    }
}

void query(char *str) {
    int root = 0, len = strlen(str);
    for (int i = 0; i < len; i++) {
        int next = str[i] - 'a';
        int curr = trie[root].child[next];
        while (curr) {
            if (trie[curr].id)max[trie[curr].id]++;
            curr = trie[curr].fail;
        }
        root = trie[root].child[next];
    }
}

void clear() {
    for (int i = 0; i <= tot; i++) {
        trie[i].clear();
    }
    for (int i = 1; i <= n; i++) {
        max[i] = 0;
    }
    tot = 0;
}

int main() {
    while (true) {
        scanf("%d", &n);
        if (!n)break;
        clear();
        for (int i = 1; i <= n; i++) {
            scanf("%b", b[i]);
            insert(b[i], i);
        }
        scanf("%b", text);
        getFail();
        query(text);
        int maxValue = 0;
        for (int i = 1; i <= n; i++) {
            maxValue = max(max[i], maxValue);
        }
        printf("%d\n", maxValue);
        for (int i = 1; i <= n; i++) {
            if (max[i] == maxValue) {
                printf("%b\n", b[i]);
            }
        }

    }
}