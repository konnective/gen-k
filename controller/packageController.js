import { db } from '../db.js';
import axios from 'axios';

const q = 'SELECT * FROM users WHERE email = ? OR name = ?';

export const getPackages = (req, res) => {
  const sql = `
      SELECT t1.name as user_name, t2.*
      FROM users t1
      LEFT JOIN tblpackage t2 ON t1.id = t2.added_by;
    `;

  db.query(sql, (err, data) => {
    if (err) return res.status(500).send(err);

    let newP = 0;
    let james = Array(5);
    let arr = [];
    james.map((item) => console.log('i am james'));
    data.map((item) => {
      if (item.price !== 'null') {
        newP += item.price;
        // console.log(newP)
      }

      const newObj = {
        name: item.user_name,
        amount: item.price,
      };
      arr.push(newObj);
    });
    // console.log(arr)
    return res.json({ data: arr });
    // return res.json(data)
  });
};
export const getData = (req, res) => {
  const strr = [
    {
      id: 3,
      title: 'Scarborou',
      description: '5631 Steeles Ave East, Unit 6, Scarborough ON M1V 5P6',
    },
  ];

  axios.get('https://ztpl.net/rollz_api/api/menu_items').then((ress) => {
    console.log(ress.data);
  });

  // const strify = JSON.stringify(blog)

  return res.json({ data: [] });
};
