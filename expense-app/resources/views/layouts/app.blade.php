<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{ env("APP_NAME", "Expense App") }}</title>
  @vite(['resources/css/app.css', 'resources/scss/app.scss', 'resources/js/app.js'])

  <script src="https://unpkg.com/htmx.org@1.8.4" integrity="sha384-H6m3NUDF59KD7C93qC5VR6WhZq94bD6E4e6tvDCEkbCbTtZjNe3G89aSkcvZw2cz" crossorigin="anonymous"></script>
</head>

<body>
  <header class="page-header py-5 text-white" hx-boost="true" hx-target="body" hx-swap="outerHTML" hx-push-url="true">

    <h1 class="text-center">{{ __('Registro de despesas') }}</h1>

    <nav class="text-center pt-3 pb-2">
      <a href="{{ route('expenses.index') }}" class="btn btn-light me-2 py-2 px-4">{{ __('Lista de despesas') }}</a>
      <a href="{{ route('expenses.create') }}" class="btn btn-light py-2 px-4">+{{ __('Adicionar Despesa') }}</a>
    </nav>
  </header>

  <main class="container mt-4 mb-5">

    <div data-js="loader" class="loader">{{ __('Carregando') }}...</div>

    @if (session('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert" data-js="success-alert">
      {{ session('success') }}
      <button type="button" class="btn-close" aria-label="Close"></button>
    </div>
    <script>
      function successMessage() {

        const alertBox = document.querySelector('[data-js="success-alert"]');
        if (!alertBox) return;

        const closeButton = alertBox.querySelector('.btn-close');

        closeButton.addEventListener('click', function () {
          alertBox.classList.add('hide-element');
        });
      }
      successMessage();
    </script>
    @endif

    @yield('content')
  </main>
</body>

</html>