#import <Foundation/Foundation.h>
//simple heap object that handles an NSArray for its container
@interface NSArrayHeap : NSObject{
	NSArray *container;
	NSInteger *size;	
}
- (void) setContainer: (NSArray *) _container;
- (void) setSize: (NSInteger) _size;
- (void) sort;
- (void) addItem: (NSInteger) item;
- (void) removeItem: (NSInteger) item;
- (NSInteger) getSize;
- (NSInteger) getParentIndex: (NSInteger) index;
- (NSInteger) getLeftChildIndex: (NSInteger) index;
- (NSInteger) getRightChildIndex: (NSInteger) index;
- (NSInteger) heapify: (NSInteger) index;
- (NSArray *) getContainer;
@end
