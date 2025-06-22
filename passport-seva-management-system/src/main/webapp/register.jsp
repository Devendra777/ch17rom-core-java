<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Register - Create an Account</title>
  <style>
    :root {
      --bg-color: #ffffff;
      --text-color: #6b7280;
      --heading-color: #111827;
      --card-bg: #f9fafb;
      --shadow: 0 8px 24px rgba(0,0,0,0.08);
      --radius: 0.75rem;
      --font-heading: 'Poppins', sans-serif;
      --font-body: 'Inter', sans-serif;
      --input-border: #d1d5db;
      --input-focus-border: #111827;
      --btn-bg: #111827;
      --btn-bg-hover: #374151;
    }
    @import url('https://fonts.googleapis.com/css2?family=Inter&family=Poppins:wght@600;800&display=swap');

    /* Reset and base */
    html, body {
      margin: 0;
      padding: 0;
      height: 100%;
      background-color: var(--bg-color);
      font-family: var(--font-body);
      color: var(--text-color);
      display: flex;
      justify-content: center;
      align-items: center;
    }

    /* Centered card container */
    .container {
      background: var(--card-bg);
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      width: 90%;
      max-width: 460px;
      padding: 3rem 2.5rem;
      box-sizing: border-box;
      text-align: center;
    }

    /* Headline */
    h1 {
      font-family: var(--font-heading);
      font-weight: 800;
      font-size: 3rem;
      margin-bottom: 1.5rem;
      color: var(--heading-color);
    }

    /* Form styling */
    form {
      display: flex;
      flex-direction: column;
      gap: 1.5rem;
      text-align: left;
    }

    label {
      position: relative;
      font-weight: 600;
      color: var(--text-color);
      display: block;
      margin-bottom: 0.4rem;
      font-size: 0.95rem;
      user-select: none;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="tel"] {
      width: 100%;
      padding: 0.75rem 1rem;
      font-size: 1rem;
      border: 1.8px solid var(--input-border);
      border-radius: 0.5rem;
      font-family: var(--font-body);
      transition: border-color 0.3s ease;
      box-sizing: border-box;
      outline-offset: 2px;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="password"]:focus,
    input[type="tel"]:focus {
      border-color: var(--input-focus-border);
      outline: none;
      box-shadow: 0 0 8px rgba(17,24,39, 0.25);
    }

    /* Submit button */
    button[type="submit"] {
      background-color: var(--btn-bg);
      color: white;
      font-weight: 700;
      font-size: 1.125rem;
      padding: 0.85rem 1.5rem;
      border-radius: 0.5rem;
      border: none;
      cursor: pointer;
      transition: background-color 0.3s ease;
      user-select: none;
    }
    button[type="submit"]:hover,
    button[type="submit"]:focus {
      background-color: var(--btn-bg-hover);
      outline: none;
    }

    /* Link to login */
    .footer-text {
      margin-top: 1.8rem;
      font-size: 0.9rem;
      color: var(--text-color);
      text-align: center;
    }
    .footer-text a {
      color: var(--btn-bg);
      font-weight: 600;
      text-decoration: none;
      transition: color 0.3s ease;
    }
    .footer-text a:hover,
    .footer-text a:focus {
      color: var(--btn-bg-hover);
      outline: none;
    }

    @media (max-width: 480px) {
      .container {
        padding: 2rem 1.5rem;
      }
      h1 {
        font-size: 2.4rem;
      }
    }
  </style>
</head>
<body>
  <main class="container" role="main" aria-labelledby="registerHeading">
    <h1 id="registerHeading">Create Your Account</h1>
    <form action="registerUser" method="get" novalidate>
      <label for="givenName">Given Name</label>
      <input type="text" id="givenName" name="givenName" placeholder="Your Given Name" required autocomplete="name" />

        <label for="surName">Sur Name</label>
            <input type="text" id="surName" name="surName" placeholder="Your Sur Name" required autocomplete="username" />

      <label for="email">Email Address</label>
      <input type="email" id="email" name="emailId" placeholder="john@example.com" required autocomplete="email" />

      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="Enter a strong password" required autocomplete="new-password" />

       <label for="password">Confirm Password</label>
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Re Enter a strong password" required autocomplete="new-password" />

      <button type="submit" aria-label="Complete registration">Register</button>
    </form>
  </main>
</body>
</html>