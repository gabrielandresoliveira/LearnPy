const menu = document.querySelector('.menu');
const NavMenu = document.querySelector('.navbar');

menu.addEventListener('click', () => {
    menu.classList.toggle('ativo');
    NavMenu.classList.toggle('ativo');

    // Muda o ícone do menu entre barras e "X"
    const bars = document.querySelectorAll('.bar');
    bars.forEach(bar => {
        bar.classList.toggle('ativo');
    });
});
