declare @poczatek_dat as date = '2020-01-01';
declare @koniec_dat as date = '2020-12-31';	

while @poczatek_dat < @koniec_dat
begin
	insert into daty(
		dzien
	)	
	values(
		cast(@poczatek_dat as datetime)
	)
	set @poczatek_dat = dateadd(day, 1, @poczatek_dat)
end

create table daty(
 dzien datetime
)

select * from daty;