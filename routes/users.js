import {getUser,storeUser} from '../controller/userController.js'
import express from "express";

const router = express.Router();

router.get("/", getUser);
router.post("/store", storeUser);

export default router