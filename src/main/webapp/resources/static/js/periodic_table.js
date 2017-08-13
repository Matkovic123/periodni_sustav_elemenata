function highlight(elementType){
    var allElements = document.getElementsByClassName('element-cell');
    var i;

    for(i=0; allElements.length > i; i++){
        if(!allElements[i].classList.contains(elementType)){
            allElements[i].style.opacity = 0.2;
        }
    }
}
function removeHighlight(){
    var allElements = document.getElementsByClassName('element-cell');
    var i;

    for(i=0; allElements.length > i; i++){
        allElements[i].style.opacity = 1;
    }
}
