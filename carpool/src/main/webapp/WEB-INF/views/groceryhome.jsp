<html>
    
<title>home</title>
     <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <style> 
        body{
            margin-top: 220px;
            background-image: url(https://static.vecteezy.com/system/resources/previews/000/144/447/non_2x/carpool-icons-vector.png);
            background-size: cover;
            background-attachment: local;
        }
        
        .image{
            margin-left: 500px;
            margin-top: 800px;
            margin-bottom: 1px;
            font-family: 'Roboto', cursive;
            font-size: 50px;
            font-color:red;
            
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
          margin-right: 20px;
            margin-top: -50px;
        font-family: 'Dancing Script', cursive;
        font-size: 30px;
        margin-left: 50px;
        font-family: 'Roboto', cursive;
            font-size: 50px;
            font-color:red;
        }
        
        .add{
            border-radius: 10px;
            margin-left: 900px;
            margin-top: 40px;
            font-size: 20px;
            width: 300px;
            height: 50px;
            font-family: monospace;
        }
        .admin
        {
       
            margin-left: 500px;
            margin-top: 100px;
            width: 300px;
            height: 50px;
            font-family: monospace;
            font-size: 20px;
            border-radius: 10px;
        }
    </style>
    <body>
        <div class="image"><br></div> <div class ="gety">Car Pooling System</div>
        <form action="admin">
        <label  for="username">user name</label>
         <input type="text"  id="username" name="username" placeholder="username" required><br><br>
         <label for="name">Password</label>
            <input type="text"  id="password" name="password" placeholder="password" required><br><br>
            <input class ="add "type="submit"  value="Admin"><br></form>
            
        <form action="gen">
        <label  for="username">user name</label>
         <input type="text"  id="username" name="username" placeholder="username" required><br><br>
         <label for="name">Password</label>
            <input type="text"  id="password" name="password" placeholder="password" required><br><br>
        <input class="gen" type="submit"  value="Employee as Rider"><br></form>
        
        <form action="view">
        <input class="gen" type="submit"  value="Employee as Traveller"><br></form>
    </body>
</html>