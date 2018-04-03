<div class="grid_5">
    <h3>Info Contact</h3>
    <p>24/7 support is on for all <span class="color1"><a href="http://www.templatemonster.com/website-templates.php" rel="nofollow">premium designs</a></span> of TemplateMonster. Free templates go without it.</p>
    <p>Need help in customization? Ask guys from <span class="color1"><a href="http://www.templatetuning.com/" rel="nofollow">TemplateTuning</a></span>.</p>
    The Company Name Inc. <br>
    9870 St Vincent Place,<br>
    Glasgow, DC 45 Fr 45.<br>
    Telephone: +1 800 603 6035<br>
    FAX: +1 800 889 9898<br>
    E-mail: <a href="#">mail@demolink.org</a>
</div>
<div class="grid_6 preffix_1">
    <h3>Form Contact</h3>    
    <?= $this->Form->create('contacto', ['id' => 'form']) ?>
    <div class="success_wrapper">
        <div class="success-message">Contact form submitted</div>
    </div>
    <label class="name">
        <?= $this->Form->control('nombre', ['label' => false, 'type' => 'text', 'placeholder' => 'Name', 'required' => true, 'data-constraints' => "@Required @JustLetters"]) ?>
        <span class="empty-message">*El campo no puede esta vacio.</span>
        <span class="error-message">*This is not a valid name.</span>
    </label>
    <label class="email">        
        <?= $this->Form->control('email', ['label' => false,'type' => 'email', 'placeholder' => 'E-mail', 'required' => true, 'data-constraints' => "@Required @Email"]) ?>
        <span class="empty-message">*El campo no puede esta vacio.</span>
        <span class="error-message">*This is not a valid email.</span>
    </label>
    <label class="phone">
        <?= $this->Form->control('telefono', ['label' => false,'type' => 'number', 'placeholder' => 'Phone', 'required' => true, 'data-constraints' => "@Required @JustNumbers"]) ?>
        <span class="empty-message">*El campo no puede esta vacio.</span>
        <span class="error-message">*This is not a valid phone.</span>
    </label>
    <label class="message">
        <?= $this->Form->control('mensaje', ['label' => false, 'type' => 'textarea', 'placeholder' => 'Message', 'required' => true, 'data-constraints' => "@Required @Length(min=20,max=999999)"]) ?>
        <span class="empty-message">*El campo no puede esta vacio.</span>
        <span class="error-message">*The message is too short.</span>
    </label>
    <div>
        <div class="clear"></div>
        <div class="btns">
            <?= $this->Form->button('Submit', ['data-type' => "submit", 'class' => "btn bt__2"]) ?>
        </div>
    </div>
    <?= $this->Form->end() ?>
</div>
