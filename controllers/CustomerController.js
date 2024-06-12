import CustomerReview from "../models/CustomerReview.js";
import path from "path";
import fs from "fs";

export const getCustomerReviews = async (req, res) => {
  try {
    const reviews = await CustomerReview.findAll();
    res.status(200).json(reviews);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const createCustomerReview = async (req, res) => {
  if (!req.files || !req.files.image) {
    return res.status(400).json({ message: "No file uploaded" });
  }

  const file = req.files.image;
  const fileName = `${file.md5}${path.extname(file.name)}`;
  const filePath = path.resolve("public/images", fileName);

  file.mv(filePath, async (err) => {
    if (err) return res.status(500).json({ message: err.message });

    try {
      const review = await CustomerReview.create({
        imageUrl: `/images/${fileName}`,
        description: req.body.description,
      });
      res.status(201).json(review);
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  });
};

export const deleteCustomerReview = async (req, res) => {
  try {
    const review = await CustomerReview.findByPk(req.params.id);
    if (!review) return res.status(404).json({ message: "Review not found" });

    const filePath = path.resolve(`public${review.imageUrl}`);
    fs.unlink(filePath, (err) => {
      if (err) return res.status(500).json({ message: err.message });
    });

    await review.destroy();
    res.status(200).json({ message: "Review deleted successfully" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
