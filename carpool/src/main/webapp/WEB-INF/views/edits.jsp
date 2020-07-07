<html>
    
<title>home</title>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <style> 
        body{
            margin-top: 220px;
            background-image: url(https://image.shutterstock.com/image-photo/empty-wood-table-top-on-260nw-1140429617.jpg);
            background-size: cover;
            background-attachment: local;
        }
        
        .image{
            margin-left: 900px;
            margin-top: 40px;
            margin-bottom: 1px;
            font-family: 'Roboto', cursive;
            font-size: 50px;
            
            font-weight: 500;
        }
        .gen{
            margin-left: 900px;
            margin-top: 20px;
            width: 300px;
            height: 50px;
            font-family: monospace;
            font-size: 20px;
            border-radius: 10px;
        }
        .gety{
        font-family: 'Dancing Script', cursive;
        font-size: 30px;
         margin-left: 50px;
        }
        
        .edit{
            border-radius: 10px;
            margin-left: 900px;
            margin-top: 40px;
            font-size: 20px;
            width: 300px;
            height: 50px;
            font-family: monospace;
        }
    </style>
    <body>
        <div class="image">Car Pooling<br> <div class ="gety"></div></div>
        
        <form action="add">
        <input class ="edit "type="submit"  value="Add Employee"><br></form>
        
        <form action="remove">
        <input class ="edit "type="submit"  value="Remove Employee"><br></form>
        
        <form action="update">
        <input class ="edit "type="submit"  value="Update Employee Details"><br></form>
        
        <form action="/">
        <input class ="edit "type="submit"  value="Back to Home"><br></form>
    </body>
</html>