#include <bits/stdc++.h>
#define N 100005
#define M 200005
using namespace std;

struct Edge{
    int from,to,weight;
};

bool operator<(Edge edge1,Edge edge2){
    return edge1.weight>=edge2.weight;
}

int n,m,s;
vector<Edge> graph[N];
priority_queue<Edge> pq;
int dist[N];
bool vis[N];

void dijkstra(){
    while (!pq.empty()){
        Edge top=pq.top();
        pq.pop();
        int from=top.to;
        if(vis[from]) continue;
        vis[from]=true;
        for(int i=0;i<graph[from].size();i++){
            int to=graph[from][i].to;
            int weight=graph[from][i].weight;
            if(dist[to]>dist[from]+weight) {
                dist[to] = dist[from] + weight;
                Edge next = {from, to, dist[to]};
                pq.push(next);
            }
        }
    }
}



int main(){
    cin>>n>>m>>s;
    for (int i = 1; i <= n; ++i) {
        dist[i]=i==s?0:0x3f3f3f3f;
        vis[i]= false;
    }
    for (int i = 1; i <= m; ++i) {
        int from,to,weight;
        cin>>from>>to>>weight;
        Edge edge={from,to,weight};
        graph[from].push_back(edge);
    }

    Edge start={s,s,0};
    pq.push(start);
    dijkstra();

    for (int i = 1; i <=n ; ++i) {
        cout << dist[i] << " ";
    }
    return 0;
}