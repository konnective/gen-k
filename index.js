import express from 'express';
import cookieParser from 'cookie-parser';
import cors from 'cors';

import fs from 'fs';

// const express = require('express');

// console.log("Connected!");

import userRoutes from './routes/users.js';
import packageRoutes from './routes/package.js';
import blogRoutes from './routes/blogs.js';

const app = express();

app.use(express.json());
app.use(cookieParser());
app.use(cors());
// app.use(express.json());

const router = express.Router();

const Tutorial = function (tutorial) {
  this.title = tutorial.title;
  this.description = tutorial.description;
  this.published = tutorial.published;
};

const tutorial = new Tutorial({
  title: 'title',
  description: 'descriptionrs',
  published: false,
});

app.use('/api/users', userRoutes);

app.use('/api/packages', packageRoutes);
app.use('/api/blogs', blogRoutes);

app.listen(8800, (req, res) => {
  console.log('Connected!');
});
