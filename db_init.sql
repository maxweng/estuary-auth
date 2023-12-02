CREATE TABLE "users" (
    "id" integer GENERATED ALWAYS AS IDENTITY,
    "updated_at" timestamp with time zone,
    "created_at" timestamp with time zone,
    "deleted_at" timestamp with time zone,
    PRIMARY KEY ("id")
);

CREATE TABLE "auth_tokens" (
    "id" integer GENERATED ALWAYS AS IDENTITY,
    "token" text,
    "token_hash" text,
    "label" text,
    "user" integer,
    "expiry" timestamp with time zone,
    "updated_at" timestamp with time zone,
    "created_at" timestamp with time zone,
    "deleted_at" timestamp with time zone,
    "upload_only" boolean,
    "is_session" boolean,
    PRIMARY KEY ("id")
);