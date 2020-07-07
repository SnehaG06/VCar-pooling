<Html>
    <title>Add new product</title>
    <style>
        body{
            background-image: url(https://image.freepik.com/free-photo/blurred-background-supermarket-aisle-with-products_62890-121.jpg);
            background-size: cover;
            background-attachment: local;
        }
       .lab input[type="text"]{
            
            width: 200px;
            height: 50px;
            border-radius: 5px;
        }
       
        .lab{
            width: 500px;
            margin-left: 800px;
            margin-top: 200px;
            height: 400px;
            padding-top: 20px;
            padding-left: 10px;
            background-color: rgba(0,0,0,0.5);
            border-radius: 15px;
        }
        .lab label{
            color:  black;
            font-size: 30px;
            font-weight:300; 
        }
        .lab input[type="submit"]{
            width: 100px;
            height: 40px;
            border-radius: 5px;
            font-size: 20px; 
            margin-left: 200px;
        }
    </style>
    <body>
        <div class="lab">
            <form action=insert method="post">
            <label for="employee_name">Employee Name</label>
            <input type="text"  id="employee_name" name="employee_name" placeholder="  employee name" required><br><br>
<label for="employee_id" >Employee Id</label>
            <input type="text"  id="employee_id" name="employee_id" placeholder="employee id" required><br><br>
<label  for="source">Source</label>
<input type="text"  id="source" name="source" placeholder="source" required><br><br>
<label for="destination">Destination</label>
<input type="text" id="destination" name="destination" placeholder="destination" required><br><br>

<label  for="rate">Rate </label>
<input type="text"  id="rate" name="rate" placeholder="  rate per unit" required><br><br>
<label for="gst">Tax</label>
<input type="text"  id="gst" name="gst%" placeholder="  gst% of product" required><br><br>
                <input type="submit" value="Add">
            </form>
        </div>
    </body>
</Html>