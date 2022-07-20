import { NextFunction, Request, RequestHandler, Response } from 'express';
import { formatSortString } from '../helpers/functions';
import IComment from '../interfaces/IComment';
import * as Comment from '../models/comment';
import { ErrorHandler } from '../helpers/errors';




const getAllComments = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const sortBy: string = req.query.sort as string;
    const comments = await Comment.getAllComments(formatSortString(sortBy));

    res.setHeader(
      'Content-Range',
      `comments : 0-${comments.length}/${comments.length + 1}`
    );
    return res.status(200).json(comments);
  } catch (err) {
    next(err);
  }
}) as RequestHandler; // Used to avoid eslint error

// route GET by id
const getOneComment = (async (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  try {
    const { idComment } = req.params;
    const comment = await Comment.getCommentById(Number(idComment));
    comment ? res.status(200).json(comment) : res.sendStatus(404);
  } catch (err) {
    next(err);
  }
}) as RequestHandler;



export default {
  getAllComments,
  getOneComment,
 
};
