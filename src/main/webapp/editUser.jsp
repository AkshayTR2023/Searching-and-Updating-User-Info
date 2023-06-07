<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit User</title>
     <script>
        function confirmSave() {
            return confirm("Are you sure you want to save the edits?");
        }
    </script>
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
      text-align: center;
    }
    h2 {
      color: #333;
      margin-top: 0;
    }
    input[type="text"] {
      padding: 10px;
      width: 100%;
      box-sizing: border-box;
      margin-bottom: 10px;
    }
    button {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
      font-size: 14px;
      text-decoration: none;
    }
    button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
    <form action="updateUser" onsubmit="return confirmSave()">
        Name: <input type="text" name="name" value="<%= ((com.example.User) request.getAttribute("user")).getName() %>"><br>
        Address: <input type="text" name="address" value="<%= ((com.example.User) request.getAttribute("user")).getAddress() %>"><br>
        Email: <input type="text" name="email" value="<%= ((com.example.User) request.getAttribute("user")).getEmail() %>"><br>
        <input type="hidden" name="id" value="<%= ((com.example.User) request.getAttribute("user")).getId() %>">
        <input type="submit" value="Save">
    </form>
</body>
</html>
