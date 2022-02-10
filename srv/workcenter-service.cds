using { sap.capire.wc as my } from '../db/workCenterSchema';
service WorkCenterService {
    entity WorkCenters @readonly as projection on my.WorkCenters;
    // @readonly entity WorkCenters as SELECT from my.WorkCenters {*,
    //     userWorkCenters.userId as userWorkCenters
    // };
    entity UserWorkCenter @readonly as projection on my.UserWorkCenter;
    entity UserData @readonly as projection on my.UserData;
}