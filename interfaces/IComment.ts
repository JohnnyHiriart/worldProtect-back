import { RowDataPacket } from 'mysql2';

export default interface IComment extends RowDataPacket {
  id: number;
  pseudo : string;
  date : Date;
  email : string;
  commentText : string;
  
}