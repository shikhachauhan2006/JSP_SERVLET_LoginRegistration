<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Home</title>
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      font-family: 'Segoe UI', sans-serif;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      background: #f4f6f9;
    }

    .card {
      background: #ffffff;
      border: 1px solid #e2e8f0;
      border-radius: 14px;
      padding: 2.5rem 2rem;
      width: 100%;
      max-width: 400px;
      text-align: center;
      box-shadow: 0 2px 12px rgba(0,0,0,0.07);
    }

    .logo {
      width: 54px;
      height: 54px;
      border-radius: 50%;
      background: #e6f1fb;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0 auto 1.25rem;
    }

    .logo svg {
      width: 26px;
      height: 26px;
      stroke: #185FA5;
      fill: none;
      stroke-width: 2;
      stroke-linecap: round;
      stroke-linejoin: round;
    }

    h2 {
      font-size: 20px;
      font-weight: 600;
      color: #1a202c;
      margin-bottom: 0.4rem;
    }

    .subtitle {
      font-size: 14px;
      color: #718096;
      margin-bottom: 2rem;
    }

    .btn {
      display: block;
      width: 100%;
      padding: 0.7rem 1rem;
      border-radius: 8px;
      font-size: 15px;
      font-weight: 500;
      text-decoration: none;
      cursor: pointer;
      transition: opacity 0.15s, background 0.15s;
      margin-bottom: 0.75rem;
    }

    .btn-primary {
      background: #185FA5;
      color: #ffffff;
      border: none;
    }

    .btn-primary:hover { opacity: 0.88; }

    .btn-secondary {
      background: transparent;
      color: #1a202c;
      border: 1px solid #cbd5e0;
    }

    .btn-secondary:hover { background: #f7fafc; }

    .divider {
      display: flex;
      align-items: center;
      gap: 10px;
      margin: 1.25rem 0;
    }

    .divider span {
      font-size: 12px;
      color: #a0aec0;
      white-space: nowrap;
    }

    .divider::before,
    .divider::after {
      content: '';
      flex: 1;
      height: 1px;
      background: #e2e8f0;
    }

    .footer {
      font-size: 12px;
      color: #a0aec0;
      margin-top: 1.5rem;
    }
  </style>
</head>
<body>
  <div class="card">
    <div class="logo">
      <svg viewBox="0 0 24 24">
        <path d="M3 9l9-7 9 7v11a2 2 0 01-2 2H5a2 2 0 01-2-2z"/>
        <polyline points="9 22 9 12 15 12 15 22"/>
      </svg>
    </div>

    <h2>Welcome to My Application</h2>
    <p class="subtitle">Sign in to your account or create a new one</p>

    <a href="login.jsp" class="btn btn-primary">Login</a>

    <div class="divider"><span>or</span></div>

    <a href="register.jsp" class="btn btn-secondary">Create an account</a>

    <p class="footer">By continuing, you agree to our Terms of Service</p>
  </div>
</body>
</html>