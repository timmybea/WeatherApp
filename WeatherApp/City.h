//
//  City.h
//  WeatherApp
//
//  Created by Tim Beals on 2016-11-09.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic) NSString *cityName;

- (instancetype)initWithCityName:(NSString *)cityName weatherDescription:(NSString *)weather andTemperature:(int)temperature;

@end
