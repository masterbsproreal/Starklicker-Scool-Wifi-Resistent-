create table if not exists public.leaderboard (
  id uuid primary key default gen_random_uuid(),
  nickname text not null check (char_length(btrim(nickname)) between 1 and 16),
  score bigint not null check (score between 0 and 9007199254740991),
  created_at timestamptz not null default now()
);

create index if not exists leaderboard_score_created_at_idx
  on public.leaderboard (score desc, created_at asc);

alter table public.leaderboard enable row level security;

grant select, insert on public.leaderboard to anon;

drop policy if exists "Anyone can read leaderboard" on public.leaderboard;
create policy "Anyone can read leaderboard"
  on public.leaderboard for select to anon
  using (true);

drop policy if exists "Anyone can submit a nickname and score" on public.leaderboard;
create policy "Anyone can submit a nickname and score"
  on public.leaderboard for insert to anon
  with check (
    char_length(btrim(nickname)) between 1 and 16
    and nickname = btrim(nickname)
    and score between 0 and 9007199254740991
  );