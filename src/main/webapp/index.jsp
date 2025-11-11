<!DOCTYPE html>
<html lang="en" class="scroll-smooth">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Modern Registration Form</title>
  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    // Tailwind custom theme
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            primary: {
              50: '#eff6ff', 100: '#dbeafe', 500: '#3b82f6', 600: '#2563eb', 700: '#1d4ed8'
            },
            accent: {
              500: '#a78bfa', 600: '#8b5cf6'
            }
          },
          boxShadow: {
            glow: '0 10px 40px -12px rgba(59,130,246,.45)'
          },
          animation: {
            float: 'float 6s ease-in-out infinite'
          },
          keyframes: {
            float: {
              '0%,100%': { transform: 'translateY(0px)' },
              '50%': { transform: 'translateY(-6px)' }
            }
          }
        }
      }
    }
  </script>
  <style>
    /* Glassmorphism backdrop support */
    .glass {
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: saturate(180%) blur(16px);
      -webkit-backdrop-filter: saturate(180%) blur(16px);
    }
    .dark .glass { background: rgba(17, 25, 40, 0.55); }
    .gradient-bg {
      background: radial-gradient(1200px 600px at 10% 10%, rgba(59,130,246,.25), transparent 60%),
                  radial-gradient(1000px 500px at 90% 20%, rgba(168,85,247,.25), transparent 60%),
                  linear-gradient(135deg, #0f172a 0%, #020617 100%);
    }
  </style>
</head>
<body class="min-h-screen gradient-bg text-slate-100 selection:bg-accent-600 selection:text-white">
  <!-- Top Bar -->
  <header class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-6 flex items-center justify-between">
    <h1 class="text-xl sm:text-2xl font-semibold tracking-tight">Create your account</h1>
    <div class="flex items-center gap-3">
      <button id="modeBtn" title="Toggle dark mode" class="px-3 py-2 rounded-xl glass border border-white/10 hover:border-white/20 transition">
        <span class="inline-block" id="modeLabel">Dark</span>
      </button>
      <a href="#" class="text-sm text-white/80 hover:text-white underline underline-offset-4">Already have an account?</a>
    </div>
  </header>

  <!-- Main Container -->
  <main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 pb-16 grid lg:grid-cols-2 gap-10 items-center">
    <!-- Left: Pitch / Features -->
    <section class="order-2 lg:order-1">
      <div class="glass rounded-3xl p-6 sm:p-8 border border-white/10 shadow-glow animate-float">
        <h2 class="text-2xl sm:text-3xl font-bold mb-4">Welcome to the club ✨</h2>
        <p class="text-white/80 leading-relaxed mb-6">Join thousands of developers using our platform to launch beautiful apps faster. Your account gives you access to dashboards, cloud sync, and weekly pro tips.</p>
        <ul class="grid sm:grid-cols-2 gap-4 text-white/90">
          <li class="flex items-start gap-3"><span class="mt-1 h-2 w-2 rounded-full bg-primary-500"></span> One-click deploys</li>
          <li class="flex items-start gap-3"><span class="mt-1 h-2 w-2 rounded-full bg-accent-500"></span> Realtime analytics</li>
          <li class="flex items-start gap-3"><span class="mt-1 h-2 w-2 rounded-full bg-emerald-400"></span> Secure by default</li>
          <li class="flex items-start gap-3"><span class="mt-1 h-2 w-2 rounded-full bg-rose-400"></span> 24/7 support</li>
        </ul>
      </div>
    </section>

    <!-- Right: Registration Card -->
    <section class="order-1 lg:order-2">
      <form id="signupForm" class="glass rounded-3xl p-6 sm:p-8 border border-white/10 shadow-2xl">
        <!-- Avatar / Brand -->
        <div class="flex items-center gap-4 mb-6">
          <div class="h-12 w-12 rounded-2xl bg-gradient-to-br from-primary-600 to-accent-600 grid place-items-center shadow-glow">
            <span class="font-black text-lg">R</span>
          </div>
          <div>
            <h3 class="text-xl font-semibold">Register</h3>
            <p class="text-sm text-white/70">It’s quick and secure.</p>
          </div>
        </div>

        <!-- Grid fields -->
        <div class="grid sm:grid-cols-2 gap-4">
          <!-- Full name -->
          <label class="relative block">
            <input name="name" required type="text" placeholder=" " class="peer w-full rounded-2xl bg-white/5 border border-white/10 px-4 pt-5 pb-2.5 outline-none focus:border-primary-500 transition placeholder-transparent" />
            <span class="absolute left-4 top-2.5 text-xs text-white/70 transition-all peer-placeholder-shown:top-3.5 peer-placeholder-shown:text-sm peer-focus:top-2.5 peer-focus:text-xs">Full name</span>
          </label>

          <!-- Username -->
          <label class="relative block">
            <input name="username" required minlength="3" maxlength="20" pattern="^[a-zA-Z0-9_]+$" type="text" placeholder=" " class="peer w-full rounded-2xl bg-white/5 border border-white/10 px-4 pt-5 pb-2.5 outline-none focus:border-primary-500 transition placeholder-transparent" />
            <span class="absolute left-4 top-2.5 text-xs text-white/70 transition-all peer-placeholder-shown:top-3.5 peer-placeholder-shown:text-sm peer-focus:top-2.5 peer-focus:text-xs">Username</span>
          </label>

          <!-- Email -->
          <label class="relative block sm:col-span-2">
            <input name="email" required type="email" placeholder=" " class="peer w-full rounded-2xl bg-white/5 border border-white/10 px-4 pt-5 pb-2.5 outline-none focus:border-primary-500 transition placeholder-transparent" />
            <span class="absolute left-4 top-2.5 text-xs text-white/70 transition-all peer-placeholder-shown:top-3.5 peer-placeholder-shown:text-sm peer-focus:top-2.5 peer-focus:text-xs">Email address</span>
          </label>

          <!-- Phone -->
          <label class="relative block">
            <input name="phone" type="tel" inputmode="numeric" pattern="^[0-9\-\+\s]{7,15}$" placeholder=" " class="peer w-full rounded-2xl bg-white/5 border border-white/10 px-4 pt-5 pb-2.5 outline-none focus:border-primary-500 transition placeholder-transparent" />
            <span class="absolute left-4 top-2.5 text-xs text-white/70 transition-all peer-placeholder-shown:top-3.5 peer-placeholder-shown:text-sm peer-focus:top-2.5 peer-focus:text-xs">Phone (optional)</span>
          </label>

          <!-- Password -->
          <div class="relative">
            <label class="relative block">
              <input id="password" name="password" required minlength="8" type="password" placeholder=" " class="peer w-full rounded-2xl bg-white/5 border border-white/10 px-4 pt-5 pb-2.5 pr-12 outline-none focus:border-primary-500 transition placeholder-transparent" />
              <span class="absolute left-4 top-2.5 text-xs text-white/70 transition-all peer-placeholder-shown:top-3.5 peer-placeholder-shown:text-sm peer-focus:top-2.5 peer-focus:text-xs">Password</span>
            </label>
            <button type="button" id="togglePass" class="absolute right-3 top-3.5 text-white/70 hover:text-white" aria-label="Show/Hide password">👁️</button>
          </div>

          <!-- Confirm Password -->
          <div class="relative">
            <label class="relative block">
              <input id="confirm" name="confirm" required type="password" placeholder=" " class="peer w-full rounded-2xl bg-white/5 border border-white/10 px-4 pt-5 pb-2.5 pr-12 outline-none focus:border-primary-500 transition placeholder-transparent" />
              <span class="absolute left-4 top-2.5 text-xs text-white/70 transition-all peer-placeholder-shown:top-3.5 peer-placeholder-shown:text-sm peer-focus:top-2.5 peer-focus:text-xs">Confirm password</span>
            </label>
          </div>

          <!-- Strength meter -->
          <div class="sm:col-span-2">
            <div class="h-2 w-full rounded-full bg-white/10 overflow-hidden">
              <div id="strengthBar" class="h-2 w-0 rounded-full bg-gradient-to-r from-rose-500 via-amber-500 to-emerald-500 transition-all"></div>
            </div>
            <p id="strengthText" class="mt-1 text-xs text-white/70">Password strength</p>
          </div>

          <!-- Terms -->
          <label class="sm:col-span-2 flex items-start gap-3 text-sm text-white/80">
            <input type="checkbox" required class="mt-1 h-4 w-4 rounded border-white/20 bg-white/10" />
            <span>I agree to the <a href="#" class="underline underline-offset-2 hover:text-white">Terms of Service</a> and <a href="#" class="underline underline-offset-2 hover:text-white">Privacy Policy</a>.</span>
          </label>
        </div>

        <!-- Submit -->
        <div class="mt-6 flex items-center gap-4">
          <button class="group inline-flex items-center justify-center gap-2 rounded-2xl bg-gradient-to-r from-primary-600 to-accent-600 px-6 py-3 font-medium shadow-lg shadow-primary-600/20 hover:shadow-primary-600/40 transition focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary-500 focus:ring-offset-transparent" type="submit">
            Create account
            <span class="transition-transform group-hover:translate-x-0.5">→</span>
          </button>
          <p class="text-sm text-white/70">No credit card required</p>
        </div>

        <!-- Footer small print -->
        <p class="mt-4 text-xs text-white/50">By signing up, you consent to occasional product updates. You can unsubscribe any time.</p>
      </form>

      <!-- Toast -->
      <div id="toast" class="fixed left-1/2 -translate-x-1/2 bottom-6 hidden">
        <div class="glass rounded-2xl px-5 py-3 border border-white/10 shadow-glow flex items-center gap-3">
          <span>✅</span>
          <span class="text-sm">Registration successful! (Demo)</span>
        </div>
      </div>
    </section>
  </main>

  <script>
    // Dark mode toggle (persists per session)
    const html = document.documentElement;
    const modeBtn = document.getElementById('modeBtn');
    const modeLabel = document.getElementById('modeLabel');
    const saved = sessionStorage.getItem('mode');
    if (saved === 'dark') html.classList.add('dark');
    if (html.classList.contains('dark')) modeLabel.textContent = 'Light';
    modeBtn.addEventListener('click', () => {
      html.classList.toggle('dark');
      const isDark = html.classList.contains('dark');
      modeLabel.textContent = isDark ? 'Light' : 'Dark';
      sessionStorage.setItem('mode', isDark ? 'dark' : 'light');
    });

    // Show/Hide password
    document.getElementById('togglePass').addEventListener('click', () => {
      const pwd = document.getElementById('password');
      pwd.type = pwd.type === 'password' ? 'text' : 'password';
    });

    // Password strength meter
    const pwd = document.getElementById('password');
    const bar = document.getElementById('strengthBar');
    const label = document.getElementById('strengthText');
    function scorePassword(p) {
      let score = 0;
      if (!p) return score;
      const variations = {
        digits: /\d/.test(p),
        lower: /[a-z]/.test(p),
        upper: /[A-Z]/.test(p),
        nonWords: /[^\w]/.test(p),
        length: p.length >= 12
      };
      score = Object.values(variations).reduce((s, v) => s + (v ? 1 : 0), 0);
      return Math.min(score, 5);
    }
    function renderStrength(s) {
      const pct = [0, 20, 40, 70, 90, 100][s];
      bar.style.width = pct + '%';
      const texts = ['Too weak', 'Weak', 'Okay', 'Good', 'Strong', 'Excellent'];
      label.textContent = 'Password strength: ' + texts[s];
    }
    pwd.addEventListener('input', () => renderStrength(scorePassword(pwd.value)));

    // Confirm password validation
    const confirm = document.getElementById('confirm');
    function validateMatch() {
      if (confirm.value && pwd.value !== confirm.value) {
        confirm.setCustomValidity('Passwords do not match');
      } else {
        confirm.setCustomValidity('');
      }
    }
    pwd.addEventListener('input', validateMatch);
    confirm.addEventListener('input', validateMatch);

    // Demo submit handler
    document.getElementById('signupForm').addEventListener('submit', (e) => {
      e.preventDefault();
      // In a real app, send data with fetch(). For demo, show toast.
      const toast = document.getElementById('toast');
      toast.classList.remove('hidden');
      setTimeout(() => toast.classList.add('hidden'), 2500);
      e.target.reset();
      bar.style.width = '0%';
      label.textContent = 'Password strength';
    });
  </script>
</body>
</html>

