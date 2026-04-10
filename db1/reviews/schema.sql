create table public.reviews (
  id text not null,
  app_id text null,
  user_ip text not null,
  user_name text not null,
  rating integer null,
  review_text text null,
  created_at timestamp with time zone null default now(),
  platform text null default 'Windows'::text,
  upvotes integer null default 4,
  downvotes integer null,
  constraint reviews_pkey primary key (id),
  constraint reviews_app_id_user_ip_platform_key unique (app_id, user_ip, platform),
  constraint reviews_app_id_fkey foreign KEY (app_id) references apps (id) on delete CASCADE,
  constraint reviews_rating_check check (
    (
      (rating >= 1)
      and (rating <= 5)
    )
  )
) TABLESPACE pg_default;

create trigger review_rating_update_trigger
after INSERT
or DELETE
or
update on reviews for EACH row
execute FUNCTION update_app_rating_trigger ();


/*no rls had*/