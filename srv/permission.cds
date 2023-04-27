using my.per from '../db/schema'; //scheama yolunu tanımılıyoruz

service first {
        // entity name                 schema path     
    entity permission as projection on per.Permission;
    entity detail as projection on per.Detail;
    //  entity supplier as projection on per.Supplier;

}