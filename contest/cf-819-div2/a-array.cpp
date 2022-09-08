#include <iostream>

using namespace std;

int t, n;

int main() {
    cin >> t;
    for (int i = 0; i < t; ++i) {
        cin >> n;
        int *nums = new int[n];
        int *_max = new int[n];
        int *_min = new int[n];
        for (int j = 0; j < n; ++j) {
            cin >> nums[j];
            _min[j] = j == 0 ? nums[0] : min(_min[j - 1], nums[j]);
        }
        for (int j = n - 1; j >= 0; --j) {
            _max[j] = j == n - 1 ? nums[n - 1] : max(_max[j + 1], nums[j]);
        }

        int res = nums[n - 1] - nums[0];
        for (int j = 0; j < n; ++j) {
            res = max(res, nums[n - 1] - _min[j]);
            res = max(_max[j] - nums[0], res);
            res= max(res,nums[(j+n-1)%n]-nums[j]);
        }

        cout << res << endl;

    }
    return 0;
}