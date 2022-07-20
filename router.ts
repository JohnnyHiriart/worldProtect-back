import productsController from './controllers/products';
import authController from './controllers/auth';
import { Express } from 'express';

const setupRoutes = (server: Express) => {

//route Products ///

//route GET ALL
server.get('/api/products', productsController.getAllProducts);

//route GET by id
server.get('/api/products/:idProduct', productsController.getOneProduct);



};

export default setupRoutes;
