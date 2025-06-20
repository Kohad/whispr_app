# Whispr – Anonymous Confession Board 🕵️‍♂️💬

Whispr is a simple and elegant **anonymous confession platform** built with Ruby on Rails. Users can post confessions without logging in, and others can react using emojis. Confessions are displayed in a **trending feed** based on engagement.

---

## 🌟 Features

- 📝 Anonymous confessions (max 500 characters)
- 🚫 No user accounts
- 📍 IP-based rate limiting
  - Max 3 posts/day per IP
  - Max 1 reaction/confession/IP
- 😍 Emoji reactions: ❤️, 🤗, 😂
- 🔥 Trending tab (reaction count + recency)
- 🧑‍⚖️ Admin dashboard (Devise-based) to manage abusive content
- 🎨 Clean Tailwind CSS UI
- ⚡ Turbo-ready (in-place updates – stretch goal)

---

## 🔧 Tech Stack

- **Ruby on Rails** 7.x
- **PostgreSQL** as database
- **Tailwind CSS** for UI
- **Stimulus/Turbo** (planned stretch goals)
- **Devise** for admin auth

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/<your-username>/whispr_app.git
cd whispr_app

bundle install

rails db:create
rails db:migrate

Rails server


for admin pannel
[local/admins/sign_in] (http://127.0.0.1:3000/admins/sign_in)

Admin.create!(email: "admin@example.com", password: "password", password_confirmation: "password")

