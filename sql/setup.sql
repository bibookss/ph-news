-- Create database if needed
CREATE DATABASE ph_news;

\c ph_news;

-- Create raw schema
CREATE SCHEMA IF NOT EXISTS raw;

-- Tables for each source
CREATE TABLE IF NOT EXISTS abs_cbn_article_index_raw (
    id SERIAL PRIMARY KEY,
    retrieved_at TIMESTAMPTZ NOT NULL,
    json_response JSONB NOT NULL
);

-- Table for ABS-CBN raw article details
CREATE TABLE IF NOT EXISTS abs_cbn_article_detail_raw (
    id SERIAL PRIMARY KEY,
    slugline_url TEXT NOT NULL,
    retrieved_at TIMESTAMPTZ NOT NULL,
    json_response JSONB NOT NULL
);
