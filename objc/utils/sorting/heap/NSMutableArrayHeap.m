//simple heap object that handles an NSMutableArray for its container
/*
@interface NSArrayHeap : NSObject{
	NSArray *container;
	NSInteger *size;	
}
*/
@implementation MSMutableArrayHeap
- (void) setContainer: (NSArray *) _container{
	container = _container;	
}
- (void) setSize: (NSInteger) _size{
	size = _size;
}
- (void) sort{
	return; //finish this laters
}
- (void) addItem: (NSInteger) item{
	//insert the item at the top of the heap, heapify the object
	[container insertObject:item atIndex:1];
	[self heapify: 1];
}
- (void) removeItem: (NSInteger) item;
- (NSInteger) getSize;
- (NSInteger) getParentIndex: (NSInteger) index;
- (NSInteger) getLeftChildIndex: (NSInteger) index;
- (NSInteger) getRightChildIndex: (NSInteger) index;
- (NSInteger) heapify: (NSInteger) index;
- (NSArray *) getContainer;
@end
