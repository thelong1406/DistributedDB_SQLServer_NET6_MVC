# CSDLPT BTL SQL Server .NET 6.0 CORE MVC
## Bài tập lớn môn Cơ sở dữ liệu phân tán

## Consisting of two parts: Application & Database

## Required:
* .NET 6.0. Link download: https://dotnet.microsoft.com/en-us/download/dotnet/6.0
* Dapper. NuGet: ```PM> Install-Package Dapper```
* SQL Client. NuGet: ```PM> Install-Package Microsoft.Data.SqlClient```
* Microsoft SQL Server (Developer): Start SQL Server Agent
        
## Installation:

### Aplication:
```git clone {thisisrepourl}```
### Database:
* Step 1: Create 4 SQL Stand alone (1 Publisher and 3 Subscribers) With SQL Server Agent service, and Auth with SQL Authentication.
* Step 2: Run scripts in ```/SQL CODE/Create_Database_View_Function_Store_Procedure_DBRole_Trigger.sql```.
* Step 3: Create ```Replication``` in each Subscribers run under SQL Authentication. Filter rows with table `chi_nhanh` `WHERE ma_chi_nhanh = '{each value in column ma_chi_nhanh of table chi_nhanh}'`
* Step 4: Create `Link Server` to connect each others.
* Step 5: Insert example records and sql login by using `Store Procedure`.

After all, insert conntection string of Publisher to file `appsettings.json`.
