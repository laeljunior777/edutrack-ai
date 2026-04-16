# Specification: Subjects Table Schema

This document outlines the schema for the `subjects` table.

## Table: `subjects`

| Field     | Type      | Constraints                               | Description                               |
|-----------|-----------|-------------------------------------------|-------------------------------------------|
| `id`      | integer   | Auto-incrementing, Primary Key            | Unique identifier for the subject.        |
| `name`    | text      | Not Null                                  | Name of the subject.                      |
| `teacher` | text      | Not Null                                  | Name of the teacher for the subject.      |
| `hours`   | integer   | Not Null                                  | Workload of the subject in hours.         |
| `user_id` | integer   | Foreign Key to `user.id` (or `users.id`)  | Associates the subject with a Xano user.  |
