// Basic Node.js Express server for MySQL integration
const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(bodyParser.json());

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '00000',
  database: 'accessavalut_db'
});

db.connect((err) => {
  if (err) {
    console.error('MySQL connection error:', err);
    process.exit(1);
  }
  console.log('Connected to MySQL database');
});

// Users CRUD endpoints
app.get('/api/users', (req, res) => {
  db.query('SELECT * FROM users', (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
});

app.post('/api/users', (req, res) => {
  const { username, email, role, status, group } = req.body;
  db.query('INSERT INTO users (username, email, role, status, `group`) VALUES (?, ?, ?, ?, ?)', [username, email, role, status, group], (err, result) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ id: result.insertId, username, email, role, status, group });
  });
});

app.put('/api/users/:id', (req, res) => {
  const { username, email, role, status, group } = req.body;
  db.query('UPDATE users SET username=?, email=?, role=?, status=?, `group`=? WHERE id=?', [username, email, role, status, group, req.params.id], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ id: req.params.id, username, email, role, status, group });
  });
});

app.delete('/api/users/:id', (req, res) => {
  db.query('DELETE FROM users WHERE id=?', [req.params.id], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ success: true });
  });
});

// TODO: Add endpoints for groups and roles

// Groups CRUD endpoints
app.get('/api/groups', (req, res) => {
  db.query('SELECT * FROM groups', (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
});

app.post('/api/groups', (req, res) => {
  const { name, description } = req.body;
  db.query('INSERT INTO groups (name, description) VALUES (?, ?)', [name, description], (err, result) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ id: result.insertId, name, description });
  });
});

app.put('/api/groups/:id', (req, res) => {
  const { name, description } = req.body;
  db.query('UPDATE groups SET name=?, description=? WHERE id=?', [name, description, req.params.id], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ id: req.params.id, name, description });
  });
});

app.delete('/api/groups/:id', (req, res) => {
  db.query('DELETE FROM groups WHERE id=?', [req.params.id], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ success: true });
  });
});

// Roles CRUD endpoints
app.get('/api/roles', (req, res) => {
  db.query('SELECT * FROM roles', (err, results) => {
    if (err) return res.status(500).json({ error: err });
    res.json(results);
  });
});

app.post('/api/roles', (req, res) => {
  const { name, description } = req.body;
  db.query('INSERT INTO roles (name, description) VALUES (?, ?)', [name, description], (err, result) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ id: result.insertId, name, description });
  });
});

app.put('/api/roles/:id', (req, res) => {
  const { name, description } = req.body;
  db.query('UPDATE roles SET name=?, description=? WHERE id=?', [name, description, req.params.id], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ id: req.params.id, name, description });
  });
});

app.delete('/api/roles/:id', (req, res) => {
  db.query('DELETE FROM roles WHERE id=?', [req.params.id], (err) => {
    if (err) return res.status(500).json({ error: err });
    res.json({ success: true });
  });
});
const PORT = 3001;
app.listen(PORT, () => {
  console.log(`Backend server running on port ${PORT}`);
});