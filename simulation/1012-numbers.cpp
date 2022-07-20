#include <bits/stdc++.h>

#define N 25
using namespace std;

bool cmp(string a,string b){
    return a+b<b+a;
}

int main() {
    int n;
    string str[N],res;
    cin >> n;
    for (int i = 1; i <= n; i++) {
        cin >> str[i];
    }
    sort(1 + str, 1 + n + str,cmp);
    for (int i = n; i >= 1; i--) {
        res+=str[i];
    }
    cout<<res<<endl;
    return 0;
}