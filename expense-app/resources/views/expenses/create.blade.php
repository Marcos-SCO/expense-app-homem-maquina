@extends('layouts.app')

@section('content')

<div class="container mt-5">

    <h1 class="mb-4">{{ __("Nova Despesa") }}</h1>

    <form action="{{ route('expenses.store') }}" method="POST" class="mb-4 content-form" hx-post="{{ route('expenses.store') }}" hx-boost="true" hx-target="main" hx-select="main" hx-push-url="true">
        @csrf

        <div class="row mb-3">
            <label for="category" class="col-sm-2 col-form-label">{{ __("Categoria") }}:</label>
            <div class="col-sm-10">
                <select name="category_id" id="category" class="form-select" data-js="category">
                    <option value="">
                        {{ __('Selectionar') }}
                    </option>

                    @foreach ($categories as $category)
                    <option value="{{ $category->id }}" {{ old('category_id')==$category->id ? 'selected' : '' }}>
                        {{ $category->name }}
                    </option>
                    @endforeach
                </select>
                @error('category_id')
                <div class="text-danger pt-2">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="row mb-3">
            <label for="description" class="col-sm-2 col-form-label">{{ __("Descrição da Despesa") }}:</label>
            <div class="col-sm-10">
                <input type="text" name="description" id="description" class="form-control" value="{{ old('description') }}">
                @error('description')
                <div class="text-danger pt-2">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="row mb-3">
            <label for="amount" class="col-sm-2 col-form-label">{{ __("Valor") }}:</label>
            <div class="col-sm-10">
                <input type="text" name="amount" id="amount" class="form-control" value="{{ old('amount') }}">
                @error('amount')
                <div class="text-danger pt-2">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <div class="row mb-3">
            <label for="date" class="col-sm-2 col-form-label">{{ __("Data da Despesa") }}:</label>
            <div class="col-sm-10">
                <input type="date" name="expense_date" id="date" class="form-control" value="{{ old('expense_date') }}">
                @error('expense_date')
                <div class="text-danger pt-2">{{ $message }}</div>
                @enderror
            </div>
        </div>

        <button type="submit" class="btn pink-button-color mt-4">+ {{ __("Adicionar Despesa") }}</button>
    </form>
</div>

@endsection