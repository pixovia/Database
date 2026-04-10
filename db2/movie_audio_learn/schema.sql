create table public.movie_audio_learn (
  id text not null,
  type text not null,
  title text null,
  description text null,
  thumbnail text null,
  content_url jsonb null,
  created_at timestamp with time zone null default now(),
  updated_at timestamp with time zone null default now(),
  album_id text null,
  artist jsonb null,
  contributor uuid null,
  status boolean not null default false,
  constraint movie_audio_learn_pkey primary key (id),
  constraint movie_audio_learn_album_id_fkey foreign KEY (album_id) references albums (id),
  constraint movie_audio_learn_contributor_fkey foreign KEY (contributor) references contributors (id),
  constraint movie_audio_learn_thumbnail_fkey foreign KEY (thumbnail) references files (id),
  constraint movie_audio_learn_type_check check (
    (
      type = any (
        array['movie'::text, 'audio'::text, 'learn'::text]
      )
    )
  )
) TABLESPACE pg_default;

create index IF not exists idx_movie_audio_learn_created_at on public.movie_audio_learn using btree (created_at) TABLESPACE pg_default;

create index IF not exists idx_movie_audio_learn_type on public.movie_audio_learn using btree (type) TABLESPACE pg_default;


alter policy "Enable read access for all users"
on "public"."movie_audio_learn"
to public
using (
  true
);