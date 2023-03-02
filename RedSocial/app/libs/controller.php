<?php

classs Controller
{
    public function model($modelo)
    {
        require_once '../models/' . $model . '.php';

        return new $model;
    }

    public function view($view , $datos = [])
    {
        if (file_exists('../app/views/' . $view . '.php')){
            require_once '../app/views/' . $view . '.php';
            echo 'la vista existe';
        } else{
            echo 'la vista no existe';
        }
    }
}