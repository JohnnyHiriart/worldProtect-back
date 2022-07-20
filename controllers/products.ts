import { NextFunction, Request, RequestHandler, Response } from 'express';
import { formatSortString } from '../helpers/functions';
import IProduct from '../interfaces/IProduct';
import * as Product from '../models/product';
import { ErrorHandler } from '../helpers/errors';




const getAllProducts = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const sortBy: string = req.query.sort as string;
    const products = await Product.getAllProducts(formatSortString(sortBy));

    res.setHeader(
      'Content-Range',
      `products : 0-${products.length}/${products.length + 1}`
    );
    return res.status(200).json(products);
  } catch (err) {
    next(err);
  }
}) as RequestHandler; // Used to avoid eslint error

// route GET by id
const getOneProduct = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const { idProduct } = req.params;
    const product = await Product.getProductById(Number(idProduct));
    product ? res.status(200).json(product) : res.sendStatus(404);
  } catch (err) {
    next(err);
  }
}) as RequestHandler;



export default {
  getAllProducts,
  getOneProduct,
 
};
