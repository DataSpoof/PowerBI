CREATE DATABASE sql_server_power_bi;
GO

USE sql_server_power_bi;
GO

CREATE TABLE employees (
    emp_id VARCHAR(6) PRIMARY KEY,   -- Employee ID
    emp_name VARCHAR(30),            -- Employee Name
    emp_dob DATE,                    -- Date of Birth
    emp_gender CHAR(1),              -- Gender (M/F)
    emp_address VARCHAR(255),        -- Address
    emp_email VARCHAR(50),           -- Email Address
    emp_phone VARCHAR(15),           -- Phone Number
    emp_join_date DATE,              -- Date of Joining
    emp_position VARCHAR(50),        -- Position/Job Title
    emp_department VARCHAR(50),      -- Department
    emp_manager_id VARCHAR(6),       -- Manager ID
    base_salary DECIMAL(10, 2),      -- Base Salary
    total_hike DECIMAL(5, 2),        -- Total Hike Percentage
    emp_status VARCHAR(15),          -- Employment Status (e.g., Active, Inactive)
    emp_remarks TEXT                 -- Additional Remarks
);
GO


INSERT INTO employees (emp_id, emp_name, emp_dob, emp_gender, emp_address, emp_email, emp_phone, emp_join_date, emp_position, emp_department, emp_manager_id, base_salary, total_hike, emp_status, emp_remarks) VALUES
('EMP001', 'John Doe', '1985-05-15', 'M', '123 Main St', 'john.doe@example.com', '1234567890', '2010-04-01', 'Software Engineer', 'IT', 'EMP050', 55000, 10, 'Active', ''),
('EMP002', 'Jane Smith', '1990-08-20', 'F', '456 Elm St', 'jane.smith@example.com', '2345678901', '2012-06-15', 'Project Manager', 'IT', 'EMP051', 75000, 12, 'Active', ''),
('EMP003', 'Michael Brown', '1982-09-22', 'M', '789 Pine St', 'michael.brown@example.com', '3456789012', '2008-11-20', 'Business Analyst', 'Finance', 'EMP052', 60000, 8, 'Active', ''),
('EMP004', 'Emily Davis', '1987-04-30', 'F', '101 Maple St', 'emily.davis@example.com', '4567890123', '2011-03-15', 'Data Scientist', 'Data Science', 'EMP050', 80000, 15, 'Active', ''),
('EMP005', 'David Wilson', '1980-11-12', 'M', '202 Birch St', 'david.wilson@example.com', '5678901234', '2007-12-05', 'System Analyst', 'IT', 'EMP051', 65000, 9, 'Active', ''),
('EMP006', 'Sophia Johnson', '1993-07-18', 'F', '303 Oak St', 'sophia.johnson@example.com', '6789012345', '2014-09-20', 'HR Manager', 'HR', 'EMP054', 72000, 11, 'Active', ''),
('EMP007', 'James Lee', '1984-02-25', 'M', '404 Pine St', 'james.lee@example.com', '7890123456', '2009-06-10', 'Operations Manager', 'Operations', 'EMP055', 70000, 14, 'Active', ''),
('EMP008', 'Isabella Martinez', '1992-03-10', 'F', '505 Cedar St', 'isabella.martinez@example.com', '8901234567', '2013-08-22', 'Marketing Manager', 'Marketing', 'EMP053', 68000, 10, 'Active', ''),
('EMP009', 'William Hernandez', '1986-09-05', 'M', '606 Walnut St', 'william.hernandez@example.com', '9012345678', '2012-11-15', 'Finance Manager', 'Finance', 'EMP052', 73000, 13, 'Active', ''),
('EMP010', 'Olivia Lopez', '1991-05-25', 'F', '707 Birch St', 'olivia.lopez@example.com', '0123456789', '2016-02-28', 'Product Manager', 'Product', 'EMP051', 76000, 12, 'Active', ''),
('EMP011', 'Lucas White', '1983-08-30', 'M', '808 Cedar St', 'lucas.white@example.com', '1234567891', '2008-03-10', 'Sales Manager', 'Sales', 'EMP050', 67000, 9, 'Active', ''),
('EMP012', 'Charlotte Green', '1994-11-19', 'F', '909 Oak St', 'charlotte.green@example.com', '2345678902', '2015-05-12', 'HR Specialist', 'HR', 'EMP054', 48000, 8, 'Active', ''),
('EMP013', 'Henry Wright', '1988-01-15', 'M', '1010 Pine St', 'henry.wright@example.com', '3456789013', '2010-07-18', 'Network Engineer', 'IT', 'EMP051', 60000, 11, 'Active', ''),
('EMP014', 'Mia King', '1989-10-30', 'F', '1111 Maple St', 'mia.king@example.com', '4567890124', '2011-10-25', 'Business Analyst', 'Finance', 'EMP052', 59000, 7, 'Active', ''),
('EMP015', 'Alexander Clark', '1981-06-12', 'M', '1212 Birch St', 'alexander.clark@example.com', '5678901235', '2006-04-08', 'Chief Technology Officer', 'IT', 'EMP050', 125000, 20, 'Active', ''),
('EMP016', 'Amelia Lewis', '1995-09-22', 'F', '1313 Cedar St', 'amelia.lewis@example.com', '6789012346', '2017-01-11', 'Marketing Coordinator', 'Marketing', 'EMP053', 47000, 6, 'Active', ''),
('EMP017', 'Mason Walker', '1984-12-18', 'M', '1414 Oak St', 'mason.walker@example.com', '7890123457', '2012-03-02', 'Operations Analyst', 'Operations', 'EMP055', 52000, 8, 'Active', ''),
('EMP018', 'Evelyn Young', '1991-04-09', 'F', '1515 Pine St', 'evelyn.young@example.com', '8901234568', '2014-10-22', 'Content Strategist', 'Marketing', 'EMP053', 51000, 9, 'Active', ''),
('EMP019', 'Elijah Harris', '1987-02-26', 'M', '1616 Birch St', 'elijah.harris@example.com', '9012345679', '2011-06-14', 'Database Administrator', 'IT', 'EMP051', 61000, 10, 'Active', ''),
('EMP020', 'Grace Allen', '1990-03-17', 'F', '1717 Cedar St', 'grace.allen@example.com', '0123456781', '2013-05-28', 'Financial Analyst', 'Finance', 'EMP052', 57000, 7, 'Active', ''),
('EMP021', 'Benjamin Scott', '1985-05-23', 'M', '1818 Oak St', 'benjamin.scott@example.com', '1234567892', '2009-09-01', 'Product Designer', 'Product', 'EMP051', 68000, 10, 'Active', ''),
('EMP022', 'Aria Adams', '1989-07-15', 'F', '1919 Pine St', 'aria.adams@example.com', '2345678903', '2010-11-18', 'UX Designer', 'Product', 'EMP051', 64000, 8, 'Active', ''),
('EMP023', 'Daniel Baker', '1983-03-05', 'M', '2020 Maple St', 'daniel.baker@example.com', '3456789014', '2007-07-09', 'Chief Financial Officer', 'Finance', 'EMP052', 130000, 22, 'Active', ''),
('EMP024', 'Victoria Garcia', '1992-11-20', 'F', '2121 Birch St', 'victoria.garcia@example.com', '4567890125', '2015-08-15', 'Recruiter', 'HR', 'EMP054', 53000, 7, 'Active', ''),
('EMP025', 'James Miller', '1986-12-12', 'M', '2222 Cedar St', 'james.miller@example.com', '5678901236', '2012-04-19', 'Full Stack Developer', 'IT', 'EMP051', 75000, 12, 'Active', ''),
('EMP026', 'Sophia Rodriguez', '1993-01-27', 'F', '2323 Oak St', 'sophia.rodriguez@example.com', '6789012347', '2016-06-30', 'Data Analyst', 'Data Science', 'EMP055', 59000, 8, 'Active', ''),
('EMP027', 'Michael Martinez', '1981-10-21', 'M', '2424 Pine St', 'michael.martinez@example.com', '7890123458', '2005-03-11', 'Operations Director', 'Operations', 'EMP055', 98000, 18, 'Active', ''),
('EMP028', 'Emma Hernandez', '1990-12-13', 'F', '2525 Maple St', 'emma.hernandez@example.com', '8901234569', '2014-01-06', 'SEO Specialist', 'Marketing', 'EMP053', 52000, 9, 'Active', ''),
('EMP029', 'William King', '1987-09-17', 'M', '2626 Birch St', 'william.king@example.com', '9012345671', '2011-05-21', 'Product Manager', 'Product', 'EMP051', 77000, 11, 'Active', ''),
('EMP030', 'Olivia Wright', '1994-02-14', 'F', '2727 Cedar St', 'olivia.wright@example.com', '0123456782', '2017-08-11', 'Social Media Manager', 'Marketing', 'EMP053', 56000, 7, 'Active', ''),
('EMP031', 'Jacob Martinez', '1982-04-05', 'M', '2828 Oak St', 'jacob.martinez@example.com', '1234567893', '2008-06-22', 'HR Director', 'HR', 'EMP054', 92000, 16, 'Active', ''),
('EMP032', 'Mia Robinson', '1995-06-16', 'F', '2929 Pine St', 'mia.robinson@example.com', '2345678904', '2018-03-07', 'Content Writer', 'Marketing', 'EMP053', 47000, 6, 'Active', ''),
('EMP033', 'Ethan White', '1989-11-30', 'M', '3030 Maple St', 'ethan.white@example.com', '3456789015', '2012-11-05', 'Network Engineer', 'IT', 'EMP051', 63000, 9, 'Active', ''),
('EMP034', 'Emily Young', '1988-02-25', 'F', '3131 Birch St', 'emily.young@example.com', '4567890126', '2011-04-12', 'HR Specialist', 'HR', 'EMP054', 48000, 8, 'Active', ''),
('EMP035', 'Joshua Harris', '1985-07-09', 'M', '3232 Cedar St', 'joshua.harris@example.com', '5678901237', '2009-01-30', 'Operations Manager', 'Operations', 'EMP055', 71000, 11, 'Active', ''),
('EMP036', 'Amelia Lee', '1993-09-18', 'F', '3333 Oak St', 'amelia.lee@example.com', '6789012348', '2016-11-14', 'Data Scientist', 'Data Science', 'EMP055', 80000, 15, 'Active', ''),
('EMP037', 'Matthew Allen', '1984-08-20', 'M', '3434 Pine St', 'matthew.allen@example.com', '7890123459', '2010-03-16', 'Software Developer', 'IT', 'EMP051', 69000, 10, 'Active', ''),
('EMP038', 'Sophia Lopez', '1991-06-22', 'F', '3535 Maple St', 'sophia.lopez@example.com', '8901234570', '2013-07-18', 'Marketing Manager', 'Marketing', 'EMP053', 72000, 12, 'Active', ''),
('EMP039', 'Aiden Clark', '1987-12-15', 'M', '3636 Birch St', 'aiden.clark@example.com', '9012345672', '2011-09-21', 'Finance Analyst', 'Finance', 'EMP052', 60000, 8, 'Active', ''),
('EMP040', 'Isabella Perez', '1990-10-28', 'F', '3737 Cedar St', 'isabella.perez@example.com', '0123456783', '2014-02-19', 'Product Designer', 'Product', 'EMP051', 68000, 10, 'Active', ''),
('EMP041', 'James Sanchez', '1986-03-11', 'M', '3838 Oak St', 'james.sanchez@example.com', '1234567894', '2010-12-28', 'Project Manager', 'IT', 'EMP051', 77000, 12, 'Active', ''),
('EMP042', 'Sophia Rivera', '1992-01-08', 'F', '3939 Pine St', 'sophia.rivera@example.com', '2345678905', '2015-04-09', 'HR Manager', 'HR', 'EMP054', 75000, 11, 'Active', ''),
('EMP043', 'Jackson Stewart', '1983-06-05', 'M', '4040 Maple St', 'jackson.stewart@example.com', '3456789016', '2008-09-30', 'Chief Marketing Officer', 'Marketing', 'EMP053', 125000, 20, 'Active', ''),
('EMP044', 'Liam Martinez', '1981-01-29', 'M', '4141 Birch St', 'liam.martinez@example.com', '4567890127', '2006-07-12', 'Chief Operating Officer', 'Operations', 'EMP055', 130000, 22, 'Active', ''),
('EMP045', 'Evelyn Anderson', '1989-05-13', 'F', '4242 Cedar St', 'evelyn.anderson@example.com', '5678901238', '2012-02-15', 'Software Engineer', 'IT', 'EMP051', 65000, 9, 'Active', ''),
('EMP046', 'Lucas Taylor', '1991-12-10', 'M', '4343 Oak St', 'lucas.taylor@example.com', '6789012349', '2014-05-18', 'Sales Manager', 'Sales', 'EMP050', 71000, 10, 'Active', ''),
('EMP047', 'Mia Thomas', '1984-03-22', 'F', '4444 Pine St', 'mia.thomas@example.com', '7890123460', '2009-08-14', 'Financial Analyst', 'Finance', 'EMP052', 62000, 8, 'Active', ''),
('EMP048', 'Noah Moore', '1987-04-17', 'M', '4545 Maple St', 'noah.moore@example.com', '8901234571', '2011-12-27', 'IT Support Specialist', 'IT', 'EMP051', 58000, 7, 'Active', ''),
('EMP049', 'Lily Hernandez', '1993-07-25', 'F', '4646 Birch St', 'lily.hernandez@example.com', '9012345673', '2017-01-15', 'Marketing Coordinator', 'Marketing', 'EMP053', 52000, 8, 'Active', ''),
('EMP050', 'Michael Wilson', '1982-11-13', 'M', '4747 Cedar St', 'michael.wilson@example.com', '0123456784', '2007-05-10', 'Chief Executive Officer', 'Executive', '', 150000, 25, 'Active', ''),
('EMP051', 'Zoe Garcia', '1988-10-11', 'F', '4848 Oak St', 'zoe.garcia@example.com', '1234567895', '2013-09-30', 'HR Generalist', 'HR', 'EMP054', 50000, 7, 'Active', ''),
('EMP052', 'Jackson White', '1990-02-23', 'M', '4949 Pine St', 'jackson.white@example.com', '2345678906', '2014-08-01', 'Marketing Specialist', 'Marketing', 'EMP053', 53000, 9, 'Active', ''),
('EMP053', 'Olivia Martin', '1991-01-18', 'F', '5050 Maple St', 'olivia.martin@example.com', '3456789017', '2015-11-10', 'Business Analyst', 'Finance', 'EMP052', 60000, 10, 'Active', ''),
('EMP054', 'Elijah Rodriguez', '1986-06-06', 'M', '5151 Birch St', 'elijah.rodriguez@example.com', '4567890128', '2011-03-14', 'Operations Analyst', 'Operations', 'EMP055', 56000, 7, 'Active', ''),
('EMP055', 'Emma Lee', '1992-04-19', 'F', '5252 Cedar St', 'emma.lee@example.com', '5678901239', '2016-02-08', 'Data Analyst', 'Data Science', 'EMP055', 59000, 9, 'Active', ''),
('EMP056', 'Liam Walker', '1987-09-03', 'M', '5353 Oak St', 'liam.walker@example.com', '6789012350', '2012-07-07', 'Software Engineer', 'IT', 'EMP051', 64000, 8, 'Active', '');

GO

select * from employees;
GO

