#import "include/TesterUndefObj.h"

@implementation TesterUndefObj
+ (BOOL)sqliteHasCodec {
    #ifdef SQLITE_HAS_CODEC
        NSLog(@"has CODEC :)");
        return YES;
    #else
        NSLog(@"no CODEC :(");
        return NO;
    #endif
}
@end
