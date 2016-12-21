//
//  Department+CoreDataProperties.h
//  CoreDataDemoApp
//
//  Created by Student-004 on 06/12/16.
//  Copyright © 2016 Divesh. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Department.h"

NS_ASSUME_NONNULL_BEGIN

@interface Department (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *depatID;
@property (nullable, nonatomic, retain) NSString *departName;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *containsEmp;

@end

@interface Department (CoreDataGeneratedAccessors)

- (void)addContainsEmpObject:(NSManagedObject *)value;
- (void)removeContainsEmpObject:(NSManagedObject *)value;
- (void)addContainsEmp:(NSSet<NSManagedObject *> *)values;
- (void)removeContainsEmp:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
