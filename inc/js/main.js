let item_active = document.querySelectorAll(".carousel-inner");
item_active.forEach(element => {
    element.firstElementChild.classList.add("active");
});

//for (let index = 0; index < item_active.length; index++) {
   // item_active[index].firstElementChild.classList.add("active");    
//}