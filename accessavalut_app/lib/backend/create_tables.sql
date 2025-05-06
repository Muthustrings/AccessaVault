-- Users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Groups table
CREATE TABLE groups (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Roles table
CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT
);

-- User-Groups join table
CREATE TABLE user_groups (
    user_id INT NOT NULL,
    group_id INT NOT NULL,
    PRIMARY KEY (user_id, group_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (group_id) REFERENCES groups(id) ON DELETE CASCADE
);

-- User-Roles join table
CREATE TABLE user_roles (
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE
);

-- Settings table
CREATE TABLE settings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    setting_key VARCHAR(100) NOT NULL,
    setting_value TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Sample data for testing

-- Insert sample users
INSERT INTO users (username, email, password_hash) VALUES
  ('alice', 'alice@example.com', 'hashedpassword1'),
  ('bob', 'bob@example.com', 'hashedpassword2'),
  ('carol', 'carol@example.com', 'hashedpassword3');

-- Insert sample groups
INSERT INTO groups (name, description) VALUES
  ('Marketing', 'Handles marketing campaigns'),
  ('Sales', 'Responsible for sales'),
  ('Engineering', 'Develops the product');

-- Insert sample roles
INSERT INTO roles (name, description) VALUES
  ('Admin', 'Administrator with full access'),
  ('User', 'Regular user'),
  ('Manager', 'Manages teams and projects');

-- Assign users to groups
INSERT INTO user_groups (user_id, group_id) VALUES
  (1, 1),
  (2, 2),
  (3, 3);

-- Assign users to roles
INSERT INTO user_roles (user_id, role_id) VALUES
  (1, 1), -- alice is Admin
  (2, 2), -- bob is User
  (3, 3); -- carol is Manager

-- Insert sample settings
INSERT INTO settings (user_id, setting_key, setting_value) VALUES
  (1, 'theme', 'dark'),
  (2, 'theme', 'light'),
  (3, 'notifications', 'enabled');