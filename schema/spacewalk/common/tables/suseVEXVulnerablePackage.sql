--
-- Copyright (c) 2023 SUSE LLC
--
-- This software is licensed to you under the GNU General Public License,
-- version 2 (GPLv2). There is NO WARRANTY for this software, express or
-- implied, including the implied warranties of MERCHANTABILITY or FITNESS
-- FOR A PARTICULAR PURPOSE. You should have received a copy of GPLv2
-- along with this software; if not, see
-- http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
--
-- Red Hat trademarks are not licensed under GPLv2. No permission is
-- granted to use or replicate Red Hat trademarks that are incorporated
-- in this software or its documentation.
--

CREATE TABLE suseVEXVulnerablePackage
(
    id             NUMERIC NOT NULL
                      CONSTRAINT suse_vex_vulnerable_pkg_id_pk PRIMARY KEY,
    name           VARCHAR NOT NULL,
    status         VARCHAR NOT NULL,
    fix_action     VARCHAR,  -- Remediation/Justification
    fix_version    VARCHAR
);


CREATE SEQUENCE suse_vex_vulnerable_pkg_id_seq;

CREATE INDEX suse_vex_vulnerable_pkg_name_idx ON suseVEXVulnerablePackage(name);
