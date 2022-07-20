#include <bits/stdc++.h>

#define N 30
using namespace std;

int main() {
    int s, t, w, len, num[N], cnt = 1;
    string str;
    char start, end;

    cin >> s >> t >> w >> str;
    len = t - s + 1;
    start = char('a' + s - 1);
    end = char('a' + t - 1);

    for (int i = 0; i < w; i++) {
        num[i] = str[i] - 'a' + 1;
    }

    while (cnt <= 5) {
        for (int i = w - 1; i >= 0; i--) {
            if (i == w - 1 && num[i] < t) {
                num[i]++;
                break;
            } else if (i < w - 1 && num[i] + 1 < num[i + 1]) {
                num[i]++;
                for (int j = i + 1; j < w; j++) {
                    num[j] = num[j - 1] + 1;
                }
                break;
            }
        }
        string ret;
        for (int i = 0; i < w; i++) {
            ret += char(start + num[i] - s);
        }
        cout << ret << endl;
        cnt++;
    }
    return 0;
}