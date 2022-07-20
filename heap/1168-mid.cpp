#include <bits/stdc++.h>

using namespace std;

priority_queue<int, vector<int> > pq1;
priority_queue<int, vector<int>, greater<> > pq2;
int n;

int main() {
    cin >> n;
    for (int i = 1; i <= n; ++i) {
        int data;
        cin >> data;
        if (i == 1 || (data > pq1.top())) pq2.push(data);
        else pq1.push(data);
        while (abs((double) (pq1.size() - pq2.size())) > 1) {
            if (pq1.size() > pq2.size()) {
                pq2.push(pq1.top());
                pq1.pop();
            } else {
                pq1.push(pq2.top());
                pq2.pop();
            }
        }
        if (i & 1) {
            int ans = (pq1.size() > pq2.size()) ? pq1.top() : pq2.top();
            cout << ans << endl;
        }
    }
    return 0;
}