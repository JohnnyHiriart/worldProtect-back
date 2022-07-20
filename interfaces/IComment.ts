import { RowDataPacket } from 'mysql2';

export default interface IComment extends RowDataPacket {
  id: number;
  pseudo : string;
  email : string;
  CommentText : string;
  
}