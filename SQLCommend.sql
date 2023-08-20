select d.masp, f.tensp,f.donvitinh,d.soluongsp ,m.soluonghb,m.giahb,f.giavon,d.thanhtiensp,m.thanhtienhb
from HoaDon c inner join ChiTietHoaDon d on c.mshd=d.mshd inner join ChiTietHBBTL m on c.mshd=m.mshd inner join SanPham f on d.masp=f.masp inner join HangBanBiTraLai e on m.mhbbtl= e.mhbbtl
where e.ngaylapp between '11/08/2022' and '12/27/2022'

select c.ngaylaphd,c.mshd,c.diengiaihd,d.soluongsp,d.giasp,d.thuesp,d.thanhtiensp,d.masp
from HoaDon c inner join ChiTietHoaDon d on c.mshd=d.mshd inner join SanPham f on d.masp=f.masp
where c.ngaylaphd between'12/14/2022' and '12/27/2022' and d.masp='BHSTH'

select c.ngaylaphd,c.mshd,c.diengiaihd,d.soluongsp,d.giasp,d.thuesp ,d.thanhtiensp
from HoaDon c inner join ChiTietHoaDon d on c.mshd=d.mshd
where c.ngaylaphd between'11/12/2022' and'12/27/2022' and d.masp='BMLG502N'

select d.tenkh,c.thanhtiensp from HoaDon e inner join ChiTietHoaDon c on e.mshd=c.mshd inner join KhachHang d 
on e.makh=d.makh where d.makh='1001'
select c.ngaylaphd,c.mshd,d.makh,d.tenkh,c.diengiaihd,n.soluongsp,n.masp,n.thuesp,n.giasp,n.thanhtiensp
 from HoaDon c inner join KhachHang d on c.makh=d.makh inner join ChiTietHoaDon n on c.mshd=n.mshd

 Create view VwChiTietSanPham as
 select d.mshd,f.tensp,d.soluongsp,d.giasp,d.thuesp,d.thanhtiensp 
 from  ChiTietHoaDon d inner join SanPham f on d.masp=f.masp

 Drop view VwChiTietSanPham
 select*from VwChiTietSanPham where mshd='23122022214049'

 select c.mshd,d.tenkh,c.ngaylaphd,d.diachi,d.email,d.msthue,d.sdt
 from HoaDon c inner join KhachHang d on c.makh=d.makh inner join ChiTietHoaDon f on c.mshd=f.mshd
 where c.ngaylaphd between '{}' and '{}'
 select c.ngaylaphd,c.mshd,d.makh,d.tenkh,c.diengiaihd,n.soluongsp,n.masp,n.thuesp,n.giasp,n.thanhtiensp
 from HoaDon c inner join KhachHang d on c.makh=d.makh inner join ChiTietHoaDon n on c.mshd=n.mshd 
 where c.ngaylaphd between '12/01/2022' and '12/30/2022' and c.makh='1002'
 Create View VwSptheoKH as
 select* from VwSptheoKH

Create View VwLoiNhuan as
select d.masp, f.tensp,f.donvitinh,d.soluongsp ,m.soluonghb,m.giahb,f.giavon,d.thanhtiensp,m.thanhtienhb,c.ngaylaphd
from HoaDon c inner join ChiTietHoaDon d on c.mshd=d.mshd inner join ChiTietHBBTL m on c.mshd=m.mshd inner join SanPham f on d.masp=f.masp inner join HangBanBiTraLai e on m.mhbbtl= e.mhbbtl
select * from VwLoiNhuan
