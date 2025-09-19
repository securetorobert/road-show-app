<template>
  <div class="landing-page">
    <header class="header">
      <div class="logo">
        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M12 2L2 7L12 12L22 7L12 2Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          <path d="M2 17L12 22L22 17" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          <path d="M2 12L12 17L22 12" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
        <span>TaskMaster</span>
      </div>
      <nav class="nav">
        <a href="#">Features</a>
        <a href="#">Pricing</a>
        <a href="#">Templates</a>
      </nav>
      <div class="auth-buttons">
        <button class="btn-secondary">Log in</button>
        <button class="btn-primary">Sign up</button>
      </div>
    </header>

    <main class="main-content">
      <section class="hero">
        <div class="hero-text">
          <h1>Organize your work and life, finally.</h1>
          <p>Become focused, organized, and calm with TaskMaster. The world's #1 task manager and to-do list app.</p>
          <button class="btn-primary">Get Started</button>
        </div>
        <div class="hero-image">
          <svg width="400" height="300" viewBox="0 0 400 300" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="50" y="50" width="300" height="200" rx="10" fill="#f0f0f0"/>
            <rect x="80" y="80" width="240" height="20" rx="5" fill="#e0e0e0"/>
            <rect x="80" y="120" width="240" height="20" rx="5" fill="#e0e0e0"/>
            <rect x="80" y="160" width="180" height="20" rx="5" fill="#e0e0e0"/>
            <circle cx="100" cy="90" r="8" fill="#007bff"/>
            <path d="M97 90L99 92L103 88" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <circle cx="100" cy="130" r="8" fill="#007bff"/>
            <path d="M97 130L99 132L103 128" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
        </div>
      </section>

      <section class="features">
        <h2>Features</h2>
        <p>TaskMaster is packed with features to help you stay organized and productive.</p>
        <div class="features-grid">
          <div class="feature-card">
            <div class="feature-icon">✓</div>
            <h3>Task Management</h3>
            <p>Create, organize, and prioritize tasks with ease. Set deadlines, add notes, and break down large projects into manageable steps.</p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">📅</div>
            <h3>Calendar Integration</h3>
            <p>Seamlessly integrate your calendar to view tasks alongside your appointments and events. Never miss a deadline again.</p>
          </div>
          <div class="feature-card">
            <div class="feature-icon">👥</div>
            <h3>Collaboration</h3>
            <p>Share projects and tasks with team members or family. Assign tasks, track progress, and communicate effectively within the app.</p>
          </div>
        </div>
      </section>
    </main>

    <footer class="footer">
      <div class="footer-links">
        <a href="#">About</a>
        <a href="#">Contact</a>
        <a href="#">Privacy Policy</a>
        <a href="#">Terms of Service</a>
      </div>
      <p>© 2024 TaskMaster. All rights reserved.</p>
    </footer>
  </div>
</template>

<script setup lang="ts">
</script>

<style scoped>
.landing-page {
  font-family: sans-serif;
  color: #333;
}

.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem 2rem;
  border-bottom: 1px solid #eee;
}

.logo {
  display: flex;
  align-items: center;
  font-size: 1.5rem;
  font-weight: bold;
}

.logo svg {
  margin-right: 0.5rem;
}

.nav a {
  margin: 0 1rem;
  text-decoration: none;
  color: #555;
}

.auth-buttons .btn-primary,
.auth-buttons .btn-secondary {
  margin-left: 1rem;
  padding: 0.5rem 1rem;
  border-radius: 5px;
  border: none;
  cursor: pointer;
}

.auth-buttons .btn-primary {
  background-color: #007bff;
  color: white;
}

.auth-buttons .btn-secondary {
  background-color: #f0f0f0;
  color: #333;
}

.main-content {
  padding: 2rem;
}

.hero {
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 4rem 0;
}

.hero-text h1 {
  font-size: 3rem;
  margin-bottom: 1rem;
}

.hero-text p {
  font-size: 1.2rem;
  color: #555;
  margin-bottom: 2rem;
}

.hero .btn-primary {
  padding: 1rem 2rem;
  font-size: 1.2rem;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.hero-image {
  margin-top: 2rem;
}

.features {
  text-align: center;
  padding: 4rem 0;
}

.features h2 {
  font-size: 2.5rem;
  margin-bottom: 1rem;
}

.features > p {
  font-size: 1.2rem;
  color: #555;
  margin-bottom: 3rem;
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
}

.feature-card {
  border: 1px solid #eee;
  padding: 2rem;
  border-radius: 10px;
  text-align: left;
}

.feature-icon {
  font-size: 2rem;
  margin-bottom: 1rem;
}

.feature-card h3 {
  font-size: 1.5rem;
  margin-bottom: 0.5rem;
}

.footer {
  text-align: center;
  padding: 2rem;
  border-top: 1px solid #eee;
  color: #777;
}

.footer-links {
  margin-bottom: 1rem;
}

.footer-links a {
  margin: 0 1rem;
  text-decoration: none;
  color: #777;
}
</style>