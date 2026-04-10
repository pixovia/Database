create table public.sports (
  id serial not null,
  title character varying(255) not null,
  description text null,
  type character varying(100) null,
  team1 character varying(100) null,
  team2 character varying(100) null,
  match_time timestamp with time zone null,
  content_url jsonb null,
  created_at timestamp without time zone null default CURRENT_TIMESTAMP,
  updated_at timestamp without time zone null default CURRENT_TIMESTAMP,
  team1_logo_id text null,
  team2_logo_id text null,
  thumbnail_id text null,
  contributor uuid null,
  status boolean null default false,
  constraint sports_pkey primary key (id),
  constraint sports_contributor_fkey foreign KEY (contributor) references contributors (id),
  constraint sports_team1_logo_id_fkey foreign KEY (team1_logo_id) references files (id) on update CASCADE on delete CASCADE,
  constraint sports_team2_logo_id_fkey foreign KEY (team2_logo_id) references files (id) on update CASCADE on delete CASCADE,
  constraint sports_thumbnail_id_fkey foreign KEY (thumbnail_id) references files (id) on update CASCADE on delete CASCADE
) TABLESPACE pg_default;



alter policy "Enable read access for all users"
on "public"."sports"
to public
using (
  true
);