# AccessaValut Backend Server

This is a Node.js backend server for the AccessaValut app, providing RESTful APIs and MySQL integration for user, group, and role management.

## Setup Instructions

1. **Install Dependencies**

   Navigate to the `backend_server` directory and run:
   ```
npm install
   ```

2. **Configure Environment Variables**

   Copy `.env.example` to `.env` and update the values with your MySQL credentials:
   ```
cp .env.example .env
   ```

3. **Start the Server**

   ```
npm start
   ```
   The server will run on `http://localhost:3001` by default.

4. **API Endpoints**

   - `GET /api/users` - List all users
   - `POST /api/users` - Add a new user
   - `PUT /api/users/:id` - Update a user
   - `DELETE /api/users/:id` - Delete a user

   (Endpoints for groups and roles coming soon)

5. **Database Setup**

   Ensure you have a MySQL database named `accessavalut_db` and a `users` table with columns: `id`, `name`, `email`, `role`, `status`, `group`.

---

For any issues, please check your MySQL connection settings or refer to the documentation for [Express](https://expressjs.com/) and [mysql2](https://www.npmjs.com/package/mysql2).