//
//  NSData+Cryptography.m
//  IsaacsIOSLibrary
//
//  Created by Isaac on 8/18/14.
//  Copyright (c) 2014 Isaac Paul. All rights reserved.
//

#import "NSData+Cryptography.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (Cryptography)

- (NSString*)sha1 {
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    bool successful = CC_SHA1([self bytes], (CC_LONG)[self length], digest);
    if (!successful)
        return nil;

    NSMutableString *hexDigest = [[NSMutableString alloc] init];
    for(NSUInteger i = 0; i < CC_SHA1_DIGEST_LENGTH; i++ )
    {
        [hexDigest appendFormat:@"%02x", digest[i]];
    }
    return hexDigest;
}

@end
