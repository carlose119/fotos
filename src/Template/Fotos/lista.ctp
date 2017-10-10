<?php foreach ($fotos as $foto): ?>

    <div class="grid_4">
        <a href="<?= $this->Url->build('/img/fotos/photo/' . $foto->photo_dir . '/' . $foto->photo) ?>" class="gal_item">
            <img src="<?= $this->Url->build('/img/fotos/photo/' . $foto->photo_dir . '/square_' . $foto->photo) ?>" alt="">
            <!--<div class="gal_caption"></div>-->
            <span class="gal_magnify"></span>
        </a>
    </div>

<?php endforeach; ?>