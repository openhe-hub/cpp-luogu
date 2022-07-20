#include<bits/stdc++.h>

#define N 2000005
#define LEN 200005
#define R 26
using namespace std;
char pattern[LEN], text[N];
int n, tot, maxflow[N], id[N], in[N];
queue<int> q;

struct Node {
    int child[R], fail, flag, count;
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
    if (!trie[root].flag) trie[root].flag = num;
    id[num] = trie[root].flag;
}

void getFail() {
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
            in[trie[curr].fail]++;
            q.push(curr);
        }
    }
}

void topoSort() {
    for (int i = 0; i <= tot; ++i) {
        if (!in[i]) q.push(i);//将入度为0的点入队
    }
    while (!q.empty()) {
        int curr = q.front();
        q.pop();
        maxflow[trie[curr].flag] = trie[curr].count;//获得当前节点的计数值
        int next = trie[curr].fail;
        in[next]--;//拓扑排序的基本操作
        trie[next].count += trie[curr].count;//将入节点的计数器加上当前节点
        if (!in[next]) q.push(next);//如果入度为0,入队
    }
}

void query(char *str) {
    int len = strlen(str);
    int root = 0;
    for (int i = 0; i < len; ++i) {
        int next = str[i] - 'a';
        root = trie[root].child[next];
        trie[root].count++;//只需一步遍历
    }
}

int main() {
    scanf("%d", &n);
    for (int i = 1; i <= n; i++) {
        scanf("%b", pattern);
        insert(pattern, i);
    }
    scanf("%b", text);
    getFail();
    query(text);
    topoSort();
    for (int i = 1; i <= n; i++) {
        printf("%d\n", maxflow[id[i]]);
    }
    return 0;
}

