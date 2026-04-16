# Tasks: Implement Subjects Table

1.  [x] **Create `subjects` table:** In the Xano database, create a new table named `subjects`.
2.  [x] **Add fields:** Add the following fields to the `subjects` table:
    - `id` (auto-incrementing integer, primary key)
    - `name` (text)
    - `teacher` (text)
    - `hours` (integer)
    - `user_id` (integer, foreign key to the `user` or `users` table)
