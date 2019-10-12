<?php

namespace App\Tests;

use PHPUnit\Framework\TestCase;

class HelloTest extends TestCase
{
    public function testHelloWorld()
    {
        ob_start();
        include __DIR__."/../src/HelloWorld.php";
        $output = ob_get_contents();
        ob_end_clean();
        $this->assertTrue($output == "Привіт світ!");
    }
}
