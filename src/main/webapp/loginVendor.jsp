<!-- /WebContent/jsp/login.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign in with Google Page</title>
    <style>
        body {
            margin: 0;
			background-image: linear-gradient(45deg, #85FFBD 0%, #FFFB7D 100%);
            height: 100vh;
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
        }

        .container {
            text-align: center;
        }

        h1 {
            color: #3212c1;
            margin-top: 100px; 
        }

        .sign-in-button {
            margin-top: 50%;
            display: inline-block;
            width: 240px;
            height: 50px;
            background-color: #4285f4;
            color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .25);
            text-decoration: none;
        }

        .sign-in-button:hover {
            cursor: pointer;
            box-shadow: 0 0 3px 3px rgba(0, 0, 0, .25);
            
        }
        .sign-in-button a {
    text-decoration: none;
    color: #fff; 
    }

        .sign-in-button .content-wrapper {
            height: 100%;
            width: 100%;
            border: 1px solid transparent;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .sign-in-button .logo {
            background: #fff;
            width: 60px;
            height: 100%;
            border-radius: 5px;
            display: inline-block;
        }

        .sign-in-button .logo img {
            width: 100%;
            height: 100%;
        }

        .sign-in-button .text-container {
            
            font-weight: 500;
            letter-spacing: .21px;
            font-size: 16px;
            line-height: 48px;
            vertical-align: top;
            border: none;
            display: inline-block;
            text-align: center;
            width: 180px;
            
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to JS Tigers</h1>
        <div class="sign-in-button">
            <a href="login">
                <div class="content-wrapper">
                    <div class="logo">
                        <img src="search.png" alt="Google Logo">
                    </div>
                    <span class="text-container">
                        <span>Sign in with Google</span>
                    </span>
                </div>
            </a>
        </div>
    </div>
</body>
</html>

