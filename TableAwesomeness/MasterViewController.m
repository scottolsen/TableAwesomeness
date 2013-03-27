//
//  MasterViewController.m
//  TableAwesomeness
//
//  Created by Scott Olsen on 3/26/13.
//  Copyright (c) 2013 Scott Olsen. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "AFJSONRequestOperation.h"
#import "Event.h"

@implementation MasterViewController
@synthesize eventList, eventTable;

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)getEvents
{
    NSURL *url = [NSURL URLWithString:@"http://bikeiowa-api.heroku.com/events.json"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id jsonArray) {
        
        for(NSDictionary *item in jsonArray) {
            if([jsonArray indexOfObject:item] == 0 ){
                
                //                [prefs setObject:[item objectForKey:@"NextMonthName"] forKey:@"NextMonthName"];
                //                [prefs setObject:[item objectForKey:@"PreviousMonthName"] forKey:@"PreviousMonthName"];
                //                [prefs setObject:[item objectForKey:@"PreviousMonthDate"] forKey:@"PreviousMonthDate"];
                //                [prefs setObject:[item objectForKey:@"NextMonthDate"] forKey:@"NextMonthDate"];
                //                [prefs setObject:[item objectForKey:@"FullMonthName"] forKey:@"FullMonthName"];
            }
            else{
                //                NSLog(@"%@", [item objectForKey:@"RideDesc"]);
                [self addEventWithRideName:[item objectForKey:@"RideName"] startDate:[item objectForKey:@"StartDate"]startTime:[item objectForKey:@"StartTime"] rideLocation:[item objectForKey:@"RideLocation"] rideDesc:[item objectForKey:@"RideDesc"] city:[item objectForKey:@"City"] state:[item objectForKey:@"State"]zip:[item objectForKey:@"Zip"] eventType:[item objectForKey:@"eventtype"] rideRoute:[item objectForKey:@"RideRoute"] registration:[item objectForKey:@"Registration"]  costs:[item objectForKey:@"Costs"]  distance:[item objectForKey:@"Distance"]  rideStartAddress:[item objectForKey:@"RideStartAddress"]  contactPerson:[item objectForKey:@"ContactPerson"]  email1:[item objectForKey:@"Email1"]  contactPhone:[item objectForKey:@"ContactPhone"]  numberRiders:[item objectForKey:@"noriders"]  terrain:[item objectForKey:@"terrain"]  riderType:[item objectForKey:@"ridertype"] host:[item objectForKey:@"Host"] rideId:[item objectForKey:@"RideID"]];
            }
            [eventTable reloadData];
        }
        
    } failure:nil];
    [operation start];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    eventList = [[NSMutableArray alloc]init];
    [self getEvents];
    [eventTable reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return eventList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Event *eventAtIndex = [eventList objectAtIndex:indexPath.row];
    
    cell.textLabel.text = eventAtIndex.rideName;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        //        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        //        NSDate *object = _objects[indexPath.row];
        //        [[segue destinationViewController] setDetailItem:object];
    }
}



- (void)setEventList:(NSMutableArray *)newList{
    if(eventList != newList){
        eventList = [newList mutableCopy];
    }
}

-(void)addEventWithRideName:(NSString *)rideName startDate:(NSString *)startDate startTime:(NSString *)startTime rideLocation:(NSString *)rideLocation rideDesc:(NSString *)rideDesc city:(NSString *)city state:(NSString *)state zip:(NSString *)zip eventType:(NSString *)eventType rideRoute:(NSString *)rideRoute registration:(NSString *)registration costs:(NSString *)costs distance:(NSString *)distance rideStartAddress:(NSString *)rideStartAddress contactPerson:(NSString *)contactPerson email1:(NSString *)email1 contactPhone:(NSString *)contactPhone numberRiders:(NSString *)numberRiders terrain:(NSString *)terrain riderType:(NSString *)riderType host:(NSString *)host rideId:(NSString *)rideId{
    Event *event;
    event = [[Event alloc] initWithRideName:rideName startDate:startDate startTime:startTime rideLocation:rideLocation rideDesc:rideDesc city:city state:state zip:zip eventType:eventType rideRoute:rideRoute registration:registration costs:costs distance:distance rideStartAddress:rideStartAddress contactPerson:contactPerson email1:email1 contactPhone:contactPhone numberRiders:numberRiders terrain:terrain riderType:riderType host:host rideId:rideId];
    [eventList addObject:event];
}

@end
