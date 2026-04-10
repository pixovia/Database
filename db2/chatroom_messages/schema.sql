create table public.chatroom_messages (
  id uuid not null default gen_random_uuid (),
  username text not null,
  gender text null,
  text text null,
  file_url text null,
  ig text null,
  fb text null,
  x text null,
  yt text null,
  created_at timestamp with time zone not null default now(),
  constraint chatroom_messages_pkey primary key (id)
) TABLESPACE pg_default;



/*no rls had*/