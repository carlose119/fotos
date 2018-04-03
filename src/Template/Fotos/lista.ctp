<?php foreach ($fotos as $foto): ?>

    <div class="grid_4">
        <a href="<?= $this->Url->build('/img/fotos/photo/' . $foto->photo_dir . '/' . $foto->photo) ?>" class="gal_item">
            <img src="<?= $this->Url->build('/img/fotos/photo/' . $foto->photo_dir . '/square_' . $foto->photo) ?>" alt="">
            <!--<div class="gal_caption"></div>-->
            <span class="gal_magnify"></span>
        </a>
    </div>

<?php endforeach; ?>

<div class="paginator grid_12">
    <ul class="pagination">
        <?= $this->Paginator->first('<< ' . __('')) ?>
        <?= $this->Paginator->prev('< ' . __('')) ?>
        <?= $this->Paginator->numbers() ?>
        <?= $this->Paginator->next(__('') . ' >') ?>
        <?= $this->Paginator->last(__('') . ' >>') ?>
    </ul>
    <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
</div>