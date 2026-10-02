# Starklicker-Scool-Wifi-Resistent-

## Shared leaderboard setup

The leaderboard is hosted by Supabase and is not connected until you add your project settings.

1. Create a Supabase project.
2. Open the SQL Editor and run `leaderboard.sql` from this repository.
3. In `leaderboard-config.js`, set `supabaseUrl` to your Project URL and `supabaseAnonKey` to the public anon/publishable key from the Supabase API settings.
4. Deploy the updated site. Do not use or publish a `service_role` key.

The page submits only a nickname (up to 16 characters) and the current star score. The public leaderboard is nickname-only; do not enter real names or other personal information. Because this static client submits its own score, the ranking is suitable for casual play but is not cheat-proof. A trusted competitive leaderboard would need server-side score validation and rate limiting.