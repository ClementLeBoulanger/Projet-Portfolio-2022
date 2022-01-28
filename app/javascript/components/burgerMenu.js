export function burgerBouton() {
  const burgerBouton = document.querySelector('.nav-burger');
  const burgerLines =document.querySelectorAll('.burger-line');
  const burgerMenu = document.querySelector('.nav-menu-burger')

  burgerBouton.addEventListener('click', () => {
    if (burgerLines[1].style.opacity === "0") {
      burgerLines[1].style.opacity = "1";
      burgerLines[1].style.transitionDelay = "0.2";
      burgerMenu.style.display = "none"
    } else {
      burgerMenu.style.display = "block"
      burgerLines[1].style.opacity = "0";
    }

    if (burgerLines[0].style.top === "50%") {
      burgerLines[0].style.top = "0%";
      burgerLines[0].style.transform = "rotate(0deg)";
    } else {
      burgerLines[0].style.top = "50%";
      burgerLines[0].style.transform = "rotate(-45deg)";
      burgerLines[0].style.transitionDelay = "0.2";
    }

    if (burgerLines[2].style.top === "50%") {
      burgerLines[2].style.top = "20px";
      burgerLines[2].style.transform = "rotate(0deg)";
    } else {
      burgerLines[2].style.top = "50%";
      burgerLines[2].style.transform = "rotate(45deg)";
      burgerLines[2].style.transitionDelay = "0.2";
    }

  })
}
