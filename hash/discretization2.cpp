#include <iostream>
#include <algorithm>
#include <vector>

using namespace std;

int main() {
    vector<int> data, id;
    int n;
    cin >> n;
    for (int i = 0; i < n; ++i) {
        int num;
        cin >> num;
        data.push_back(num);
        id.push_back(num);
    }
    sort(data.begin(), data.end());
    data.erase(unique(data.begin(), data.end()), data.end());
    for (int i = 0; i < n; ++i) {
        id[i] = lower_bound(data.begin(), data.end(), id[i]) - data.begin();
    }
    for (int i = 0; i < n; ++i) {
        cout << id[i] << " ";
    }

    return 0;
}