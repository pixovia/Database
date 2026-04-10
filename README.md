# Pixovia LLC — Full Database Archive

This repository contains the complete exported database files from **Pixovia LLC**, published upon the shutdown of our platform.

## About

Pixovia LLC has permanently shut down its platform. As part of our commitment to transparency and the developer community, we are releasing the full database archive publicly.

You are free to reuse, repurpose, or build upon this data. Full permissions granted by Pixovia LLC — see [License](#license) below.

## Repository Structure

```
/
├── db1/                  # Primary database (apps platform)
│   ├── apps/             # App listings
│   ├── developers/       # Developer profiles
│   ├── game_mods/        # Game modifications
│   ├── reviews/          # User reviews
│   ├── review_likes/     # Review likes
│   └── review_replies/   # Review replies
│
└── db2/                  # Secondary database (media/content platform)
    ├── albums/           # Media albums
    ├── files/            # Uploaded files metadata
    ├── movie_audio_learn/# Movie & audio learning content
    ├── chatroom_messages/# Chatroom messages
    └── sports/           # Sports content
```

Each folder contains:
- `schema.sql` — Supabase PostgreSQL table schema
- `data.csv` — Exported table data (where available)

## Databases

### DB1 — Apps Platform
The core platform database. Includes apps, developers, game mods, reviews, review interactions, and more. All schemas are Supabase-compatible PostgreSQL.

### DB2 — Media & Content Platform
The media/content side of the platform. Includes file uploads, albums, chatroom messages, sports content, and movie/audio learning data.

## Supabase Schema Files

All `schema.sql` files are directly exported from Supabase and are ready to be imported into any Supabase or PostgreSQL project. They include table definitions, indexes, foreign keys, triggers, and RLS (Row Level Security) policies.

## License & Reuse

**Full permissions granted by Pixovia LLC.**

You may freely use, copy, modify, distribute, or build upon any data or schema in this repository for any purpose — personal, commercial, or otherwise — without restriction.

*© Pixovia LLC. All rights released.*
