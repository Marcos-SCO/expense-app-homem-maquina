<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Category>
 */
class CategoryFactory extends Factory
{
    protected $model = \App\Models\Category::class;

    // Hardcoded list of expense category names
    protected static $categoryNames = [
        'Alimentação',
        'Transporte',
        'Lazer',
        'Saúde',
        'Educação',
        'Moradia',
        'Roupas',
        'Entretenimento',
        'Impostos',
        'Serviços',
    ];

    public function definition()
    {
        // This will not be used since we're defining categories manually
        return [];
    }

    // Method to create all categories
    public static function createAllCategories()
    {
        $self = new self();

        foreach (self::$categoryNames as $categoryName) {
            $self->create(['name' => $categoryName]);
        }
    }
}
