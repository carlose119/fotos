<div class="users form large-9 medium-8 columns content">
    
    <!-- form start -->
    <?= $this->Form->create($user) ?>
    <div class="form-group">
        <label for="inputPassword" class="col-sm-3 control-label">Old Password</label>
        <div class="col-sm-4">
            <?= $this->Form->control('oldpassword', ['label' => false, 'class' => "form-control", 'placeholder' => "Contraseña anterior", 'required' => 'required', 'type' => 'password']) ?>
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword" class="col-sm-3 control-label">New Password</label>
        <div class="col-sm-4">
            <?= $this->Form->control('newpassword', ['label' => false, 'class' => "form-control", 'placeholder' => "Nueva contraseña", 'required' => 'required', 'type' => 'password']) ?>
        </div>
    </div>
    <div class="form-group">
        <label for="inputRepassword" class="col-sm-3 control-label">Repeat your password</label>
        <div class="col-sm-4">
            <?= $this->Form->control('repassword', ['label' => false, 'class' => "form-control", 'placeholder' => "Repita su contraseña", 'required' => 'required', 'type' => 'password']) ?>
        </div>
    </div>                  
    <hr />
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <?= $this->Form->button(__('Modify'), ['class' => 'btn btn-primary']) ?>
            <?= $this->Html->link(__('Cancel'), ['controller' => 'users', 'action' => 'home'], ['class' => 'btn btn-default']) ?>
        </div>
    </div>
    <br />
    <?= $this->Form->end() ?>

</div>