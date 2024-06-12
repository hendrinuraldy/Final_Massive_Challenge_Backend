import express from "express";
import { getCustomerReviews, createCustomerReview, deleteCustomerReview } from "../controllers/CustomerController.js";

const router = express.Router();

router.get("/customerreviews", getCustomerReviews);
router.post("/customerreviews", createCustomerReview);
router.delete("/customerreviews/:id", deleteCustomerReview);

export default router;
