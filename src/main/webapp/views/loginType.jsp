<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Select Login Type</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('../images/pro3.png'); /* Update path if necessary */
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }
        .login-type-section {
            width: 350px;
            padding: 30px 20px;
            background-color: rgba(255, 255, 255, 0.95); /* Light white with transparency */
            border-radius: 10px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            position: relative;
        }
        .login-type-section h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333; /* Darker text for contrast */
        }
        .login-type-section label {
            display: block;
            text-align: left;
            margin: 10px 0 5px;
            font-size: 14px;
            color: #555;
        }
        .login-type-section select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            background-color: rgba(255, 255, 255, 0.9);
        }
        .login-type-section button {
            width: 100%;
            padding: 12px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .login-type-section button:hover {
            background-color: #0056b3;
        }
        .close-button {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 16px;
            color: #555;
            text-decoration: none;
            background-color: transparent;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }
        .close-button:hover {
            color: #333;
        }
    </style>
    <script>
        function redirectBasedOnLoginType() {
            var loginType = document.getElementById('loginType').value;
            if (loginType === 'admin') {
                window.location.href = '/adminLogin';  // Redirect to admin login page
            } else if (loginType === 'user') {
                window.location.href = '/login';  // Redirect to user login page
            }
        }
    </script>
</head>
<body>
    <div class="login-type-section">
        <a href="/home" class="close-button">&times;</a>
        <h2>Select Login Type</h2>
        <label for="loginType">Choose your login type:</label>
        <select id="loginType">
            <option value="user">User</option>
            <option value="admin">Admin</option>
        </select>
        <button type="button" onclick="redirectBasedOnLoginType()">Proceed</button>
    </div>
</body>
</html>
