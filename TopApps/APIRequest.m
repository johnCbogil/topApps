//
//  APIRequest.m
//  TopApps
//
//  Created by Aditya Narayan on 3/26/15.
//  Copyright (c) 2015 John Bogil. All rights reserved.
//

#import "APIRequest.h"

@implementation APIRequest 


- (void)itunesStoreRequest {
    
    
    NSURL *url = [[NSURL alloc]initWithString:@"http://ax.itunes.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/toppaidapplications/limit=25/json"];
    
    NSMutableURLRequest *getRequest = [NSMutableURLRequest requestWithURL:url];

    getRequest.HTTPMethod = @"GET";
    
    [getRequest setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [getRequest setValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];

    NSURLConnection *itunesStoreConnection = [[NSURLConnection alloc]initWithRequest:getRequest delegate:self];
    

}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    
    self.responseData = [[NSMutableData alloc]init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    
    
    [self.responseData appendData:data];
    
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    NSMutableDictionary *decodedData = [NSJSONSerialization JSONObjectWithData:self.responseData options:0 error:nil];
    NSMutableArray *feed = [decodedData valueForKey:@"feed"];
    NSMutableArray *entry = [feed valueForKey:@"entry"];
    //NSLog(@"%@", entry);
    NSMutableArray *name = [entry valueForKey:@"im:name"];
    NSMutableArray *label = [name valueForKey:@"label"];
    NSLog(@"%@", label);
    
    self.appsArray = [[NSMutableArray alloc]init];
    [self.appsArray addObjectsFromArray:label];


    
    

    
}





@end
