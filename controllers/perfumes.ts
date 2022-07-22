import { NextFunction, Request, RequestHandler, Response } from 'express';
import { formatSortString } from '../helpers/functions';
import IPerfume from '../interfaces/IPerfume';
import * as Perfume from '../models/perfume';
import { ErrorHandler } from '../helpers/errors';




const getAllPerfumes = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const sortBy: string = req.query.sort as string;
    const perfumes = await Perfume.getAllPerfumes(formatSortString(sortBy));

    res.setHeader(
      'Content-Range',
      `perfumes : 0-${perfumes.length}/${perfumes.length + 1}`
    );
    return res.status(200).json(perfumes);
  } catch (err) {
    next(err);
  }
}) as RequestHandler; // Used to avoid eslint error

// route GET by id
const getOnePerfume = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const { idPerfume } = req.params;
    const perfume = await Perfume.getPerfumeById(Number(idPerfume));
    perfume ? res.status(200).json(perfume) : res.sendStatus(404);
  } catch (err) {
    next(err);
  }
}) as RequestHandler;



export default {
  getAllPerfumes,
  getOnePerfume,
 
};
