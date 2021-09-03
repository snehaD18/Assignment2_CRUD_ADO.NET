CREATE DATABASE Product_details 

Create table Product(          
    Id int IDENTITY(1,1) NOT NULL,          
    ProductName varchar(50) NOT NULL,          
    ProductDescription varchar(50) NOT NULL,  
    Price varchar(30) NOT NULL,   
)  

select * from Product

Create procedure spAddProduct          
(          
    @ProductName VARCHAR(50),           
    @ProductDescription VARCHAR(50),          
    @Price VARCHAR(30)       
)          
as           
Begin           
    Insert into Product (ProductName,ProductDescription,Price)           
    Values (@ProductName,@ProductDescription,@Price)           
End  


Create procedure spUpdateProduct            
(            
    @Id INTEGER ,          
    @ProductName VARCHAR(50),           
    @ProductDescription VARCHAR(50),          
    @Price VARCHAR(30)         
           
)            
as            
begin            
   Update Product             
   set ProductName=@ProductName,            
   ProductDescription=@ProductDescription,            
   Price=@Price          
   where Id=@Id            
End  

Create procedure spDeleteProduct           
(            
   @Id int            
)            
as             
begin            
   Delete from Product where Id=@Id            
End  

Create procedure spGetAllProduct        
as        
Begin        
    select *        
    from Product     
    order by Id   
End  

select * from product