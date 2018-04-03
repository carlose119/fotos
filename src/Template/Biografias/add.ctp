<?php
/**
 * @var \App\View\AppView $this
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Biografias'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="biografias form large-9 medium-8 columns content">
    <?= $this->Form->create($biografia) ?>
    <fieldset>
        <legend><?= __('Add Biografia') ?></legend>
        <?php
            echo $this->Form->control('body');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
