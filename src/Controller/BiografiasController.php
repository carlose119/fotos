<?php

namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

/**
 * Biografias Controller
 *
 * @property \App\Model\Table\BiografiasTable $Biografias
 *
 * @method \App\Model\Entity\Biografia[] paginate($object = null, array $settings = [])
 */
class BiografiasController extends AppController {
    
    public function beforeFilter(Event $event) {
        parent::beforeFilter($event);
        $this->Auth->allow(['show']);
        
        $this->viewBuilder()->setLayout('admin');
    }

    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */
    public function index() {
        $biografias = $this->paginate($this->Biografias);

        $this->set(compact('biografias'));
        $this->set('_serialize', ['biografias']);
    }

    /**
     * View method
     *
     * @param string|null $id Biografia id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null) {
        $biografia = $this->Biografias->get($id, [
            'contain' => []
        ]);

        $this->set('biografia', $biografia);
        $this->set('_serialize', ['biografia']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Biografia id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null) {
        $biografia = $this->Biografias->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $biografia = $this->Biografias->patchEntity($biografia, $this->request->getData());
            if ($this->Biografias->save($biografia)) {
                $this->Flash->success(__('The biografia has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The biografia could not be saved. Please, try again.'));
        }
        $this->set(compact('biografia'));
        $this->set('_serialize', ['biografia']);
    }
    
    public function show(){
        $this->viewBuilder()->setLayout('default');
        $biografia = $this->Biografias->find('all')->first();
        $this->set(compact('biografia'));
    }

}
