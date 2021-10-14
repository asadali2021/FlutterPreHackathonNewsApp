const express = require('express');
const router = express.Router();
const {getAllTodo} = require('../Controller/todo');
router.post('/getAllTodo', getAllTodo);
module.exports = getAllTodo;