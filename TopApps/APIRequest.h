//
//  APIRequest.h
//  TopApps
//
//  Created by Aditya Narayan on 3/26/15.
//  Copyright (c) 2015 John Bogil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIRequest : NSObject <NSURLConnectionDelegate>


@property (nonatomic, strong) NSMutableData *responseData;
@property (nonatomic, strong) NSMutableArray *appsArray;



- (void)itunesStoreRequest;


@end
