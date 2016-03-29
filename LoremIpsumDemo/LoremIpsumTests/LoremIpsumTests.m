#import <XCTest/XCTest.h>

#import "LoremIpsum.h"

@interface LoremIpsumDemoTests : XCTestCase
@end

@implementation LoremIpsumDemoTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)test_LoremIpsum_words {
    NSInteger expectedWordCount = 5;
    
    NSString *string = [LoremIpsum words:expectedWordCount];
    
    NSArray *words = [string componentsSeparatedByString:@" "];
    
    XCTAssertEqual(expectedWordCount, words.count);
}

@end
