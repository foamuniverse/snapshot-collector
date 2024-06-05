--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Debian 14.10-1.pgdg120+1)
-- Dumped by pg_dump version 14.10 (Debian 14.10-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- Name: tablehistory; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
)
PARTITION BY RANGE (snapshot_time);


ALTER TABLE snapshot.tablehistory OWNER TO snapshot_writer;

SET default_table_access_method = heap;

--
-- Name: tablehistory_y2023m11; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2023m11 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2023m11 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2023m12; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2023m12 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2023m12 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m01; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m01 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m01 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m02; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m02 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m02 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m03; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m03 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m03 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m04; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m04 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m04 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m05; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m05 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m05 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m06; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m06 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m06 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m07; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m07 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m07 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m08; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m08 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m08 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m09; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m09 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m09 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m10; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m10 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m10 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m11; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m11 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m11 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2024m12; Type: TABLE; Schema: snapshot; Owner: frank
--

CREATE TABLE snapshot.tablehistory_y2024m12 (
    snapshot_time timestamp with time zone DEFAULT now() NOT NULL,
    database name,
    schemaname name,
    tblname name,
    seq_scan bigint,
    seq_tup_read bigint,
    idx_scan bigint,
    idx_tup_fetch bigint,
    n_tup_ins bigint,
    n_tup_upd bigint,
    n_tup_del bigint,
    n_tup_hot_upd bigint,
    n_live_tup bigint,
    n_dead_tup bigint,
    n_mod_since_analyze bigint,
    n_ins_since_vacuum bigint,
    last_vacuum timestamp with time zone,
    last_autovacuum timestamp with time zone,
    last_analyze timestamp with time zone,
    last_autoanalyze timestamp with time zone,
    vacuum_count bigint,
    autovacuum_count bigint,
    analyze_count bigint,
    autoanalyze_count bigint,
    instance_name text
);


ALTER TABLE snapshot.tablehistory_y2024m12 OWNER TO snapshot_writer;

--
-- Name: tablehistory_y2023m11; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2023m11 FOR VALUES FROM ('2023-11-01 00:00:00+00') TO ('2023-12-01 00:00:00+00');


--
-- Name: tablehistory_y2023m12; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2023m12 FOR VALUES FROM ('2023-12-01 00:00:00+00') TO ('2024-01-01 00:00:00+00');


--
-- Name: tablehistory_y2024m01; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m01 FOR VALUES FROM ('2024-01-01 00:00:00+00') TO ('2024-02-01 00:00:00+00');


--
-- Name: tablehistory_y2024m02; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m02 FOR VALUES FROM ('2024-02-01 00:00:00+00') TO ('2024-03-01 00:00:00+00');


--
-- Name: tablehistory_y2024m03; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m03 FOR VALUES FROM ('2024-03-01 00:00:00+00') TO ('2024-04-01 00:00:00+00');


--
-- Name: tablehistory_y2024m04; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m04 FOR VALUES FROM ('2024-04-01 00:00:00+00') TO ('2024-05-01 00:00:00+00');


--
-- Name: tablehistory_y2024m05; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m05 FOR VALUES FROM ('2024-05-01 00:00:00+00') TO ('2024-06-01 00:00:00+00');


--
-- Name: tablehistory_y2024m06; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m06 FOR VALUES FROM ('2024-06-01 00:00:00+00') TO ('2024-07-01 00:00:00+00');


--
-- Name: tablehistory_y2024m07; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m07 FOR VALUES FROM ('2024-07-01 00:00:00+00') TO ('2024-08-01 00:00:00+00');


--
-- Name: tablehistory_y2024m08; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m08 FOR VALUES FROM ('2024-08-01 00:00:00+00') TO ('2024-09-01 00:00:00+00');


--
-- Name: tablehistory_y2024m09; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m09 FOR VALUES FROM ('2024-09-01 00:00:00+00') TO ('2024-10-01 00:00:00+00');


--
-- Name: tablehistory_y2024m10; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m10 FOR VALUES FROM ('2024-10-01 00:00:00+00') TO ('2024-11-01 00:00:00+00');


--
-- Name: tablehistory_y2024m11; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m11 FOR VALUES FROM ('2024-11-01 00:00:00+00') TO ('2024-12-01 00:00:00+00');


--
-- Name: tablehistory_y2024m12; Type: TABLE ATTACH; Schema: snapshot; Owner: frank
--

ALTER TABLE ONLY snapshot.tablehistory ATTACH PARTITION snapshot.tablehistory_y2024m12 FOR VALUES FROM ('2024-12-01 00:00:00+00') TO ('2025-01-01 00:00:00+00');


--
-- Name: tablehistory_instance_name_database_schemaname_tblname_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_instance_name_database_schemaname_tblname_idx ON ONLY snapshot.tablehistory USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_snapshot_time_idx ON ONLY snapshot.tablehistory USING btree (snapshot_time);


--
-- Name: tablehistory_y2023m11_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2023m11_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2023m11 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2023m11_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2023m11_snapshot_time_idx ON snapshot.tablehistory_y2023m11 USING btree (snapshot_time);


--
-- Name: tablehistory_y2023m12_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2023m12_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2023m12 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2023m12_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2023m12_snapshot_time_idx ON snapshot.tablehistory_y2023m12 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m01_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m01_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m01 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m01_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m01_snapshot_time_idx ON snapshot.tablehistory_y2024m01 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m02_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m02_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m02 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m02_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m02_snapshot_time_idx ON snapshot.tablehistory_y2024m02 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m03_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m03_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m03 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m03_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m03_snapshot_time_idx ON snapshot.tablehistory_y2024m03 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m04_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m04_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m04 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m04_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m04_snapshot_time_idx ON snapshot.tablehistory_y2024m04 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m05_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m05_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m05 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m05_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m05_snapshot_time_idx ON snapshot.tablehistory_y2024m05 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m06_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m06_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m06 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m06_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m06_snapshot_time_idx ON snapshot.tablehistory_y2024m06 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m07_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m07_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m07 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m07_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m07_snapshot_time_idx ON snapshot.tablehistory_y2024m07 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m08_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m08_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m08 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m08_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m08_snapshot_time_idx ON snapshot.tablehistory_y2024m08 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m09_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m09_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m09 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m09_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m09_snapshot_time_idx ON snapshot.tablehistory_y2024m09 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m10_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m10_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m10 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m10_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m10_snapshot_time_idx ON snapshot.tablehistory_y2024m10 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m11_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m11_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m11 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m11_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m11_snapshot_time_idx ON snapshot.tablehistory_y2024m11 USING btree (snapshot_time);


--
-- Name: tablehistory_y2024m12_instance_name_database_schemaname_tbl_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m12_instance_name_database_schemaname_tbl_idx ON snapshot.tablehistory_y2024m12 USING btree (instance_name, database, schemaname, tblname);


--
-- Name: tablehistory_y2024m12_snapshot_time_idx; Type: INDEX; Schema: snapshot; Owner: frank
--

CREATE INDEX tablehistory_y2024m12_snapshot_time_idx ON snapshot.tablehistory_y2024m12 USING btree (snapshot_time);


--
-- Name: tablehistory_y2023m11_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2023m11_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2023m11_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2023m11_snapshot_time_idx;


--
-- Name: tablehistory_y2023m12_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2023m12_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2023m12_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2023m12_snapshot_time_idx;


--
-- Name: tablehistory_y2024m01_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m01_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m01_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m01_snapshot_time_idx;


--
-- Name: tablehistory_y2024m02_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m02_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m02_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m02_snapshot_time_idx;


--
-- Name: tablehistory_y2024m03_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m03_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m03_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m03_snapshot_time_idx;


--
-- Name: tablehistory_y2024m04_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m04_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m04_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m04_snapshot_time_idx;


--
-- Name: tablehistory_y2024m05_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m05_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m05_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m05_snapshot_time_idx;


--
-- Name: tablehistory_y2024m06_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m06_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m06_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m06_snapshot_time_idx;


--
-- Name: tablehistory_y2024m07_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m07_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m07_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m07_snapshot_time_idx;


--
-- Name: tablehistory_y2024m08_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m08_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m08_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m08_snapshot_time_idx;


--
-- Name: tablehistory_y2024m09_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m09_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m09_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m09_snapshot_time_idx;


--
-- Name: tablehistory_y2024m10_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m10_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m10_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m10_snapshot_time_idx;


--
-- Name: tablehistory_y2024m11_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m11_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m11_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m11_snapshot_time_idx;


--
-- Name: tablehistory_y2024m12_instance_name_database_schemaname_tbl_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_instance_name_database_schemaname_tblname_idx ATTACH PARTITION snapshot.tablehistory_y2024m12_instance_name_database_schemaname_tbl_idx;


--
-- Name: tablehistory_y2024m12_snapshot_time_idx; Type: INDEX ATTACH; Schema: snapshot; Owner: frank
--

ALTER INDEX snapshot.tablehistory_snapshot_time_idx ATTACH PARTITION snapshot.tablehistory_y2024m12_snapshot_time_idx;


--
-- PostgreSQL database dump complete
--

