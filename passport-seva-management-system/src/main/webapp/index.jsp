<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Welcome to Our Site</title>
  <style>
    :root {
      --bg-gradient-start: #fff5f0;
      --bg-gradient-end: #ffe6dc;
      --text-color: #6b7280;
      --heading-color: #111827;
      --card-bg: #f9fafb;
      --shadow: 0 4px 8px rgba(0,0,0,0.05);
      --radius: 0.75rem;
      --font-heading: 'Poppins', sans-serif;
      --font-body: 'Inter', sans-serif;
    }
    @import url('https://fonts.googleapis.com/css2?family=Inter&family=Poppins:wght@600;800&display=swap');

    /* Basic reset and body */
    body, html {
      margin: 0;
      padding: 0;
      height: 100%;
      background: linear-gradient(135deg, var(--bg-gradient-start), var(--bg-gradient-end));
      color: var(--text-color);
      font-family: var(--font-body);
      display: flex;
      justify-content: center;
      align-items: center;
    }

    /* Container to center content, with max width */
    .container {
      max-width: 600px;
      background: var(--card-bg);
      padding: 3rem 2rem;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      text-align: center;
      box-sizing: border-box;
      width: 90%;
    }

    h1 {
      font-family: var(--font-heading);
      font-size: 3rem;
      font-weight: 800;
      color: var(--heading-color);
      margin-bottom: 1rem;
    }

    p {
      font-size: 1.125rem;
      margin-bottom: 2rem;
      color: var(--text-color);
    }

    a.button {
      display: inline-block;
      padding: 0.75rem 2rem;
      font-size: 1.125rem;
      font-weight: 600;
      color: white;
      background-color: #111827;
      border-radius: 0.5rem;
      text-decoration: none;
      transition: background-color 0.3s ease;
      user-select: none;
    }

    a.button:hover,
    a.button:focus {
      background-color: #374151;
      outline: none;
    }
  </style>
</head>
<body>
  <div class="container" role="main">
    <h1>Welcome to Our Website</h1>
    <p>Your gateway to a great experience starts here.</p>
    <a href="register.jsp" class="button" aria-label="Go to registration page">Register Now</a>
     <a href="getAllUsers" class="button" aria-label="Go to users page">Get All Users</a>
  </div>
</body>
</html>