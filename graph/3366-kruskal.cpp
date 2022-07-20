#include <bits/stdc++.h>
#define N 5005
#define M 200005
using namespace std;

struct Edge{
    int x,y,weight;
};

bool operator<(Edge edge1,Edge edge2){
    return edge1.weight>=edge2.weight;
}

vector<Edge> graph[N];
priority_queue<Edge> pq;
int id[N];
int size=0,res=0,n,m,cnt;

int find(int x){
    return id[x]==x?x:id[x]=find(id[x]);
}

void connect(int x,int y){
    int xr= find(x);
    int yr= find(y);
    if(xr!=yr){
        id[xr]=yr;
        cnt--;
    }
}

bool connected(int x,int y){
    return find(x)==find(y);
}

void kruskal(){
    while(!pq.empty()&&size<n-1){
        Edge edge=pq.top();
        pq.pop();
        if(!connected(edge.x,edge.y)){
            connect(edge.x,edge.y);
            size++;
            res+=edge.weight;
        }
    }
}

int main(){
    cin>>n>>m;
    cnt=n;
    for (int i = 1; i <= n; ++i) {
        id[i]=i;
    }
    for (int i = 1; i <= m; ++i) {
        int x,y,w;
        cin>>x>>y>>w;
        pq.push({x,y,w});
    }
    kruskal();
    if(cnt!=1) cout<<"orz"<<endl;
    else cout<<res<<endl;
    return 0;
}