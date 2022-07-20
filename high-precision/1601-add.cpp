#include <bits/stdc++.h>
#define N 505
using namespace std;

int main(){
    string s1,s2;
    int a[N],b[N],res[2*N];
    memset(res,0, sizeof(res));
    memset(a,0, sizeof(a));
    memset(b,0, sizeof(b));
    cin>>s1>>s2;
    int len1=s1.length(),len2=s2.length();

    if(s1=="0"&&s2=="0"){
        cout<<0<<endl;
        return 0;
    }

    for(int i=len1;i>0;i--){
        a[len1-i+1]=s1[i-1]-'0';
    }

    for(int i=len2;i>0;i--){
        b[len2-i+1]=s2[i-1]-'0';
    }

    for(int i=1;i<=min(len1,len2);i++){
        res[i]+=a[i]+b[i];
        res[i+1]+=res[i]/10;
        res[i]%=10;
    }

    if(min(len1,len2)==len1){
        for(int i=len1+1;i<=len2;i++){
            res[i]+=b[i];
            res[i+1]+=res[i]/10;
            res[i]%=10;
        }
    }

    if(min(len1,len2)==len2){
        for(int i=len2+1;i<=len1;i++){
            res[i]+=a[i];
            res[i+1]+=res[i]/10;
            res[i]%=10;
        }
    }

    bool flag=false;
    for(int i=N+5;i>=1;i--){
        if(res[i]) flag=true;
        if(flag) cout<<res[i];
    }
    return 0;
}