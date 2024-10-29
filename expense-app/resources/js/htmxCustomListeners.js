function requestListeners() {
  // Add class when a request starts
  document.addEventListener('htmx:beforeRequest', function (event) {
      document.querySelector('main')?.classList.add('loading');
  });

  // Remove class after the HTMX swap completes
  document.addEventListener('htmx:afterSwap', function (event) {
      document.querySelector('main')?.classList.remove('loading');
  });

  // Remove class when navigating back from history
  document.addEventListener('htmx:historyRestore', function (event) {
      document.querySelector('main')?.classList.remove('loading');
  });
}

// Initialize request listeners
requestListeners();