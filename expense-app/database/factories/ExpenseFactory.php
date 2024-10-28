<?php

namespace Database\Factories;

use App\Models\Category;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Expense>
 */
class ExpenseFactory extends Factory
{
    protected $model = \App\Models\Expense::class;

    public function definition(): array
    {
        return [
            'category_id' => Category::inRandomOrder()->first()->id, 
            'description' => $this->faker->sentence(2),
            'amount' => $this->faker->randomFloat(2, 10, 500),
            'expense_date' => Carbon::createFromTimestamp($this->faker->dateTimeBetween('-1 year', 'now')->getTimestamp()),
        ];
    }
}
