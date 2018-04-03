<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\BiografiasTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\BiografiasTable Test Case
 */
class BiografiasTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\BiografiasTable
     */
    public $Biografias;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.biografias'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('Biografias') ? [] : ['className' => BiografiasTable::class];
        $this->Biografias = TableRegistry::get('Biografias', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Biografias);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
