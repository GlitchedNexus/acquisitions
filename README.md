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

```

src/
├── config/ # Environment setup & constants
├── db/ # Drizzle ORM schema & migrations
├── middleware/ # Auth, validation, rate limiting
├── modules/ # Feature-based modules (users, acquisitions, etc.)
├── routes/ # API endpoints
├── tests/ # Jest + SuperTest suites
├── utils/ # Helpers, error handling, logging
└── index.ts # Express server bootstrap

```

---

## ⚙️ Setup & Usage

### 1. Clone and Install

```bash
git clone https://github.com/GlitchedNexus/acquisitions.git
cd acquisitions
npm install
```

### 2. Environment Setup

Create a `.env` file at the root:

```bash
DATABASE_URL=postgresql://user:password@neon-host/dbname
JWT_SECRET=your-secret-key
ARCJET_API_KEY=your-arcjet-key
NODE_ENV=development
PORT=8080
```

### 3. Run Locally

```bash
npm run dev
```

### 4. Run Tests

```bash
npm test
```

### 5. Build for Production

```bash
npm run build
docker compose up --build
```

---

## 🧪 Testing & CI/CD

- **Unit tests** cover core logic and services.
- **Integration tests** validate routes, middleware, and database interactions.
- **GitHub Actions** ensures every push triggers:
  - Lint check
  - Test suite
  - Docker build
  - Deployment workflow

---

## 🛡️ Security & Reliability

- JWT-based session authentication with expiry.
- Arcjet runtime guardrails (bot protection, rate limiting).
- Environment-isolated configurations (dev, staging, prod).
- CI/CD pipelines enforce reproducibility and rollback safety.

---

## 📊 Observability

- Winston logging with timestamped, leveled outputs.
- `/health` and `/metrics` endpoints for uptime checks.
- Ready for integration with tools like Prometheus or Grafana.

---

## 📦 Containerization

Fully containerized for local and cloud deployments.

```bash
docker build -t acquisitions-api .
docker run -p 8080:8080 acquisitions-api
```

Kubernetes manifests (optional) define:

- `Deployment`
- `Service`
- `Ingress`

---

## 🧠 Inspiration

Built as part of a larger DevOps exploration series to showcase **scalable API architectures**, **type-safety**, and **automated pipelines** for modern backends.

---

## 🪪 License

MIT © [Raghav Awasthi](https://github.com/GlitchedNexus)

---

## 📬 Contact

**Raghav Awasthi**
[Website](https://raghavawasthi.dev) • [LinkedIn](https://linkedin.com/in/raghav-awasthi) • [GitHub](https://github.com/GlitchedNexus)
