//
//  ViewController.m
//  DictionaryDemo
//
//  Created by Ashish Pisey on 15/07/15.
//  Copyright (c) 2015 Ashish Pisey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableDictionary *author = [[NSMutableDictionary alloc]init];
    
    // getting value for a key
    NSString *firstName = [author objectForKey:@"first_name"];
    
    NSLog(@"firstName:- %@",firstName);
    
    [author setObject:@"Akash" forKey:@"first_name"];
    
    NSLog(@"author:- %@",author);
    
    // Getting all the values
    for (id key in author) {
        NSLog(@"%@:%@",key,author[key]);
    }
    
    // getting Value for key
    NSArray *keyArrayForObj = [author allKeysForObject:[NSNumber numberWithInt:25]];
    
    NSLog(@"key for %@:- %@",[NSNumber numberWithInt:25],keyArrayForObj);
    
    // getting array from dictionary
    
    NSArray *valueArray = [author allValues];
    
    NSLog(@"values %@",valueArray);

    NSArray *keyArray = [author allKeys];
    
    NSLog(@"Keys %@",keyArray);
    
    // removing object for specified keys
    [author removeObjectForKey:@"age"];
    
    NSLog(@"author:- %@",author);

    [author removeObjectsForKeys:@[@"first_name",@"last_name"]];
    
    NSLog(@"author:- %@",author);
    
    
    // Create a dictionary again
    NSDictionary *person = [self createDictionary];
    
    NSLog(@"author:- %@",person);

    // Create Dictionary with elements from another dictionary
    author = [NSMutableDictionary dictionaryWithDictionary:person];
    
    // remove all objects
    
    [author removeAllObjects];
    
    NSLog(@"author:- %@",author);
    
}


-(NSDictionary *) createDictionary
{
    NSDictionary *aDict = [[NSDictionary alloc]initWithObjectsAndKeys:@"Ashish",@"first_name",@"Pisey",@"last_name",[NSNumber numberWithInt:25],@"age", nil];
    
    return aDict;
}


@end
