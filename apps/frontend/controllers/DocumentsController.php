<?php
/**
 * Created by Jacky.
 * User: Jacky
 * E-Mail: jacky@carocrm.com or jacky@youaddon.com
 * Date: 8/17/2015
 * Time: 11:14 AM
 * Project: carofw
 * File: DocumentsController.php
 */

namespace Modules\Frontend\Controllers;


class DocumentsController extends ControllerCustom
{
    public function indexAction()
    {
        $this->view->setTemplateAfter('document');
    }
}