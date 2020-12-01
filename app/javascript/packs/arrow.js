let first= document.querySelector(".first").getBoundingClientRect().y
let second = document.querySelector(".second").getBoundingClientRect().y
let third = document.querySelector(".third").getBoundingClientRect().y
let fourth = document.querySelector(".fourth").getBoundingClientRect().y

let counter = 1
let arrow = document.getElementById("arrow")
arrow.classList.remove("hidden");

const arrowScroll = () => {
  

  if (counter == 1) {
    window.scroll(0, second)
    counter++
    console.log(counter)
  } 
  else if (counter == 2) {
    window.scroll(0, third)
    counter++
  }
  else if (counter == 3){
    window.scroll(0, fourth)
    counter++
    arrow.classList.add("hidden")
  }
  else  {
    counter = 1

  } //(counter = 3)
    




  // let height = document.querySelector(".inner").clientHeight
  // window.scrollBy(0,height);

  // height is true, y is relative -> we look for the shortes relative y
  // we take the absolute position + the relative distance to next and scroll
  // that point 
}

export { arrowScroll };

