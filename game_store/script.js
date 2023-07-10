let offset = 0; //смещение от левого края
let slidesImg = document.querySelectorAll('.slide-img')
let slider_line = document.querySelector('.slider_line')
document.querySelector('.slider_btn_next').addEventListener('click', function(){
    offset += 360;
    if(offset > size - 360){
        offset = 0;
    }
    slider_line.style.left = -offset + 'px';
    console.log(size)
});
document.querySelector('.slider_btn_back').addEventListener('click', function(){
    offset -= 360;
    if(offset < -size + ((size1 - 2) * 360)){
        offset = 0;
    }
    slider_line.style.left = -offset + 'px';
    console.log(size)
});
