import productsController from './controllers/products';
import perfumesController from './controllers/perfumes';
import commentsController from './controllers/comments';
// import authController from './controllers/auth';
import { Express } from 'express';

const setupRoutes = (server: Express) => {

//route Products ///

//route GET ALL
server.get('/api/products', productsController.getAllProducts);

//route GET by id
server.get('/api/products/:idProduct', productsController.getOneProduct);


//route Perfumes ///

//route GET ALL
server.get('/api/perfumes', perfumesController.getAllPerfumes);

//route GET by id
server.get('/api/perfumes/:idPerfume', perfumesController.getOnePerfume);


//route Comments ///

//route GET ALL
server.get('/api/comments', commentsController.getAllComments);

//route GET by id
server.get('/api/comments/:idComment', commentsController.getOneComment);

//route POST

server.post('/api/comments', commentsController.addComment);

};

export default setupRoutes;
