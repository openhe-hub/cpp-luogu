#include <bits/stdc++.h>
#define N 5005
using namespace std;

/*
 * 原题只需用到被除数的高精度算法，这里使用完全的高精度除法
 * */

int a[N],b[N],r[N],res[N],len1,len2;

bool cmp(int i){
    if(r[i-len2]!=0) return true;
    for(int j=len2-1;j>=0;j--){
        if(r[i-j]>b[len2-j-1]) return true;
        if(r[i-j]<b[len2-j-1]) return false;
    }
    return true;
}

void divide(){
    for(int i=len2-1;i<len1;i++){
        while(cmp(i)){
            for(int j=0;j<len2;j++){
                r[i-j]-=b[len2-j-1];
                if(r[i-j]<0){
                    r[i-j-1]-=1;
                    r[i-j]+=10;
                }
            }
            res[i]++;
        }
    }

    bool flag=false;
    for(int i=0;i<len1;i++){
        if(res[i]) flag=true;
        if(flag) cout<<res[i];
    }
}

int main(){
    string s1,s2;
    cin>>s1>>s2;
    len1=s1.length();
    len2=s2.length();
    memset(a,0, sizeof(a));
    memset(b,0, sizeof(b));
    memset(res,0, sizeof(res));

    for(int i=0;i<len1;i++){
        a[i]=s1[i]-'0';
        r[i]=a[i];
    }

    for(int i=0;i<len2;i++){
        b[i]=s2[i]-'0';
    }
    divide();
    return 0;
}