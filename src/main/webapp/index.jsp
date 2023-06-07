<!DOCTYPE html>
<html>
<head>
  <title>User Search</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }
    .container {
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    h2 {
      color: #333;
      margin-top: 0;
    }
    form {
      margin-top: 20px;
    }
    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }
    input[type="text"] {
      width: 200px;
      padding: 5px;
      font-size: 14px;
    }
    input[type="submit"] {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
      font-size: 14px;
    }
  </style>
</head>
<body>
  <div class="container">
  <h1><center>Welcome!</center></h1>
    <h3>Enter User ID to update Details</h3>
    <form action="findUser">
	<input type="text" name="id" required placeholder="User ID"><br><br>
      <input type="submit" value="Submit">
    </form>
  </div>
</body>
</html>
