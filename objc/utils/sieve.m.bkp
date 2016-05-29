#import <Foundation/Foundation.h>
/*
	prime sieve 
		- genearte an array of size n
		- mark each number in the array as True or '0'
		- loop i from 0 to n**.5
			- if i is set to '0' then
				- loop j from i**2 to n in steps of i*2
						mark each j in n as False
		every index marked True is a prime number 
*/
#define IS_PRIME 0
#define NOT_PRIME 1
int main(int argc, char *argv[]){
		NSUserDefaults *user_defaults = [NSUserDefaults standardUserDefaults];
		int PRIME_COUNT = [user_defaults integerForKey:@"limit"];
		NSNumber *p[PRIME_COUNT];
		int i = 0;
		int j = 0;
		/**initialize p array with True values*/
		for( i=0;i<PRIME_COUNT;i++){
			p[i] = [[NSNumber alloc] initWithInt: 0]; //marked as a candidate prime number
		}	
		/*
		for (i=0;i<PRIME_COUNT;i++){
			printf(@"[*] %i] %d\n",i,[p[i] intValue]);
		}*/
		/*sieve that baby!*/
		NSLog(@"running loop until i = %d",(int)sqrt(PRIME_COUNT));
		for (i=2;i<(int)sqrt(PRIME_COUNT);i++){
			//printf("[*] %d :",i);
			if([p[i] intValue]== 0){
				for (j=(int)pow(i,2);j<PRIME_COUNT;j=j+i){
					//printf("%d ",j);
					p[j] = [NSNumber numberWithInt: 1];
				}
				//printf("\n");
			}
		}
		/*print prime arrayy*/
		printf("[*] primes: ");
		for(i=2;i<PRIME_COUNT;i++){
			if ([p[i] intValue] == 0){
				printf("%d ",i); 
			}	
			
		}
		printf("\n");
		
}
