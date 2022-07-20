#include <bits/stdc++.h>

#define N 1005
using namespace std;

int v, n, k = 0, dp[N];

struct Object {
    int weight;
    int value;
    int id;
};

vector<Object> objects[N];

int main() {
    cin >> v >> n;
    for (int i = 1; i <= n; ++i) {
        int weight, value, id;
        cin >> weight >> value >> id;
        objects[id].push_back({weight, value, id});
        k = max(k, id);
    }
    for (int i = 1; i <= k; ++i) {
        for (int j = v; j >= 0; j--) {
            for (int m = 0; m < objects[i].size(); m++) {
                if (j >= objects[i][m].weight)
                    dp[j] = max(dp[j], dp[j - objects[i][m].weight] + objects[i][m].value);
            }
        }
    }
    cout << dp[v] << endl;
    return 0;
}