# DB2 — Media & Content Platform

Part of the **Pixovia LLC** full database archive, released upon shutdown of our platform.

This is the secondary database powering the Pixovia media and content platform. It contains the following tables:

| Folder | Description |
|---|---|
| `albums/` | Media albums |
| `files/` | Uploaded files metadata |
| `movie_audio_learn/` | Movie & audio learning content |
| `chatroom_messages/` | Chatroom messages |
| `sports/` | Sports content |

Each folder contains:
- `schema.sql` — Supabase PostgreSQL table schema (includes indexes, foreign keys, triggers, and RLS policies)
- `data.csv` — Exported table data (where available)

All schema files are directly exported from Supabase and are ready to import into any Supabase or PostgreSQL project.

## License & Reuse

**Full permissions granted by Pixovia LLC.**
You may freely use, copy, modify, distribute, or build upon any data or schema for any purpose — personal, commercial, or otherwise — without restriction.

*© Pixovia LLC. All rights released.*
