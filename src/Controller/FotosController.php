<?php

namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

/**
 * Fotos Controller
 *
 * @property \App\Model\Table\FotosTable $Fotos
 *
 * @method \App\Model\Entity\Foto[] paginate($object = null, array $settings = [])
 */
class FotosController extends AppController {

    public function beforeFilter(Event $event) {
        parent::beforeFilter($event);
        $this->Auth->allow(['lista', 'contacto']);

        $this->viewBuilder()->setLayout('admin');
    }

    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */
    public function index() {
        $this->paginate = [
            'contain' => ['Categorias']
        ];
        $fotos = $this->paginate($this->Fotos);

        $this->set(compact('fotos'));
        $this->set('_serialize', ['fotos']);
    }

    /**
     * View method
     *
     * @param string|null $id Foto id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null) {
        $foto = $this->Fotos->get($id, [
            'contain' => ['Categorias']
        ]);

        $this->set('foto', $foto);
        $this->set('_serialize', ['foto']);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $foto = $this->Fotos->newEntity();
        if ($this->request->is('post')) {
            $foto = $this->Fotos->patchEntity($foto, $this->request->getData());
            if ($this->Fotos->save($foto)) {
                $this->Flash->success(__('The foto has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The foto could not be saved. Please, try again.'));
        }
        $categorias = $this->Fotos->Categorias->find('list', ['limit' => 200]);
        $this->set(compact('foto', 'categorias'));
        $this->set('_serialize', ['foto']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Foto id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null) {
        $foto = $this->Fotos->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {

            if ($this->request->getData('photo.name') != '') {
                $path = new \Proffer\Lib\ProfferPath($this->Fotos, $foto, 'photo', $this->Fotos->behaviors()->Proffer->config('photo'));
                $path->deleteFiles($path->getFolder(), true);
            }

            $foto = $this->Fotos->patchEntity($foto, $this->request->getData());
            if ($this->Fotos->save($foto)) {
                $this->Flash->success(__('The foto has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The foto could not be saved. Please, try again.'));
        }
        $categorias = $this->Fotos->Categorias->find('list', ['limit' => 200]);
        $this->set(compact('foto', 'categorias'));
        $this->set('_serialize', ['foto']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Foto id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null) {
        $this->request->allowMethod(['post', 'delete']);
        $foto = $this->Fotos->get($id);
        if ($this->Fotos->delete($foto)) {
            $this->Flash->success(__('The foto has been deleted.'));

            if ($foto->photo != '') {
                $path = new \Proffer\Lib\ProfferPath($this->Fotos, $foto, 'photo', $this->Fotos->behaviors()->Proffer->config('photo'));
                $path->deleteFiles($path->getFolder(), true);
            }
        } else {
            $this->Flash->error(__('The foto could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }

    public function lista($categoria_id = 1) {
        $this->viewBuilder()->setLayout('default');

        $this->paginate = [
            'conditions' => [
                'Fotos.categoria_id' => $categoria_id
            ],
            'order' => [
                'Fotos.id' => 'DESC'
            ],
            'limit' => 30
        ];
        $fotos = $this->paginate($this->Fotos);

        $this->set(compact('fotos'));
        $this->set('_serialize', ['fotos']);
    }

    public function contacto() {
        $this->viewBuilder()->setLayout('default');

        if ($this->request->is(['patch', 'post', 'put'])) {
            $this->loadComponent('Email');
            $msj = "Nuevo contacto, los datos son:<br/><br/>";
            $msj .= "Nombre: " . $this->request->getData('nombre') . '<br/>';
            $msj .= "Email: " . $this->request->getData('email') . '<br/>';
            $msj .= "Telefono: " . $this->request->getData('telefono') . '<br/>';
            $msj .= "Mensaje: " . $this->request->getData('mensaje') . '<br/>';
            $viewVars = ['msj' => $msj];
            $this->Email->enviar($this->Email->correo_principal, 'Contacto', $viewVars, 'contacto');
            
            $this->Flash->success(__('El mensaje ha sido enviado.'));
            return $this->redirect('/');
        }
    }

}
