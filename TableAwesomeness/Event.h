//
//  Event.h
//  bikeiowa-ios
//
//  Created by Scott Olsen on 1/19/13.
//  Copyright (c) 2013 Scott Olsen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property (nonatomic, copy) NSString *rideName;
@property (nonatomic, copy) NSString *startDate;
@property (nonatomic, copy) NSString *startTime;
@property (nonatomic, copy) NSString *rideLocation;
@property (nonatomic, copy) NSString *rideDesc;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *zip;
@property (nonatomic, copy) NSString *eventType;
@property (nonatomic, copy) NSString *rideRoute;
@property (nonatomic, copy) NSString *registration;
@property (nonatomic, copy) NSString *costs;
@property (nonatomic, copy) NSString *distance;
@property (nonatomic, copy) NSString *rideStartAddress;
@property (nonatomic, copy) NSString *contactPerson;
@property (nonatomic, copy) NSString *email1;
@property (nonatomic, copy) NSString *contactPhone;
@property (nonatomic, copy) NSString *numberRiders;
@property (nonatomic, copy) NSString *terrain;
@property (nonatomic, copy) NSString *riderType;
@property (nonatomic, copy) NSString *host;
@property (nonatomic, copy) NSString *rideId;

-(id)initWithRideName:(NSString *)rideName startDate:(NSString *)startDate startTime:(NSString *)startTime rideLocation:(NSString *)rideLocation rideDesc:(NSString *)rideDesc city:(NSString *)city state:(NSString *)state zip:(NSString *)zip eventType:(NSString *)eventType rideRoute:(NSString *)rideRoute registration:(NSString *)registration costs:(NSString *)costs distance:(NSString *)distance rideStartAddress:(NSString *)rideStartAddress contactPerson:(NSString *)contactPerson email1:(NSString *)email1 contactPhone:(NSString *)contactPhone numberRiders:(NSString *)numberRiders terrain:(NSString *)terrain riderType:(NSString *)riderType host:(NSString *)host rideId:(NSString *)rideId;

-(NSString*) getDescription;
-(NSString*) getRoute;
-(NSString*) getRegistration;
-(void) getEventsWithSuccessBlock:(void (^)())successBlock failure:(void(^)())failure;

@end
