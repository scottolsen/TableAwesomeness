//
//  Event.m
//  bikeiowa-ios
//
//  Created by Scott Olsen on 1/19/13.
//  Copyright (c) 2013 Scott Olsen. All rights reserved.
//

#import "Event.h"

@implementation Event
@synthesize rideName = _rideName, startDate = _startDate, startTime = _startTime, rideLocation = _rideLocation, rideDesc = _rideDesc, city = _city, state = _state, zip = _zip, eventType = _eventType, rideRoute = _rideRoute, registration = _registration, costs = _costs, distance = _distance, rideStartAddress = _rideStartAddress, contactPerson = _contactPerson, email1 = _email1, contactPhone = _contactPhone, numberRiders = _numberRiders, terrain = _terrain, riderType = _riderType, host = _host, rideId = _rideId;

-(id)initWithRideName:(NSString *)rideName startDate:(NSString *)startDate startTime:(NSString *)startTime rideLocation:(NSString *)rideLocation rideDesc:(NSString *)rideDesc city:(NSString *)city state:(NSString *)state zip:(NSString *)zip eventType:(NSString *)eventType rideRoute:(NSString *)rideRoute registration:(NSString *)registration costs:(NSString *)costs distance:(NSString *)distance rideStartAddress:(NSString *)rideStartAddress contactPerson:(NSString *)contactPerson email1:(NSString *)email1 contactPhone:(NSString *)contactPhone numberRiders:(NSString *)numberRiders terrain:(NSString *)terrain riderType:(NSString *)riderType host:(NSString *)host rideId:(NSString *)rideId
{
    self = [super init];
    if(self)
    {
        _rideName = rideName;
        _startDate = startDate;
        _startTime = startTime;
        _rideLocation = rideLocation;
        _rideDesc = rideDesc;
        _city = city;
        _state = state;
        _zip = zip;
        _eventType = eventType;
        _rideRoute = rideRoute;
        _registration = registration;
        _costs = costs;
        _distance = distance;
        _rideStartAddress = rideStartAddress;
        _contactPerson = contactPerson;
        _email1 = email1;
        _contactPhone = contactPhone;
        _numberRiders = numberRiders;
        _terrain = terrain;
        _riderType = riderType;
        _host = host;
        _rideId = rideId;
        
        return self;
    }
    return nil;
}

-(NSString*) getDescription {
    return ([self.rideDesc isEqualToString:@""] ? @
            "This event has no description." : self.rideDesc);
}

-(NSString*) getRoute {
   return ([self.rideRoute isEqualToString:@""] ? @
           "This event has no route details." : self.rideRoute);
}

-(NSString*) getRegistration {
    return ([self.registration isEqualToString:@""] ? @
            "This event has no registration details." : self.registration);
}

@end
