#import <Foundation/Foundation.h>
BOOL isFactor(int n,int m);
BOOL isPrime(int p);
int main(int argc, const char *argv[]){
	@autoreleasepool{
		int i = 1;
		int j = 1;
		for(;i<100;i++){
			//if (isPrime(i)==YES){
			//	NSLog(@"%i",i);
			//}
			NSLog(@"checking %i:",i);
			for (j=1;j<10;j++){
				if (i%j == 0){
					NSLog(@"\t%i is a factor of %i",j,i);
				}
			}

		}	
	}
}
/*
	determine if n is a factor of m
*/
BOOL isFactor(int n, int m){
	if (m%n == 0){
		return YES;
	}
	else{
		return NO;
	}
}
BOOL isPrime(int p){
	int c = 0;
	if (p == 2 || p == 3){
		return YES;
	}
	else if(c <= 1){
		return NO;	
	}
	
	NSLog(@"\t checking %i",p);
	for (c = 2;c<p;c++){
		if (isFactor(c,p) == YES){
			NSLog(@"\t%i is a factor of %i",c,p);
			return NO;
		} 
	}
	return YES;
}
