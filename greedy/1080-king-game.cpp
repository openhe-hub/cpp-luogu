#include <bits/stdc++.h>

#define N 1005
#define M 105
typedef long long ll;
using namespace std;

struct Node {
    int a, b, idx;
} node[N];
int n, ans[M], len1 = 0;
ll ret = 0;

bool cmp(Node n1, Node n2) {
    return n1.a * n1.b < n2.a * n2.b;
}

void multiply(int b) {
    int num2[N], res[N], len;
    string str = to_string(b);
    int len2 = str.length();
    len = len2 + len1;
    for (int i = 1; i <= len2; i++) {
        num2[i] = str[len2 - i] - 0x30;
    }

    for (int i = 1; i <= len1; i++) {
        for (int j = 1; j <= len2; j++) {
            res[i + j - 1] += ans[i] * num2[j];
        }
    }

    for (int i = 1; i <= len; i++) {
        if (res[i] > 9) {
            res[i + 1] += res[i] / 10;
            res[i] %= 10;
        }
    }

    while (res[len] == 0) len--;

    len1 = len;
    for (int i = 1; i <= len1; i++) {
        ans[i] = res[i];
    }

}

//ll divide(int b) {
//    return 1;
//}


int main() {
    cin >> n;
    for (int i = 1; i <= n + 1; ++i) {
        cin >> node[i].a >> node[i].b;
        node[i].idx = i;
    }
    sort(node + 2, node + 2 + n, cmp);

    string str = to_string(node[1].a);
    len1 = str.length();
    for (int i = 1; i <= len1; i++) {
        ans[i] = str[len1 - 1] - 0x30;
    }

    for (int i = 2; i <= n + 1; i++) {
//        ret = max(ret, divide(node[i].b));
        multiply(node[i].a);
        for(int j=1;j<=len1;j++){
            cout<<ans[j]<<" ";
        }
        cout<<endl;
    }
    cout << ret << endl;
    return 0;
}