# Raahi Cab — Development Roadmap

Business model: hybrid owned fleet + approved taxi operator marketplace.

## Release strategy
MVP: phases 1–4, essential parts of 5 and 7, plus security/SEO launch requirements.
Marketplace expansion: remaining operator, driver, admin and marketing capabilities.

## Phases and batches
- [ ] Phase 1 — Premium website and UI: 1.1 design system; 1.2 homepage and search; 1.3 vehicle/route pages; 1.4 mobile and accessibility.
- [ ] Phase 2 — Booking: 2.1 trip types; 2.2 location/date inputs; 2.3 search/filter; 2.4 checkout; 2.5 confirmation/cancellation.
- [ ] Phase 3 — Pricing and availability: 3.1 maps; 3.2 fare rules; 3.3 surcharges/tax; 3.4 inventory locks.
- [ ] Phase 4 — Accounts and payments: 4.1 authentication; 4.2 profiles; 4.3 gateway; 4.4 verification/refunds; 4.5 history/notifications.
- [ ] Phase 5 — Operators: 5.1 onboarding; 5.2 fleet verification; 5.3 availability; 5.4 dispatch; 5.5 commission/settlement.
- [ ] Phase 6 — Drivers: 6.1 profiles; 6.2 assigned trips; 6.3 pickup/completion; 6.4 earnings/support.
- [ ] Phase 7 — Admin: 7.1 KPIs; 7.2 users; 7.3 fleet/pricing; 7.4 payments; 7.5 CMS/support; 7.6 permissions/audit.
- [ ] Phase 8 — SEO: 8.1 technical; 8.2 city/route pages; 8.3 languages; 8.4 content; 8.5 analytics.
- [ ] Phase 9 — Quality: 9.1 security; 9.2 integration tests; 9.3 mobile/performance; 9.4 load/backup.
- [ ] Phase 10 — Launch: 10.1 infrastructure; 10.2 pilot; 10.3 monitoring.

## Definition of done
A batch is complete only when code is committed, applicable checks pass, functionality is verified, and deployment status is recorded. Existing prototype pages are not treated as fully completed phases.

## Initial priorities
1. Reconcile the original premium HTML reference with the GitHub Next.js homepage.
2. Establish shared components and mobile responsive navigation.
3. Create booking schema and server-side validation.
4. Implement inventory-safe booking workflow.
5. Add pricing, payments and operator onboarding.
