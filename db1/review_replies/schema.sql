create table public.review_replies (
  id bigserial not null,
  review_id text null,
  user_ip text not null,
  user_name text not null,
  reply_text text not null,
  created_at timestamp with time zone null default now(),
  constraint review_replies_pkey primary key (id),
  constraint review_replies_review_id_fkey foreign KEY (review_id) references reviews (id) on delete CASCADE
) TABLESPACE pg_default;