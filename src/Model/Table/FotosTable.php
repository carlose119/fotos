<?php

namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Fotos Model
 *
 * @property |\Cake\ORM\Association\BelongsTo $Categorias
 *
 * @method \App\Model\Entity\Foto get($primaryKey, $options = [])
 * @method \App\Model\Entity\Foto newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Foto[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Foto|bool save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Foto patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Foto[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Foto findOrCreate($search, callable $callback = null, $options = [])
 *
 * @mixin \Cake\ORM\Behavior\TimestampBehavior
 */
class FotosTable extends Table {

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config) {
        parent::initialize($config);

        $this->setTable('fotos');
        $this->setDisplayField('id');
        $this->setPrimaryKey('id');

        $this->addBehavior('Timestamp');
        
        $this->addBehavior('Proffer.Proffer', [
            'photo' => [// The name of your upload field
                'root' => WWW_ROOT . 'img', // Customise the root upload folder here, or omit to use the default
                'dir' => 'photo_dir', // The name of the field to store the folder
                'thumbnailSizes' => [// Declare your thumbnails
                    'square' => [// Define the prefix of your thumbnail
                        'w' => 250, // Width
                        'h' => 250, // Height
                        'fit' => true,
                        'orientate' => true,
                        'jpeg_quality' => 100
                    ],
                    'thumbnail' => [// Define a 2 thumbnail
                        'w' => 55,
                        'h' => 45,
                        'fit' => true,
                        'orientate' => true,
                        'jpeg_quality' => 100
                    ],
                    'medium' => [// Define a 3 thumbnail
                        'w' => 350,
                        'h' => 300,
                        'fit' => true,
                        'orientate' => true,
                        'jpeg_quality' => 100
                    ],
                    'large' => [// Define a 4 thumbnail
                        'w' => 1024,
                        'h' => 950,
                        'fit' => true,
                        'orientate' => true,
                        'jpeg_quality' => 100
                    ],
                ],
                'thumbnailMethod' => 'gd' // Options are Imagick or Gd
            ]
        ]);

        $this->belongsTo('Categorias', [
            'foreignKey' => 'categoria_id'
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator) {
        $validator
                ->integer('id')
                ->allowEmpty('id', 'create');
        
        $validator
                ->integer('categoria_id', 'Seleccione la categoria');

        $validator
                ->provider('proffer', 'Proffer\Model\Validation\ProfferRules')
                // Set the thumbnail resize dimensions
                ->add('photo', 'proffer', [
                    'rule' => ['dimensions', [
                            'min' => ['w' => 300, 'h' => 300],
                            'max' => ['w' => 3000, 'h' => 3000]
                        ]],
                    'message' => __('La imagen no tiene correctas dimensiones. (Minimo: 300px | Maximo 3000px).'),
                    'provider' => 'proffer'
                ])
                ->add('photo', 'extension', [
                    'rule' => ['extension', ['jpeg', 'png', 'jpg']],
                    'message' => __('La imagen no tiene una correcta extensión. (Permitidos: jpeg, png y jpg)'),
                ])
                ->add('photo', 'fileSize', [
                    'rule' => ['fileSize', '<=', '1MB'],
                    'message' => __('La imagen no debe exceder 1MB.'),
                ])
                ->add('photo', 'mimeType', [
                    'rule' => ['mimeType', ['image/jpeg', 'image/png']],
                    'message' => __('La imagen no tiene un correcto formato.'),
                ])
                ->requirePresence('photo', 'create')
                ->notEmpty('photo', __('Seleccione una foto'), 'create');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules) {
        $rules->add($rules->existsIn(['categoria_id'], 'Categorias'));

        return $rules;
    }

}
