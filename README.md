# 📊 IIT Bhilai Quizzing & Survey Platform

A **real-time, time-bounded** quizzing, polling, and survey platform built to engage students at **IIT Bhilai**, with a strong emphasis on **data science use-cases** and academic participation.  

Whether it's a competitive quiz round, live poll in an event, or anonymous data collection for projects and research — this platform brings it all under one roof with **real-time performance**, **leaderboards**, and **past result storage**.  
 
> ⚠️ **Looking for a Maintainer!**  
> If you're interested in full-stack dev, data science, or building tools for campus use — reach out and take ownership of this project!

---

## 🚀 Features

- 🧠 **Time-Bounded Quizzes**  
  Create and conduct live quizzes with start/end timers and real-time question reveal.

- 📶 **Real-Time Leaderboard**  
  See scores update instantly as participants submit answers.

- 📋 **Surveys & Polls**  
  Gather feedback, conduct research surveys, and live polls during talks/events.

- 🗃️ **Quiz Archive**  
  Access past quizzes and results for review, practice, or study.

- 👤 **User Profiles (Coming Soon)**  
  Track individual performance across events, see rankings, and more.

- 🔒 **Authentication & Roles**  
  Admins/moderators, quiz creators, and participants with different privileges.

---

## 🎯 Purpose

This platform was built with the following goals:

- Encourage academic and co-curricular engagement on campus  
- Support **data science students** in running structured surveys  
- Enable clubs, departments, and faculty to conduct **interactive sessions**
- Promote healthy competition and preparation via quizzes

---

## 🛠 Recommended Tech Stack

You’re free to customize the stack as needed, but here’s what we recommend:

### **Frontend**
- `Next.js` (App Router)
- `Tailwind CSS` / `Shadcn/ui`
- `Socket.io Client` for real-time updates
- `Recharts` or `Chart.js` for analytics

### **Backend**
- `FastAPI` or `NestJS` for performance and flexibility
- `PostgreSQL` or `MongoDB` for storing quiz data
- `Redis` for real-time leaderboard caching
- `Socket.io` or `WebSockets` for real-time functionality

### **Authentication**
- Firebase Auth (or Supabase Auth / Clerk)

### **Deployment & Infra**
- Dockerized services for ease of deployment  
- `Railway`, `Render`, or `Fly.io` for hosting  
- `Prometheus + Grafana` for internal analytics and performance tracking (optional)

---

## 🤝 Contributing

Contributions are very welcome — feature ideas, bug fixes, UI improvements, or deployment help!

> **Looking for a Maintainer!**  
> Interested in owning the project? Ping me or raise an issue! It's a great opportunity to build something useful for the whole IIT Bhilai community.

---

## 📂 Directory Structure (Suggested)

```bash
/
├── frontend/        # Next.js App
├── backend/         # FastAPI/NestJS Server
├── db/              # Schema, seed scripts
├── docs/            # API docs, diagrams, planning
└── README.md
