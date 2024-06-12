import express from "express";
import FileUpload from "express-fileupload";
import cors from "cors";
import ProductRoute from "./routes/ProductRoute.js";
import AuthRoutes from "./routes/AuthRoutes.js";
import ReviewRoute from "./routes/ReviewRoutes.js"; // Tambahkan ini
import PromoRoute from "./routes/PromoRoutes.js";
import CustomerReviewRoutes from "./routes/CustomerRoutes.js";
import db from "./config/Database.js"; // Tambahkan ini untuk mengimpor konfigurasi database

const app = express();

app.use(cors());
app.use(express.json());
app.use(FileUpload());
app.use(express.static("public"));
app.use(ProductRoute);
app.use(AuthRoutes);
app.use(ReviewRoute); // Tambahkan ini
app.use(PromoRoute);
app.use(CustomerReviewRoutes);

db.sync()
  .then(() => {
    console.log("Database synced");
  })
  .catch((err) => {
    console.error("Failed to sync database:", err);
  });

app.listen(5000, () => {
  console.log("Server is running on port 5000");
});
