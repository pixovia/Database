create table public.albums (
  id text not null,
  title character varying(255) not null,
  uploader character varying(255) not null,
  no_files integer null default 0,
  created_at timestamp with time zone null default now(),
  updated_at timestamp with time zone null default now(),
  contributor uuid null,
  constraint albums_pkey primary key (id),
  constraint albums_contributor_fkey foreign KEY (contributor) references contributors (id)
) TABLESPACE pg_default;

create index IF not exists idx_albums_uploader on public.albums using btree (uploader) TABLESPACE pg_default;



alter policy "Allow authenticated users to insert albums"
on "public"."albums"
to public
with check (
  (auth.role() = 'authenticated'::text)
);


alter policy "Allow public read access on albums"
on "public"."albums"
to public
using (
  true
);