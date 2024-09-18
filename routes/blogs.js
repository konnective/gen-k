import {
  addBlog,
  deleteBlog,
  editBlog,
  getBlogs,
} from '../controller/blogController.js';
// import { Express } from 'express';
import express from 'express';

const router = express.Router();

router.get('/', getBlogs);
router.post('/add', addBlog);
router.put('/edit', editBlog);
router.delete('/delete', deleteBlog);

export default router;
