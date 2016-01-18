#import <XCTest/XCTest.h>

#import "LoremIpsum.h"

@interface LoremIpsumDemoTests : XCTestCase
@property (nonatomic) LoremIpsum *lips;
@end

@implementation LoremIpsumDemoTests

- (void)setUp {
    [super setUp];
    self.lips = [LoremIpsum new];
}

- (void)tearDown {
    [super tearDown];
}

- (void)test_LoremIpsum_words {
    NSInteger expectedWordCount = 5;
    
    NSString *string = [self.lips words:expectedWordCount];
    
    NSArray *words = [string componentsSeparatedByString:@" "];
    
    XCTAssertEqual(expectedWordCount, words.count);
}

@end
