@extends('layouts.app')

@section('content')
<div class="container" hx-boost="true" hx-target="body" hx-swap="outerHTML" hx-push-url="true">
  <h1 class="mb-4">{{ __("Despesas") }}</h1>

  <a href="{{ route('expenses.create') }}" class="btn pink-button-color mb-4" title="{{ __('Adicionar nova dispesa') }}">+ {{ __('Nova Despesa') }}</a>

  <div class="list-container">
    <ul class="list-group">

      <li class="list-title list-group-item d-flex justify-content-between align-items-center">

        <div class="w-100">

          <div class="item-info-container d-flex justify-content-between py-4">
            <div class="date"><b>{{ __('Data') }}</b></div>

            <div class="amount"><b>{{ __('Valor') }}</b></div>

            <div class="category"><b>{{ __('Categoria') }}</b></div>

            <div class="description"><b>{{ __('Descrição') }}</b></div>

          </div>

        </div>

        <div class="list-action d-flex gap-2" style="'min-width: 120px"></div>
      </li>

      @foreach ($expenses as $expense)
      <li class="list-body-item list-group-item d-flex justify-content-between align-items-center">

        <div class="w-100">
          <a href="{{ route('expenses.edit', $expense->id) }}" class="text-decoration-none" title="Editar">

            <div class="item-info-container d-flex justify-content-between py-4">
              <div class="date"><span><b>{{ \Carbon\Carbon::parse($expense->expense_date)->format('d/m/Y') }}</b></span></div>

              <div class="amount fw-bold text-success"><span><b>R$ {{ number_format($expense->amount, 2, ',', '.') }}</b></span></div>

              <div class="category"><span><b>{{ $expense->category->name }}</b></span></div>

              <div class="description"><span><b>{{ $expense->description }}</b></span></div>

            </div>
          </a>
        </div>

        <div class="list-action d-flex gap-2">
          <a href="{{ route('expenses.edit', $expense->id) }}" class="btn btn-warning btn-sm d-flex align-items-center" title="{{ __('Editar') }}">{{ __('Editar') }}r</a>

          <form action="{{ route('expenses.destroy', $expense->id) }}" method="POST" onsubmit="return confirm('{{ __('Tem certeza que deseja excluir esta despesa?') }}');">
            @csrf
            @method('DELETE')
            <button type="submit" class="btn btn-danger">Excluir</button>
          </form>

        </div>
      </li>
      @endforeach
    </ul>
  </div>

  <div class="mt-5 d-flex justify-center pagination-container">
    {{ $expenses->links('pagination::bootstrap-4') }}
  </div>

</div>
@endsection