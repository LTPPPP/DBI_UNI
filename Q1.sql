create table Category(
	CategoryID char(9) primary key,
	[Description] varchar(50),
	NumSeats int,
	MadeinBy varchar(35)
)

create table Car(
	CarID char(9) primary key,
	[Name] varchar(50),
	Model varchar(50),
	DailyRate int,
	FuelType varchar(15),
	FuelConsum float,
	Avaiable bit
)

create table Customer(
	CustID char(9) primary key,
	FirstName varchar(50),
	LastName varchar(50),
	CustPhone varchar(15),
	IdentificationNum varchar(12),
	CustAddr varchar(50)
)

create table belong(
	CategoryID char(9) foreign key references Category,
	CarID char(9) foreign key references Car
)

create table Rental(
	FuelCharge float,
	RentRate int,
	StartDate date,
	EndDate date,
	CarID char(9) foreign key references Car,
	CustID char(9) foreign key references Customer
)

