<?php
/**
 * @var \App\View\AppView $this
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Fotos'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="fotos form large-9 medium-8 columns content">
    <?= $this->Form->create($foto, ['type' => 'file']) ?>
    <fieldset>
        <legend><?= __('Add Foto') ?></legend>
        <?php
        echo $this->Form->control('categoria_id', ['options' => $categorias]);
        echo $this->Form->control('photo', ['type' => 'file']);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
