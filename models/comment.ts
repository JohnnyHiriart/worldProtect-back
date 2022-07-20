import pool from '../db-config';
import IComment from '../interfaces/IComment';
import { ResultSetHeader } from 'mysql2';

const getAllComments = async (sortBy = ''): Promise<IComment[]> => {
  let sql = `SELECT * FROM comments`;
  if (sortBy) {
    sql += ` ORDER BY ${sortBy}`;
  }
  const results = await pool.promise().query<IComment[]>(sql);
  return results[0];
};

//route by title
const getCommentById = async (idComment: number): Promise<IComment> => {
  const [results] = await pool
    .promise()
    .query<IComment[]>('SELECT * FROM comments WHERE id = ?', [idComment]);
  return results[0];
};



export {
  getAllComments,
  getCommentById,
}
