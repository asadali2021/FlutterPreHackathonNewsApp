const  express = require('express');
const todoModel = require('../models/todoschema');

const addTodo = async(req,res) => {
    let userCreate = new todoModel({ todoName: req.body.todoTask })
    userCreate.save()
    .then((response) => {
        res.status(200).send({result: response, message: 'Todo Added Successfully'})
        
    })
    .catch((err) => {
        res.status(400).send({result: err.message, message: 'Todo Not Add Successfully'})
    })
}
const getAllTodo =  async(req,res)=>{
    var result = await todoModel.find({})
    res.status(200).send({message: 'All data fetched successfully', data: result})
}
module.exports = {addTodo, getAllTodo}