document.addEventListener("DOMContentLoaded", function() {
    const menuToggle = document.querySelector('.mobile-nav-toggle');
    const navbar = document.querySelector('#navbar');
  
    // Tambahkan event listener untuk klik pada menu hamburger
    menuToggle.addEventListener('click', function() {
      // Toggle class 'active' untuk menu
      navbar.classList.toggle('active');
    });
  
    // Tambahkan event listener untuk klik pada setiap tautan di menu
    navbar.querySelectorAll('a').forEach(function(item) {
      item.addEventListener('click', function() {
        // Hapus class 'active' dari menu setelah tautan diklik
        navbar.classList.remove('active');
      });
    });
  });
  