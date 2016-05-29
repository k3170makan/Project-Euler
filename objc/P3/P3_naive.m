#import <Foundation/Foundation.h>
int isFactor(int n,int m);
int isPrime(int p);
NSMutableArray *sieve(int limit);
/*

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

Axioms:
	x - search speed : how fast the algorithm can run through candidate factors
	y - prime checking/generation speed : how fast the algorithm can determine if something is a prime number
	

T1: - the smallest prime factor of a number is always larger than its square root
Answer 0: (naive), brute force using naive prime generation
		- generate prime numbers, 
		- stop once you get to a prime number that is larger than the actual number 
		- run through the prime numbers, checking which of them are factors, return the largest in the set
Answer 1:
		- start from the number its self, counting down
		- check each uneven number for primality
		- the first prime number you get that is also a factor of x is the answer
Answer 3: (naive search, sieve prime generation)
		- sieve primes upto the number limit
		- check each of them for factorality
		- return the biggest in the set
*/
int main(int argc, const char *argv[]){
		NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
		int limit = [defaults integerForKey:@"limit"];
		printf("sieving primes ...\n");
		NSMutableArray *primes = sieve(limit);
		for (NSNumber *num in primes){
			printf("%d",[num intValue]);
		}
		return 0;
}
int Answer1 (int limit){
	int i =0;
	for(;i<limit;i++){
			if (isPrime(i)==0){
				printf("[*] found prime :%i\n",i);
			}
		}	
	return 0;// STUB RETURN
}
/*
	determine if n is a factor of m
*/
int isFactor(int n, int m){
	if (m%n == 0){
		return 0;
	}
	else{
		return 1;
	}
}
int isPrime(int p){
	int c = 0;
	if (p == 2 || p == 3){
		return 0;
	}
	else if(p <= 1){
		return 1;	
	}
	
	for (c = 2;c<p;c++){
		if (isFactor(c,p) == 0){
			return 1;
		} 
	}
	return 0;
}
NSMutableArray* sieve(int limit){
	NSNumber *p[limit];
	int i =0;
	int j =0;	
	printf("bool array init...limit at '%d'\n",limit);
	for (i=0;i<limit;i++){
		printf("%d, ",i);
		p[i] = [NSNumber numberWithInt: 0];	
	}	
	printf("\n");	
	printf("prime gen loop limit: %d\n",(int)sqrt(limit));
	int n = (int) sqrt(limit);
	for (i=0;i<n;i=i+1){
		printf("%d, ",i);
		if ([p[i] intValue ] == 0){
			for (j=i*i;j<limit;j=j+i){
				p[j] = [NSNumber numberWithInt: 1];
			}
		}
		printf("\n");
	}	
	//grab the primes and make an array	
	NSMutableArray *primes = [NSMutableArray array]; //using a mutable array coz I don't wanna waste space	
	for (i=0;i<limit;i++){
		if([p[i] intValue] == 0 ){
			[primes addObject: [NSNumber numberWithInt: i]]; //mark this as not prime
		}
	}	
	return primes;	
}
