#include <iostream>
#include <unordered_map>

using namespace std;

int main() {
    unordered_map<int, int> frequency;
    int n,ans,temp;
    long long count = 0L;
    cin >> n >> ans;
    for (int i = 0; i < n; ++i) {
        cin >> temp;
        if (frequency.count(temp) == 0) {
            frequency.insert(make_pair(temp, 1));
        } else {
            frequency[temp]++;
        }
    }

    for (auto &it:frequency) {
        int a = it.first;
        int b = a - ans;
        count += (frequency.count(b) == 0) ? 0 : frequency[b] * it.second;
    }

    cout << count << endl;
    return 0;
}