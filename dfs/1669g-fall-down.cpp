#include <bits/stdc++.h>

#define BLANK '.'
#define STONE '*'
#define OBSTACLE 'o'
using namespace std;

int main() {
    int t;
    cin >> t;
    for (int i = 0; i < t; ++i) {
        //input
        int n, m;
        cin >> n >> m;
        auto *data = new string[n];
        for (int j = 0; j < n; ++j) {
            cin >> data[j];
        }
        //fall
        for (int k = 0; k < m; ++k) {
            int top=n-1,bottom=n-1;
            while (top>=0){
                int cnt=0;
                while(top>=0&&data[top][k]!=OBSTACLE){
                    cnt+=data[top--][k]==STONE?1:0;
                }
                for (int l = bottom; l >top ; --l) {
                    data[l][k]=l>bottom-cnt?STONE:BLANK;
                }
                bottom=--top;
            }
        }
        //print
        for (int j = 0; j < n; ++j) {
            cout<<data[j]<<endl;
        }
    }
    return 0;
}