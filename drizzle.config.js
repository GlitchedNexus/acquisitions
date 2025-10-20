import dotenv from 'dotenv';

// Load environment variables from .env.development in development
if (process.env.NODE_ENV === 'development' || !process.env.NODE_ENV) {
  dotenv.config({ path: '.env.development' });
}

export default {
  schema: './src/models/*.js',
  out: './drizzle',
  dialect: 'postgresql',
  dbCredentials: {
    url: process.env.DATABASE_URL || 'postgres://neon@localhost:5432/neondb',
  },
};
