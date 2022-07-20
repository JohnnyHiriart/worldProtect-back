import { RowDataPacket } from 'mysql2';

export default interface IProduct extends RowDataPacket {
  id: number;
  idPerfume: number;
  productImage : string;
  productName : string;
  productTheme : string;
  productDesc : string;
  
}
