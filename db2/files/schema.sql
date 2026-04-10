create table public.files (
  id text not null,
  title character varying(255) not null,
  description text null,
  tags text null,
  uploader character varying(255) not null,
  file_url text not null,
  album_id text null,
  file_type character varying(50) null default 'image'::character varying,
  file_size character varying(50) null,
  created_at timestamp with time zone null default now(),
  updated_at timestamp with time zone null default now(),
  is_verified boolean null default false,
  contributor uuid null,
  constraint files_pkey primary key (id),
  constraint files_file_url_key unique (file_url),
  constraint files_album_id_fkey foreign KEY (album_id) references albums (id) on delete CASCADE,
  constraint files_contributor_fkey foreign KEY (contributor) references contributors (id)
) TABLESPACE pg_default;

create index IF not exists idx_files_uploader on public.files using btree (uploader) TABLESPACE pg_default;

create index IF not exists idx_files_album_id on public.files using btree (album_id) TABLESPACE pg_default;

create trigger trigger_update_album_file_count_delete
after DELETE on files for EACH row
execute FUNCTION update_album_file_count ();

create trigger trigger_update_album_file_count_insert
after INSERT on files for EACH row
execute FUNCTION update_album_file_count ();



alter policy "Allow public read access on files"
on "public"."files"
to public
using (
  true
);


alter policy "Allow authenticated users to insert files"
on "public"."files"
to public
with check (
  (auth.role() = 'authenticated'::text)
);