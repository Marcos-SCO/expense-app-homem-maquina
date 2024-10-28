<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{ env("APP_NAME", "Expense App") }}</title>
  @vite(['resources/css/app.css', 'resources/scss/app.scss', 'resources/js/app.js'])
</head>

<body>
  <header class="page-header py-5 text-white">
    <h1 class="text-center">Registro de Despesas</h1>

    <nav class="text-center py-2">
      <a href="{{ route('expenses.index') }}" class="btn btn-light me-2">Lista de Despesas</a>
      <a href="{{ route('expenses.create') }}" class="btn btn-light">Adicionar Despesa</a>
    </nav>
  </header>

  <main class="container mt-4 mb-5">
    @yield('content')
  </main>
</body>

</html>