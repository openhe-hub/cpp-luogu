#include <bits/stdc++.h>

using namespace std;


struct Num {
    int num;
    int idx;
};

bool cmp(Num num1, Num num2) {
    return num1.num > num2.num;
}

int main() {
    int t;
    cin >> t;
    for (int i = 0; i < t; ++i) {
        string str;
        int n = 0, sum = 0, p = 0, diff;
        cin >> str>>p;
        n = str.size();
        int *nums = new int[n];
        Num *pq = new Num[n];
        bool *deleted=new bool[n];

        //calc
        for (int j = 0; j < n; ++j) {
            nums[j] = str[j] - 'a' + 1;
            deleted[j]= false;
            sum += nums[j];
            pq[j] = {nums[j], j};
        }
        diff = sum-p;
        if (diff <= 0) {
            cout << str << endl;
            continue;
        }

        //sort
        sort(pq, pq + n, cmp);

        //solve
        int top = 0;
        while (diff > 0) {
//            if (diff<pq[top].num){
//                while(top<n&&diff<pq[top++].num);
//                if (top==n){
//                    deleted[pq[n-1].idx]= true;
//                }else{
//                    deleted[pq[top-1].idx]= true;
//                }
//                break;
//            }
            deleted[pq[top].idx]= true;
            diff -= pq[top++].num;
        }

        //generate
        string ret;
        for (int j = 0; j < n; ++j) {
            if (!deleted[j]) ret.push_back(str[j]);
        }
        cout<<ret<<endl;
    }
    return 0;
}