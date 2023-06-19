Select madt, tendt from DeTai where detai.madt = (
	Select madt from huongdan inner join SinhVien on huongdan.masv = sinhvien.masv 
		Group by huongdan.madt
		Having COUNT(huongdan.madt) > 2
)

Select madt, tendt from detai where kinhphi = (SELECT MAX(kinhphi) FROM detai)


Select khoa.tenkhoa, COUNT(SinhVien.masv) as 'so sv' from Khoa inner join sinhvien on 
	khoa.makhoa = sinhvien.makhoa
	Group by khoa.tenkhoa