import { db } from '../db.js';

export const getBlogs = (req, res) => {
  const sql = `
        SELECT t1.name as author, t2.*
        FROM users t1
        LEFT JOIN blogs t2 ON t1.id = t2.user_id;
      `;

  db.query(sql, (err, data) => {
    if (err) return res.status(500).send(err);

    // console.log(arr)
    return res.json({ data: data });
    // return res.json(data)
  });
};

export const addBlog = (req, res) => {
  const sql = `
 INSERT INTO blogs (title, description, img)
VALUES ('${req.body.title}', '${req.body.description}', '${req.body.img}');
`;

  db.query(sql, (err, data) => {
    if (err) return res.status(500).send(err);

    // console.log(arr)
    return res.json({ success: true });
    // return res.json(data)
  });
};

//for view blof
export const viewBlog = (req, res) => {
  const sql = `
  SELECT t1.name as author, t2.*
  FROM users t1
  LEFT JOIN blogs t2 ON t1.id = t2.user_id
  WHERE t2.id = ${req.params.id};
`;

  db.query(sql, (err, data) => {
    if (err) return res.status(500).send(err);

    // console.log(data[0]);
    return res.json({ data: data[0] });
    // return res.json(data)
  });
};

//for editing blog
export const editBlog = (req, res) => {
  const sql = `UPDATE blogs
  SET title = ?, description = ?, img = ?
  WHERE id = ?`;

  const params = [
    req.body.title,
    req.body.description,
    req.body.img,
    req.body.id,
  ];

  db.query(sql, params, (err, data) => {
    if (err) return res.status(500).send(err);

    getBlogs(req, res);
    // console.log(arr)
    // return res.json({ success: true });
    // return res.json(data)
  });
};

export const deleteBlog = (req, res) => {
  const sql = `DELETE FROM blogs
  WHERE id = ?`;

  const params = [req.body.id];

  db.query(sql, params, (err, data) => {
    if (err) return res.status(500).send(err);

    getBlogs(req, res);
    // console.log(arr)
    // return res.json({ success: true });
    // return res.json(data)
  });
};
