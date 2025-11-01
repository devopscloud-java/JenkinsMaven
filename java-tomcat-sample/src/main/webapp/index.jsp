<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Simple Login Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .login-container {
      background-color: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
      width: 300px;
      text-align: center;
    }
    input {
      width: 90%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    button {
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      border: none;
      color: white;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }
    button:hover {
      background-color: #45a049;
    }
    h2 {
      margin-bottom: 20px;
    }
  </style>
</head>
<body>

  <div class="login-container">
    <h2>Login</h2>
    <form onsubmit="return validateLogin()">
      <input type="text" id="username" placeholder="Username" required><br>
      <input type="password" id="password" placeholder="Password" required><br>
      <button type="submit">Login</button>
    </form>
    <p id="message" style="color:red; font-weight:bold;"></p>
  </div>

  <script>
    function validateLogin() {
      const user = document.getElementById("username").value;
      const pass = document.getElementById("password").value;

      if (user === "admin" && pass === "admin123") {
        document.getElementById("message").style.color = "green";
        document.getElementById("message").innerText = "Login successful!";
      } else {
        document.getElementById("message").innerText = "Invalid username or password!";
      }
      return false; // prevent form submission
    }
  </script>

</body>
</html>
