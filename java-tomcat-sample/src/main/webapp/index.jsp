<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Simple Addition</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      margin-top: 100px;
    }
    input {
      margin: 5px;
      padding: 5px;
      width: 100px;
    }
    button {
      padding: 6px 12px;
    }
    p {
      font-weight: bold;
    }
  </style>
</head>
<body>

  <h2>Add Two Numbers</h2>

  <input type="number" id="num1" placeholder="First number">
  <input type="number" id="num2" placeholder="Second number">
  <br>
  <button onclick="addNumbers()">Add</button>

  <p id="result"></p>

  <script>
    function addNumbers() {
      const n1 = parseFloat(document.getElementById('num1').value);
      const n2 = parseFloat(document.getElementById('num2').value);
      if (isNaN(n1) || isNaN(n2)) {
        document.getElementById('result').innerText = "Please enter valid numbers.";
      } else {
        const sum = n1 + n2;
        document.getElementById('result').innerText = "Sum: " + sum;
      }
    }
  </script>

</body>
</html>
