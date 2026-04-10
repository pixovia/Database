create table public.apps (
  id text not null,
  name text not null,
  category text not null,
  description text not null,
  download_url jsonb null,
  image_url text null,
  rating numeric null default 0,
  downloads integer null default 0,
  featured boolean null default false,
  created_at timestamp with time zone null default now(),
  developer text null,
  bg_image text null,
  bg_video text null,
  system_requirements jsonb null,
  release_date date null,
  terms_url text null,
  privacy_url text null,
  tos_url text null,
  is_trending boolean null default false,
  tags text[] null,
  app_type text null default 'app'::text,
  developer_id text null,
  screenshots jsonb null,
  card_image text null,
  videos jsonb null,
  platforms text null default 'android, linux, windows, playstation, xbox'::text,
  constraint apps_pkey primary key (id),
  constraint apps_developer_id_fkey foreign KEY (developer_id) references developers (id)
) TABLESPACE pg_default;


alter policy "Enable read access for all users"
on "public"."apps"
to public
using (
 true
);