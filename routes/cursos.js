const express = require('express');
const router = express.Router();
const controller = require('../controllers/cursoController');

router.post('/', controller.create);

module.exports = router;

router.post('/edit/:id', controller.update);

// Rota para enviar o pedido de exclusão ao controller
router.post('/delete/:id', controller.delete);