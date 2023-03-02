<?php

class home extends Controller
{
    public function __construct()
    {

    }

    public function index()
    {
       $this->view('pages/login');
    }
}