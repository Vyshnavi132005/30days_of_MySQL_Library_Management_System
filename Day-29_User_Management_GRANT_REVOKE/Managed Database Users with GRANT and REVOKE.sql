-- ==========================================
-- Day 29 : User Management
-- Project : Library Management System
-- ==========================================

USE library_management_system;

-- Create a New User

CREATE USER 'librarian'@'localhost'
IDENTIFIED BY 'library123';

-- Grant Privileges

GRANT SELECT, INSERT, UPDATE
ON library_management_system.*
TO 'librarian'@'localhost';

-- Revoke UPDATE Privilege

REVOKE UPDATE
ON library_management_system.*
FROM 'librarian'@'localhost';

-- Apply Privilege Changes

FLUSH PRIVILEGES;

-- Show Granted Privileges

SHOW GRANTS FOR 'librarian'@'localhost';