create table public.game_mods (
  id uuid not null default gen_random_uuid (),
  created_at timestamp with time zone not null default now(),
  name text not null,
  cover text null,
  description text null,
  screenshots jsonb null default '["https://pixovia.pages.dev/mods/jb3-1.webp", "https://pixovia.pages.dev/mods/assets/jb3-2.webp", "https://pixovia.pages.dev/mods/assets/jb3-3.webp"]'::jsonb,
  download jsonb null,
  creator text null default 'VN BUSSID MODS'::text,
  creator_avatar text null default 'https://pixovia.pages.dev/logo-coloured.jpg'::text,
  creator_url text null,
  category text null,
  is_verified boolean not null,
  game text null,
  constraint bussid_mods_pkey primary key (id)
) TABLESPACE pg_default;


alter policy "Enable insert access for all users"
on "public"."game_mods"
to public
with check (
  true
);


alter policy "Enable read access for all users"
on "public"."game_mods"
to public
using (
  true
);