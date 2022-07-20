#include <iostream>
#include <algorithm>

using namespace std;


int main() {
    int n, data[10001],id[10001];
    cin >> n;
    for (int i = 1; i <= n; ++i) {
        cin >> data[i];
        id[i]=data[i];
    }
    sort(data + 1, data + 1 + n);
    int len = unique(data + 1, data + 1 + n) - data - 1;
    for (int i = 1; i <= n; ++i) {
        id[i] = lower_bound(data + 1, data + 1 + len, id[i]) - data;
    }
    for (int i = 1; i <= n; ++i) {
        cout << id[i] << " ";
    }
    return 0;
}