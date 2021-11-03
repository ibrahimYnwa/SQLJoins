CREATE DATABASE Task
USE Task

----self join 

CREATE TABLE MusicInstruments(
    Id Int identity primary key,
	Name nvarchar(250) NOT NULL,
	DependOn int 
)
Select m1.Name,m2.Name 'Depend On' FROM MusicInstruments m1
LEFT JOIN
MusicInstruments m2
on 
m1.DependOn=m2.Id

--cross join (Beverage table yaratmisdim amma pozuldu ona gore burda gorsenmir)
USE Task

CREATE TABLE Volumes(
  Id int identity primary key,
  Size decimal(10,2)
 )
 SELECT NAME,SIZE FROM BEVERAGE
 CROSS JOIN 
 VOLUMES

 --non equal join 

 USE Task

 CREATE TABLE Grades(
    Id int identity primary key,
	Letter char(10),
	MinGrade int check(MinGrade>0),
	MaxGrade int check(MaxGrade>0)
 )
 CREATE TABLE Markets(
   Id int identity primary key,
   Name nvarchar(150) NOT NULL,
   Area int check(Area>0)
 )
 SELECT Name,Area,Letter 'Mark' FROM Markets mk
 JOIN Grades gd
 ON
 mk.Area>=gd.MinGrade and mk.Area<=gd.MaxGrade







