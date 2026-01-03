# Acquisitions API

A **production-grade backend service** built with **Node.js**, **TypeScript**, **Express**, and **Neon Postgres**, designed to model the standards expected of large-scale, production systems. The project emphasizes **type safety**, **security**, **observability**, **testability**, and **automated delivery** through modern DevOps practices.

This repository serves as both a functional API and a reference implementation for scalable backend engineering.

---

## Key Capabilities

* **RESTful API** implemented with Express using a modular, feature-based architecture.
* **Strongly typed persistence layer** using Drizzle ORM with Neon Postgres.
* **Authentication and authorization** via JWT with role-based access control.
* **Schema-first validation** using Zod for request and response contracts.
* **Runtime security enforcement** with Arcjet, including:

  * Bot detection
  * Rate limiting
  * Email and session validation
* **Automated CI/CD pipeline** using GitHub Actions.
* **Containerized runtime** using Docker, with optional Kubernetes manifests.
* **Structured logging and health endpoints** for observability.
* **Comprehensive automated tests** covering business logic and API behavior.

---

## Technology Stack

| Category         | Choice                     |
| ---------------- | -------------------------- |
| Language         | TypeScript                 |
| Web Framework    | Express.js                 |
| Database         | Neon Postgres (PostgreSQL) |
| ORM              | Drizzle ORM                |
| Validation       | Zod                        |
| Authentication   | JWT                        |
| Security         | Arcjet                     |
| Logging          | Winston                    |
| Testing          | Jest, SuperTest            |
| CI/CD            | GitHub Actions             |
| Containerization | Docker, Kubernetes         |

---

## System Design Overview

### High-Level Architecture

```
Client
  |
  | HTTPS (JWT Auth)
  v
Express API
  ├── Middleware Layer
  |     ├── Auth (JWT, RBAC)
  |     ├── Validation (Zod)
  |     ├── Rate Limiting / Bot Detection (Arcjet)
  |
  ├── Application Modules
  |     ├── Users
  |     ├── Acquisitions
  |     └── Other domain services
  |
  ├── Data Access Layer
  |     └── Drizzle ORM
  |
  v
Neon Postgres
```

### Design Decisions

* **Feature-based module boundaries** reduce coupling and improve maintainability.
* **Type-safe ORM layer** ensures compile-time correctness across queries and models.
* **Stateless API design** enables horizontal scaling behind a load balancer.
* **Middleware-driven cross-cutting concerns** (auth, validation, security) ensure consistent enforcement.
* **Container-first approach** guarantees parity between local, CI, and production environments.

---

## Repository Structure

```
src/
├── config/        # Environment configuration and constants
├── db/            # Drizzle ORM schema and migrations
├── middleware/    # Authentication, validation, security
├── modules/       # Domain modules (users, acquisitions, etc.)
├── routes/        # API route definitions
├── tests/         # Unit and integration tests
├── utils/         # Logging, error handling, helpers
└── index.ts       # Application bootstrap
```

---

## Getting Started

### Installation

```bash
git clone https://github.com/GlitchedNexus/acquisitions.git
cd acquisitions
npm install
```

### Environment Configuration

Create a `.env` file:

```bash
DATABASE_URL=postgresql://user:password@neon-host/dbname
JWT_SECRET=your-secret-key
ARCJET_API_KEY=your-arcjet-key
NODE_ENV=development
PORT=8080
```

### Local Development

```bash
npm run dev
```

### Testing

```bash
npm test
```

### Production Build

```bash
npm run build
docker compose up --build
```

---

## CI/CD Pipeline

Every push triggers an automated pipeline that:

1. Runs static checks (linting and type checks)
2. Executes unit and integration tests
3. Builds the Docker image
4. Validates deployment readiness

This enforces **reproducibility**, **regression prevention**, and **deployment safety**.

---

## Security Model

* JWT-based authentication with expiration and role enforcement.
* Arcjet runtime protections for abuse prevention.
* Environment-isolated configuration for development, staging, and production.
* No secrets committed to source control.

---

## Observability and Reliability

* Structured Winston logs with timestamps and severity levels.
* Health and metrics endpoints for monitoring and uptime checks.
* Designed to integrate with Prometheus, Grafana, or hosted observability platforms.

---

## Containerization and Deployment

The service is fully containerized:

```bash
docker build -t acquisitions-api .
docker run -p 8080:8080 acquisitions-api
```

Optional Kubernetes manifests define:

* Deployments for stateless scaling
* Services for internal networking
* Ingress for external access

---

## Internship Rubric Alignment

This project demonstrates competencies commonly evaluated in **Backend and DevOps internships**, including:

* **API Design**: Clean REST interfaces, validation, and error handling
* **Data Modeling**: Relational schema design with migrations
* **Security**: Authentication, authorization, and runtime protections
* **Testing**: Unit and integration coverage
* **DevOps**: CI/CD automation, containerization, environment parity
* **Production Readiness**: Logging, health checks, and scalability considerations
* **Code Quality**: Modular structure, type safety, and maintainable abstractions

---

## Motivation

Built as part of a broader effort to explore production backend systems, this project prioritizes engineering fundamentals over framework-specific shortcuts, reflecting real-world service design practices.

---

## License

MIT © Raghav Awasthi
[https://github.com/GlitchedNexus](https://github.com/GlitchedNexus)
