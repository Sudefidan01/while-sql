--While
--Sql sorgu dilinde c# programlama dilinde de olduðu gibi koþula baðlý olarak bazý sql sorgu komutlarýný tekrarlatabiliriz
--While mekanizmasý koþul sonucu doðruluðu saðladýðý sürece içerisindeki kod bloðunu iþleme alýr

--Syntax
--While(<koþul>)
--begin
--	<Tekrarlanmasý istenen kod| sorgu>
--end

--Örnek
--10'dan geriye doðru yazdýran bir while döngüsü yazalým
declare @sayi int
set @sayi=10

while(@sayi>0)
begin
	print(@sayi)
	set @sayi= @sayi-1
end

--Break => Break komutu döngü mekanizmasýný sonlandýrmak için kullanýlýr

--Örnek
--1'den 10'a kadar yazdýran bir while döngüsü yazalým .Fakat döngümüz 5 ' e geldiðinde döngü mekanizmasý sonlansýn
declare @sayac int
set @sayac=1

while (@sayac<10)
begin
	print(@sayac)
		if(@sayac=5)
			begin
				break
			end	
	set @sayac=@sayac+1
end
