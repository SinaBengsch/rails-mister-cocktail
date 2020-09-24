const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-design');

  window.onscroll = function(){
    var top = window.scrollY;
    console.log(top);
    if (top >= 100){
      navbar.classList.add('active')
    } else {
      header.classList.remove('active');
    }
  }
}

export { initUpdateNavbarOnScroll };
