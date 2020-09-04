#include <iostream>
#include <algorithm>
#include <string>
#include <vector>
#include <set>
#include <cmath>
#include <stdio.h>
#include <list>
#include <numeric>
#include <stack>
#include <queue>
#include <tuple>
#include <bitset>
#include <map>
#include <math.h>
//ceil(a/b)   (a + (b - 1))/ b
using namespace std;
#define rep(i,n) for(int i = 0; i < (n); i++)
typedef long long ll;
typedef pair<int,int> P;
const int inf=1000000007;
const ll mod=1000000007;
const double PI=3.14159265358979323846;
int dx[] = {1,-1,0,0};
int dy[] = {0,0,1,-1};

ll gcd(ll a, ll b){
  if (b==0) return a;
  else return gcd(b,a%b);
}

int cans(bool f){
  if(f) cout << "Yes" << endl;
  else cout << "No" << endl;
  return 0;
}

vector<pair<long long,long long>> prime_factorization(ll N) {
  vector<pair<long long, long long>> res;
  for(ll p=2; p*p <= N; p++) {
	if(N % p != 0) continue;
	int ex = 0;          //exponetial part
	while(N%p == 0) {
	  ex++;
	  N/=p;
	}
	res.push_back({p,ex});
  }
  if(N!=1) {
	res.push_back({N,1});
  }
  return res;
}
int main(){
  ll N;
  cin >> N;
  vector<pair<ll,ll>> a;
  a = prime_factorization(N);
  
  ll ans = 0;
  for(auto it : a) {
	ll num = it.second;
	ll cnt = 1;
	ll tmp = 0;
	while(num >= cnt) {
	  num -= cnt;
	  cnt++;
	  tmp++;
	}
	ans += tmp;
  }

  cout << ans << endl;
  
  return 0;
}

