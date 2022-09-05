#include <bits/stdc++.h>
typedef long long ll;

using namespace std;

int t, n;
string str;

int main() {
    cin >> t;
    for (int i = 0; i < t; ++i) {
        cin >> n >> str;

        ll *line = new ll[n];
        vector<ll> par;
        ll max_val, sum = 0;
        //calc
        for (int j = 0; j < n; ++j) {
            char ch = str.at(j);
            line[j] = ch == 'L' ? j : (n - j - 1);
            sum += line[j];
            max_val = max(j, n - j - 1);
            par.push_back(max_val - line[j]);
        }
        //sort
        sort(par.begin(), par.end(), greater<>());
        //solve
        int pt=0;
        for (int k = 1; k <= n; ++k) {
            if (par[pt]){
                sum+=par[pt++];
                cout<<sum<<" ";
            }else{
                cout<<sum<<" ";
            }
        }
        cout<<endl;
    }
    return 0;
}