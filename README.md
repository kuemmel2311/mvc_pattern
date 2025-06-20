# ⚽ MVC Pattern – Champions League Season 2024/2025

This is a simple web project built with the **MVC pattern** in **PHP**, **HTML**, and **CSS**, simulating the UEFA Champions League season 2024/25.

It uses a **MySQL database** and allows viewing, editing, deleting, and creating match data.  
**All changes are session-based only** – when the browser is closed, all data is automatically reset to the original version.

---

## 🔧 Features

- 🗓 View the full match schedule
- 🔍 Search, edit, or delete individual matches
- ➕ Add new matches
- 🏟 Search for teams by name or ID
- 🔄 Reset button – restore all original data at any time
- 🔝 "To the top" button – quickly scroll back to the top of the homepage

---

## 🧱 Technologies Used

- **Frontend:** HTML, CSS  
- **Backend:** PHP (custom MVC architecture)  
- **Database:** MySQL (via XAMPP)

---

## 🗃 Database Structure

The project includes **two database tables**:

1. `spiele` – full schedule with all match data  
2. `vereine` – list of all participating clubs with unique IDs

> 💾 You can import the database using the file:  
> **`db_dump.sql`**

---

## 🚀 How to Run Locally

### Requirements

- Local server (e.g., [XAMPP](https://www.apachefriends.org/))
- PHP & MySQL

### Steps

1. Clone or download this repository
2. Place it into your XAMPP `htdocs` directory, for example:
   ```
   C:\xampp\htdocs\mvc_pattern
   ```
3. Start **Apache** and **MySQL** via the XAMPP control panel
4. Open **phpMyAdmin**
5. Create a new database, e.g.:
   ```
   champions_league
   ```
6. Import the file `db_dump.sql` into that database
7. Update your database credentials in `config.php` if necessary
8. Open the project in your browser:
   ```
   http://localhost/mvc_pattern/
   ```

---

## 🔒 Session-Based Behavior

All modifications (e.g. editing or deleting matches) are only valid **during the current session**.  
Once the browser is closed and reopened, the project resets all data to the original state – no permanent changes are made to the database.

---

## 📸 Project Preview

![screenshot](https://github.com/user-attachments/assets/955c34fd-d883-4b74-af0d-bb5b27a6b843)


---

## 📁 Project Structure

```
mvc_pattern/
├── Model/
├── View/
├── Controller/
├── db_dump.sql
├── index.php
├── style.css
├── config.php
├── README.md
└── screenshot.png
```

---

## 📝 Notes

- This project is for **educational/demo purposes** only  
- No login or user management is implemented  
- Feedback and contributions are welcome!

---

## 👤 Author

Created by Kamil Kara  
📅 June 2025
