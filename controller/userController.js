import { db } from "../db.js";

const q = "SELECT * FROM users WHERE email = ? OR name = ?";

export const getUser = (req, res) => {
    const q = req.query.cat
      ? "SELECT * FROM users WHERE email=?"
      : "SELECT * FROM users";
  
    db.query(q, [req.query.email], (err, data) => {
      if (err) return res.status(500).send(err);
      if(data.length === 0){
        return res.json({mesage:'no data'})
      }else{
        console.log(data)
        return res.json(data)
      }
  
    //   return res.status(200).json(data);
    });
  };

  export const storeUser = (req, res) => {
    const sql = 'INSERT INTO users (name, email, password) VALUES (?, ?, ?)';

    db.query(sql,['mark','mark@gmail.com','password'],(err,data)=>{
      if (err) return res.status(500).send(err);
      
      console.log(data)
    })
  }