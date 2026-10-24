-- Apply only to a dedicated Raahi Postgres database, not another product database.
create extension if not exists pgcrypto;
create table if not exists public.booking_requests (
 id uuid primary key default gen_random_uuid(),
 reference text not null unique,
 customer_name text not null check(char_length(customer_name) between 2 and 100),
 customer_phone text not null,
 pickup_city text not null,
 destination_city text not null,
 travel_date date not null,
 trip_type text not null check(trip_type in ('One Way','Round Trip','Airport','Local Rental')),
 vehicle_category text not null check(vehicle_category in ('sedan','suv','luxury')),
 status text not null default 'pending' check(status in ('pending','confirmed','declined','cancelled')),
 created_at timestamptz not null default now(),
 updated_at timestamptz not null default now()
);
create index if not exists booking_requests_created_at_idx on public.booking_requests(created_at desc);
create index if not exists booking_requests_status_idx on public.booking_requests(status);
alter table public.booking_requests enable row level security;
-- No anon/authenticated policies: public clients cannot read or write bookings.
revoke all on public.booking_requests from anon, authenticated;
