<?php

namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

/**
 * Users Controller
 *
 * @property \App\Model\Table\UsersTable $Users
 *
 * @method \App\Model\Entity\User[] paginate($object = null, array $settings = [])
 */
class UsersController extends AppController {
    
    public function beforeFilter(Event $event) {
        parent::beforeFilter($event);
        $this->Auth->allow(['login', 'logout']);
        
        $this->viewBuilder()->setLayout('admin');
    }
    
    public function login() {
        $this->viewBuilder()->layout('admin');
        if ($this->request->is('post')) {
            //pr($this->request->data);die();
                        
            $user = $this->Auth->identify();
            if ($user) {
                $this->Auth->setUser($user);
                return $this->redirect($this->Auth->redirectUrl());
            }
            $this->request->data['password'] = null;
            $this->Flash->error(__('Usuario Invalido'));
        }
    }

    public function logout() {
        $this->request->session()->destroy();
        return $this->redirect($this->Auth->logout());
    }
    
    public function home() {
        return $this->redirect(['controller' => 'Fotos', 'action' => 'index']);
    }

    /**
     * Index method
     *
     * @return \Cake\Http\Response|void
     */
    public function index() {
        return $this->redirect(['controller' => 'Fotos', 'action' => 'index']);
        $users = $this->paginate($this->Users);

        $this->set(compact('users'));
        $this->set('_serialize', ['users']);
    }

    /**
     * View method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|void
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null) {
        return $this->redirect(['controller' => 'Fotos', 'action' => 'index']);
        $user = $this->Users->get($id, [
            'contain' => []
        ]);

        $this->set('user', $user);
        $this->set('_serialize', ['user']);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        return $this->redirect(['controller' => 'Fotos', 'action' => 'index']);
        $user = $this->Users->newEntity();
        if ($this->request->is('post')) {
            $user = $this->Users->patchEntity($user, $this->request->getData());
            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The user could not be saved. Please, try again.'));
        }
        $this->set(compact('user'));
        $this->set('_serialize', ['user']);
    }

    /**
     * Edit method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null) {
        return $this->redirect(['controller' => 'Fotos', 'action' => 'index']);
        $user = $this->Users->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $user = $this->Users->patchEntity($user, $this->request->getData());
            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The user could not be saved. Please, try again.'));
        }
        $this->set(compact('user'));
        $this->set('_serialize', ['user']);
    }

    /**
     * Delete method
     *
     * @param string|null $id User id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null) {
        return $this->redirect(['controller' => 'Fotos', 'action' => 'index']);
        $this->request->allowMethod(['post', 'delete']);
        $user = $this->Users->get($id);
        if ($this->Users->delete($user)) {
            $this->Flash->success(__('The user has been deleted.'));
        } else {
            $this->Flash->error(__('The user could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
    
    public function changePassword($id = null) {
        $id = $this->request->session()->read('Auth.User.id');
        $user = $this->Users->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $oldpassword = $this->request->getData('oldpassword');
            $newpassword = $this->request->getData('newpassword');
            $repassword = $this->request->getData('repassword');

            $this->request->data['username'] = $this->request->session()->read('Auth.User.username');
            $this->request->data['password'] = $oldpassword;
            $user = $this->Auth->identify();
            if ($user) {
                if ($newpassword != $repassword) {
                    $this->Flash->error(__('Error! The new password and repeat password fields are not the same.'));
                } else {
                    $id = $this->request->session()->read('Auth.User.id');
                    $user = $this->Users->get($id, [
                        'contain' => []
                    ]);

                    $this->request->data['password'] = $newpassword;
                    $user = $this->Users->patchEntity($user, $this->request->getData());
                    if ($this->Users->save($user)) {
                        $this->Flash->success(__('Your password has been updated.'));
                    } else {
                        $this->Flash->error(__('Your password could not be updated. Please try again.'));
                    }
                }
            } else {
                $this->Flash->error(__('Sorry, your old password does not match.'));
            }
            return $this->redirect(['action' => 'changePassword']);
        }
        $this->set(compact('user'));
        $this->set('_serialize', ['user']);
    }

}
