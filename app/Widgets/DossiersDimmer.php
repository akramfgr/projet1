<?php

namespace App\Widgets;

use Arrilot\Widgets\AbstractWidget;

class DossiersDimmer extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        return view('widgets.dossiers', array_merge($this->config,[]));

    }
    public function shouldbedisplayed()
    {
        return true;
    }
}
