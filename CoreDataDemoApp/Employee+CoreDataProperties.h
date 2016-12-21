//
//  Employee+CoreDataProperties.h
//  CoreDataDemoApp
//
//  Created by Student-004 on 06/12/16.
//  Copyright © 2016 Divesh. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *empId;
@property (nullable, nonatomic, retain) NSString *empName;
@property (nullable, nonatomic, retain) NSString *empDepartment;
@property (nullable, nonatomic, retain) NSNumber *empSal;
@property (nullable, nonatomic, retain) Department *workFor;

@end

NS_ASSUME_NONNULL_END
