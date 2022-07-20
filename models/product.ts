import pool from '../db-config';
import IProduct from '../interfaces/IProduct';
import { ResultSetHeader } from 'mysql2';

const getAllProducts = async (sortBy = ''): Promise<IProduct[]> => {
  let sql = `SELECT * FROM products`;
  if (sortBy) {
    sql += ` ORDER BY ${sortBy}`;
  }
  const results = await pool.promise().query<IProduct[]>(sql);
  return results[0];
};

//route by title
const getProductById = async (idProduct: number): Promise<IProduct> => {
  const [results] = await pool
    .promise()
    .query<IProduct[]>('SELECT * FROM products WHERE id = ?', [idProduct]);
  return results[0];
};



export {
  getAllProducts,
  getProductById,
}
