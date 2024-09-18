import { getPackages, getData } from '../controller/packageController.js';
// import { Express } from 'express';
import express from "express";

const router = express.Router();

router.get("/", getPackages);
router.get("/test", getData);

export default router