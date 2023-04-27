namespace my.per;       // data dosyası olan csv path
using { managed } from '@sap/cds/common';




entity Permission {
    key persNo: Integer @Common.Label: 'Personel Numarsı';
    persName:String @Common.Label: 'Personel Adı';
    perSumDay:Integer @Common.Label: 'Toplam Izin Gun';
    persReminaderDay:Integer @Common.Label: 'Kalan Izin Gun';
    persApprovalDay:Integer @Common.Label: 'Onaylanan Izin Gun';
    persUnapprovedDay:Integer @Common.Label: 'Onaylanmayan Izin Gun';
    detail:Association to many Detail on detail.perID = $self;
}


// entity Supplier {
//     key detail_ID: Integer ;
//     supplier:Association to Permission;
// }

 entity Detail{
    key detail_ID: Integer @Common.Label: 'Detail ID';
    perID:Association to Permission;
    Status: String @Common.Label: 'Izın Durumu';
    perCreateDate:Date @Common.Label: 'Izın Tarihi';
    perCreateTime:Integer @Common.Label: 'Izın Saati';
    perDay:Integer @Common.Label: 'Izın Gunlerı';
    perDesc:String @Common.Label: 'Izın Acıklaması';
}