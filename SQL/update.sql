DECLARE @date_of_birth char(50);
DECLARE @sex char(15);
DECLARE @marital_status char(15);
DECLARE @religion char(15);
DECLARE @citizenship char(40);
DECLARE @place_of_birth char(30);
DECLARE @occupation char(40);
DECLARE @education_level char(60);
DECLARE @ethnic_origin char(30);
DECLARE @last_updated int;
DECLARE @last_login int;
DECLARE @updated_by char(40);
DECLARE @first_name char (40);
DECLARE @lastName char(40);
DECLARE @country_of_birth char (40);
DECLARE @phone char (16);
DECLARE @email char (50);
DECLARE @country_of_origin char (40);
DECLARE @city_of_origin char (40);
DECLARE @address_of_origin char (60);
DECLARE @special_needs varchar(max);
DECLARE @depature_date char(50);

UPDATE Personal_Info
 SET Date_of_Birth = @date_of_birth,
    Sex = @sex,
    Marital_Status = @marital_status,
    Religion = @religion,
    Citizenship = @citizenship,
    Photograph = @photograph,
    Place_of_Birth = @place_of_birth,
    Occupation = @occupation,
    Education_Level = @education_level,
    Ethnic_Origin = @ethnic_origin,
    Last_Updated = @last_updated,
    Updated_By = @updated_by,
    Last_Login = @last_login,
    First_Name = @first_name,
    Last_Name = @last_name,
    Active_Status = 1,
    Country_of_Birth = @country_of_birth,
    Phone = @phone,
    Email = @email,
    Country_of_Origin = @country_of_origin,
    City_of_Origin = @city_of_origin,
    Address_of_Origin = @address_of_origin,
    Special_Needs = @special_needs,
    Depature_Date = @depature_date
;

UPDATE (SELECT TOP 1 *
FROM Location
WHERE ID = @ID
ORDER BY Date_Arrived DESC)
SET Country = @country,
City = @city,
Street_Address = @street_address
;
