import {
  addBlog,
  deleteBlog,
  editBlog,
  getBlogs,
  viewBlog,
} from '../controller/blogController.js';
// import { Express } from 'express';
import express from 'express';

const router = express.Router();

router.get('/all', getBlogs);
router.post('/add', addBlog);
router.get('/view/:id', viewBlog);
router.put('/edit', editBlog);
router.delete('/delete', deleteBlog);

export default router;
