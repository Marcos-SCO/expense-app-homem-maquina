@extends('layouts.app')

@section('content')
<div class="container">
  <h1 class="mb-4">Despesas</h1>

  <a href="{{ route('expenses.create') }}" class="btn btn-primary mb-3">Nova Despesa</a>

  <div class="list-container">
    <ul class="list-group">
      @foreach ($expenses as $expense)
      <li class="list-group-item d-flex justify-content-between align-items-center">
    
        <div>
          <a href="{{ route('expenses.edit', $expense->id) }}" class="text-decoration-none" title="Editar">
    
            <div class="d-flex">
              <div class="fw-bold text-success"><span>R$ {{ number_format($expense->amount, 2, ',', '.') }}</span></div>
    
              <div> <span class="mx-2">|</span><b>Data:</b> <span>{{ \Carbon\Carbon::parse($expense->expense_date)->format('d/m/Y') }}</span></div>
    
              <div> <span class="mx-2">|</span><b>Descrição:</b> <span>{{ $expense->description }}</span></div>
    
              <div> <span class="mx-2">|</span><b>Categoria:</b> <span>{{ $expense->category->name }}</span></div>
            </div>
          </a>
        </div>
    
        <div class="d-flex gap-2">
          <a href="{{ route('expenses.edit', $expense->id) }}" class="btn btn-warning btn-sm">Editar</a>
    
          <form action="{{ route('expenses.destroy', $expense->id) }}" method="POST" onsubmit="return confirm('Tem certeza que deseja excluir esta despesa?');">
            @csrf
            @method('DELETE')
            <button type="submit" class="btn btn-danger btn-sm">Excluir</button>
          </form>
        </div>
      </li>
      @endforeach
    </ul>
  </div>

  <div class="mt-4 d-flex justify-center pagination-container">
    {{ $expenses->links('pagination::bootstrap-4') }}
  </div>

</div>
@endsection