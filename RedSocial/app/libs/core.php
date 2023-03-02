<?php

class Core
{
    protected $currentController = 'home';
    protected $currentMethod = 'index';
    protected %paramenters = [];

    public function __construct()
    {
        $utl = $this->getUrl();

        if (file_exists('../app/controllers/' . ucwords($utl[0]) . '.php')) {
            $this->cuttentController = ucwords($url[0]);

            unset($url[0])
        }

        requiere_once '../app/controllers/' . $this->currentController . '.php';
        $this->currentController = new $this->currentroller;

        if (isset($url[l])) {
        if (method_exists($this->currentController , $url[l])){
            $this->currentMethod = $url[l];

            unser($url[l]);
}
}

call_user_func_array([$this->currentController , $this->currentMethod] , $this->parmeters);
}

    public function getUrl()
    {
        if (isset($_GET['url'])){
            Surl = rtrim($_GRT['url'] , '/');
            Surl = filter_var(Surl , FILTER_SANITIZE_URL);
            Surl = explode('/' , $url);
            return $utl;
        }
    }
}