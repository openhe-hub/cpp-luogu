#include <bits/stdc++.h>
#define N 1000005
#define LOWBIT(x) x &(~x + 1)
using namespace std;

int n, a[N], tree[N], last[N], m, ans[N];

struct Qes
{
    int l, r, id;
} qes[N];

bool cmp(Qes qes1, Qes qes2)
{
    return qes1.r < qes2.r;
}

void add(int i, int num)
{
    while (i <= n)
    {
        tree[i] += num;
        i += LOWBIT(i);
    }
}

int getSum(int i)
{
    int sum = 0;
    while (i >= 1)
    {
        sum += tree[i];
        i -= LOWBIT(i);
    }
    return sum;
}

int query(int r, int l) { return getSum(r) - getSum(l - 1); }

int main(int argc, char const *argv[])
{
    cin >> n;
    for (int i = 1; i <= n; i++)
    {
        cin >> a[i];
    }
    cin >> m;
    for (int i = 1; i <= m; i++)
    {
        cin >> qes[i].l >> qes[i].r;
        qes[i].id = i;
    }
    sort(qes + 1, qes + 1 + m, cmp);

    int next = 1;
    memset(last,0,sizeof(last));
    for (int i = 1; i <= m; i++)
    {
        for (int j = next; j <= qes[i].r; j++)
        {
            if (last[a[j]])
            {
                add(last[a[j]], -1);
            }
            add(j, 1);
            last[a[j]] = j;
        }
        ans[qes[i].id] = query(qes[i].r, qes[i].l);
        next=qes[i].r+1;
    }

    for (int i = 1; i <= m; i++)
    {
        cout << ans[i] << endl;
    }
    return 0;
}