<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Foto[]|\Cake\Collection\CollectionInterface $fotos
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Foto'), ['action' => 'add']) ?></li>
    </ul>
</nav>
<div class="fotos index large-9 medium-8 columns content">
    <h3><?= __('Fotos') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('categoria_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('photo') ?></th>
                <th scope="col"><?= $this->Paginator->sort('photo_dir') ?></th>
                <th scope="col"><?= $this->Paginator->sort('created') ?></th>
                <th scope="col"><?= $this->Paginator->sort('modified') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($fotos as $foto): ?>
            <tr>
                <td><?= $this->Number->format($foto->id) ?></td>
                <td><?= h($foto->categoria->nombre) ?></td>
                <td><?= h($foto->photo) ?></td>
                <td><?= h($foto->photo_dir) ?></td>
                <td><?= h($foto->created) ?></td>
                <td><?= h($foto->modified) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $foto->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $foto->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $foto->id], ['confirm' => __('Are you sure you want to delete # {0}?', $foto->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
    </div>
</div>
