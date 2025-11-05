<!-- Registration Form HTML -->
<!DOCTYPE html>
<html>
<head>
  <title>Registration Form</title>
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-color: #f2f2f2;
    }
    .container {
      padding: 16px;
      background-color: white;
      max-width: 400px;
      margin: 50px auto;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.06);
    }
    h1 {
      text-align: center;
      color: #04AA6D;
    }
    input[type=text], input[type=email], input[type=password] {
      width: 100%;
      padding: 10px;
      margin: 8px 0 15px 0;
      display: inline-block;
      border: 1px solid #ddd;
      border-radius: 5px;
      background: #f1f1f1;
      font-size: 16px;
    }
    input[type=text]:focus, input[type=email]:focus, input[type=password]:focus {
      background-color: #ddd;
      outline: none;
    }
    .registerbtn {
      background-color: #04AA6D;
      color: white;
      padding: 16px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      opacity: 0.9;
      border-radius: 5px;
      font-size: 18px;
    }
    .registerbtn:hover {
      opacity: 1;
    }
    a {
      color: dodgerblue;
    }
    .signin {
      background-color: #f1f1f1;
      text-align: center;
      padding: 10px;
      border-radius: 5px;
      margin-top: 20px;
    }
    label {
      font-weight: bold;
      margin-bottom: 5px;
      display: block;
    }
    hr {
      border: 1px solid #f1f1f1;
      margin-bottom: 25px;
    }
  </style>
</head>
<body>

  <form action="/submit-form" method="post">
    <div class="container">
      <h1>Register</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="name">Name</label>
      <input type="text" placeholder="Enter Name" name="name" required>

      <label for="email">Email</label>
      <input type="email" placeholder="Enter Email" name="email" required>

      <label for="password">Password</label>
      <input type="password" placeholder="Enter Password" name="password" required>

      <label for="password-repeat">Repeat Password</label>
      <input type="password" placeholder="Repeat Password" name="password-repeat" required>
      
      <hr>
      <button type="submit" class="registerbtn">Register</button>
    </div>
    <div class="container signin">
      <p>Already have an account? <a href="#">Sign in</a>.</p>
    </div>
  </form>
</body>
</html>

