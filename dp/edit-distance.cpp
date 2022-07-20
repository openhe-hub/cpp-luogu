#include <iostream>
#include <string>
#include <algorithm>

using namespace std;

int main() {
    string s1, s2;
    cin >> s1 >> s2;

    if (s1.length() * s2.length() == 0) {
        return s1.length() + s2.length();
    }

    int dp[s1.length() + 1][s2.length() + 1];
    for (int i = 0; i < s1.length() + 1; ++i) {
        dp[i][0] = i;
    }
    for (int i = 0; i < s2.length() + 1; ++i) {
        dp[0][i] = i;
    }

    for (int i = 1; i < s1.length() + 1; ++i) {
        for (int j = 1; j < s2.length() + 1; ++j) {
            int add1 = dp[i - 1][j] + 1;
            int add2 = dp[i][j - 1] + 1;
            int alter = dp[i - 1][j - 1] + ((s1.at(i - 1) == s2.at(j - 1)) ? 0 : 1);
            dp[i][j] = min(add1, min(add2, alter));
        }
    }
    cout << dp[s1.length()][s2.length()] << endl;
    return 0;
}