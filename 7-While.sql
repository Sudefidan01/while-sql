--While
--Sql sorgu dilinde c# programlama dilinde de oldu�u gibi ko�ula ba�l� olarak baz� sql sorgu komutlar�n� tekrarlatabiliriz
--While mekanizmas� ko�ul sonucu do�rulu�u sa�lad��� s�rece i�erisindeki kod blo�unu i�leme al�r

--Syntax
--While(<ko�ul>)
--begin
--	<Tekrarlanmas� istenen kod| sorgu>
--end

--�rnek
--10'dan geriye do�ru yazd�ran bir while d�ng�s� yazal�m
declare @sayi int
set @sayi=10

while(@sayi>0)
begin
	print(@sayi)
	set @sayi= @sayi-1
end

--Break => Break komutu d�ng� mekanizmas�n� sonland�rmak i�in kullan�l�r

--�rnek
--1'den 10'a kadar yazd�ran bir while d�ng�s� yazal�m .Fakat d�ng�m�z 5 ' e geldi�inde d�ng� mekanizmas� sonlans�n
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
