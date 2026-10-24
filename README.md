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
