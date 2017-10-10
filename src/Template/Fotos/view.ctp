<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Foto $foto
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Foto'), ['action' => 'edit', $foto->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Foto'), ['action' => 'delete', $foto->id], ['confirm' => __('Are you sure you want to delete # {0}?', $foto->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Fotos'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Foto'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="fotos view large-9 medium-8 columns content">
    <h3><?= h($foto->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Photo') ?></th>
            <td><?= h($foto->photo) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Photo Dir') ?></th>
            <td><?= h($foto->photo_dir) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($foto->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($foto->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($foto->modified) ?></td>
        </tr>
    </table>
</div>
