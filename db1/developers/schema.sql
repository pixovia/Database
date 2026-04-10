create table public.developers (
  id text not null,
  name text not null,
  email text null,
  website text null,
  description text null,
  avatar_url text null,
  created_at timestamp with time zone null default now(),
  banner_image text null default ''::text,
  featured_app text null,
  constraint developers_pkey primary key (id),
  constraint developers_name_key unique (name),
  constraint developers_featured_app_fkey foreign KEY (featured_app) references apps (id) on update CASCADE on delete CASCADE
) TABLESPACE pg_default;


/*no rls had*/