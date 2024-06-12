// routes/auth.js

import express from "express";
import jwt from "jsonwebtoken";
import User from "../models/UserModel.js";

const router = express.Router();

router.post("/login", async (req, res) => {
  const { email, password } = req.body;

  try {
    // Cari pengguna berdasarkan email
    const user = await User.findOne({ where: { email: email } });

    // Jika pengguna ditemukan
    if (user) {
      // Periksa apakah password sesuai
      if (password === user.password) {
        // Generate JWT token
        const token = jwt.sign({ email: email }, "secret_key", { expiresIn: "1h" });

        // Kirim token sebagai respons
        res.json({ success: true, token: token });
      } else {
        res.status(401).json({ success: false, message: "Invalid email or password" });
      }
    } else {
      res.status(401).json({ success: false, message: "User not found" });
    }
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

export default router;
