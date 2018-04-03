<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Biografia $biografia
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Biography'), ['action' => 'edit', $biografia->id]) ?> </li>
        <li><?= $this->Html->link(__('Biography'), ['action' => 'index']) ?> </li>
    </ul>
</nav>
<div class="biografias view large-9 medium-8 columns content">
    <h3><?= h($biografia->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($biografia->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($biografia->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($biografia->modified) ?></td>
        </tr>
    </table>
    <div class="row">
        <h4><?= __('Body') ?></h4>
        <?= $this->Text->autoParagraph(h($biografia->body)); ?>
    </div>
</div>
