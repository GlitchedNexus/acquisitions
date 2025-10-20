# 🛰️ Acquisitions API

A **production-grade DevOps backend** built with **Node.js**, **Express**, and **Neon Postgres**, featuring containerization, CI/CD, and runtime security integrations.

This project demonstrates modern **backend engineering practices**—from scalable API design and type-safe ORM usage to automated testing, observability, and secure deployments.

---

## 🚀 Features

- **Express.js REST API** — clean modular architecture with routing, middleware, and controller layers.
- **Type-safe database layer** using [Drizzle ORM](https://orm.drizzle.team) with Neon Postgres.
- **JWT Authentication & RBAC** — token-based access control for users and admin roles.
- **Data validation** using [Zod](https://zod.dev) schemas for requests and responses.
- **Runtime Security** via [Arcjet](https://arcjet.com):
  - Bot detection
  - Rate limiting
  - Email and session validation
- **Containerized Deployments** — Docker + Kubernetes for reliable environments.
- **Continuous Integration** — GitHub Actions pipeline with linting, tests, and build checks.
- **Structured Logging** — Winston-based logs with contextual metadata.
- **Health-checks & Monitoring Hooks** for observability.
- **Comprehensive Testing Suite** — Jest + SuperTest for unit and integration coverage.

---

## 🧩 Tech Stack

| Layer            | Technology                 |
| ---------------- | -------------------------- |
| Language         | TypeScript                 |
| Framework        | Express.js                 |
| Database         | Neon Postgres (PostgreSQL) |
| ORM              | Drizzle ORM                |
| Validation       | Zod                        |
| Auth             | JWT (JSON Web Tokens)      |
| Logging          | Winston                    |
| CI/CD            | GitHub Actions             |
| Containerization | Docker, Kubernetes         |
| Security         | Arcjet                     |
| Testing          | Jest, SuperTest            |

---

## 🧱 Architecture Overview
