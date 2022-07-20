import { RowDataPacket } from 'mysql2';

export default interface IPerfume extends RowDataPacket {
  id: number;
  perfumeName : string;
  productColor : string;
  
}