import pool from '../db-config';
import IPerfume from '../interfaces/IPerfume';
// import { ResultSetHeader } from 'mysql2';

const getAllPerfumes = async (sortBy = ''): Promise<IPerfume[]> => {
  let sql = `SELECT * FROM perfumes`;
  if (sortBy) {
    sql += ` ORDER BY ${sortBy}`;
  }
  const results = await pool.promise().query<IPerfume[]>(sql);
  return results[0];
};

//route by title
const getPerfumeById = async (idPerfume: number): Promise<IPerfume> => {
  const [results] = await pool
    .promise()
    .query<IPerfume[]>('SELECT * FROM perfumes WHERE id = ?', [idPerfume]);
  return results[0];
};



export {
  getAllPerfumes,
  getPerfumeById,
}
