use InventorDB

create view VPurchaseinfo
as
select pm.PurchaseId, pm.PurchaseDate,s.SupplierName,c.CategoryName,i.ItemName,pd.Qty*pd.Rate as total from PurchaseMaster as pm
inner join PurchaseDetails as pd on pd.PurchaseId=pm.PurchaseId
inner join Supplier as s on pm.SupplierId=s.SupplierId
inner join Item as i on pd.ItemId=i.ItemId
inner join Category as c on i.CategoryId=c.CategoryId

create view VSalesInfo
as
select sm.SalesId,sm.SalesDate,cu.CustomerName,c.CategoryName,i.ItemName ,sd.Qty*sd.Rate as total from SalesMaster as 
sm inner join SalesDetails as sd on sm.SalesId=sd.SalesId
inner join Customer as cu on sm.CustomerId=cu.CustomerId
inner join Item as i on sd.ItemId=i.ItemId
inner join Category as c on i.CategoryId=c.CategoryId

select COUNT(*) from VSalesInfo
select COUNT(*) from VPurchaseinfo
select avg(total) from VSalesInfo
select max(total) from VPurchaseinfo
select * from VPurchaseinfo where ItemName='Tv'
select * from VPurchaseinfo where ItemName='Ac'
select ItemName,sum(total) from VPurchaseinfo group by ItemName
select * from VPurchaseinfo
select * from VSalesInfo
select * from Supplier where SupplierId in (select SupplierId from PurchaseMaster where PurchaseId in(select PurchaseId from PurchaseDetails where ItemId in(select ItemId from Item where ItemName='Tv')))
select * from Item where ItemName in ('TV','AC','fish')