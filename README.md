# Raahi Cab

Premium cab-booking platform for India. Hybrid own-fleet and operator marketplace (under development).

## Run locally
```bash
npm install
npm test
npm run build
npm run dev
```

## Implemented
- Responsive premium customer-facing homepage and vehicle-category results.
- One-way, round-trip, airport and local rental search interface.
- POST `/api/search` validates a trip and returns illustrative categories.
- Unit tests for trip validation, plus GitHub Actions test/build checks.

## API example
```bash
curl -X POST http://localhost:3000/api/search \
  -H 'Content-Type: application/json' \
  -d '{"from":"Delhi","to":"Jaipur","type":"One Way","date":"2026-12-15"}'
```

## Important limitations
Search results are **not** live fleet inventory or fare quotes. There is no booking persistence, operator dispatch, checkout, customer authentication, or payment gateway yet. Do not accept payments or promise confirmed bookings based on this code.

See [ROADMAP.md](./ROADMAP.md) for the full phase plan.

## Booking database setup (not yet deployed)
1. Provision a **new dedicated Raahi PostgreSQL database**. Never reuse the MyCELPIP database.
2. Apply `db/schema.sql` to a fresh database. The schema file is an initial setup script, **not** an upgrade migration for an existing installation.
3. Configure `RAAHI_DATABASE_URL` and a random `RAAHI_ADMIN_TOKEN` of at least 32 characters in the server environment. Never prefix secrets with `NEXT_PUBLIC_`.
4. Verify the booking API, status transitions, and admin access before accepting customer traffic.

The admin console is at `/admin/bookings`. Its bearer-token login is **temporary** and should be replaced with user accounts and role-based access before production.

Booking requests collect name and phone number only with explicit contact consent. No automated SMS, email or WhatsApp delivery is connected yet. Booking references indicate a **pending request**, not a confirmed reservation.
