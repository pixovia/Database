create table public.review_likes (
  id bigserial not null,
  review_id text null,
  user_ip text not null,
  is_like boolean not null,
  created_at timestamp with time zone null default now(),
  constraint review_likes_pkey primary key (id),
  constraint review_likes_review_id_user_ip_key unique (review_id, user_ip),
  constraint review_likes_review_id_fkey foreign KEY (review_id) references reviews (id) on delete CASCADE
) TABLESPACE pg_default;



/*no rls had*/