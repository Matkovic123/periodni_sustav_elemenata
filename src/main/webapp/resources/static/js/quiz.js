$("#submit-quiz").click(function () {

    var checkedInputs = $("input:checked");
    var answerIdArray = [];
    checkedInputs.each(function () {
        answerIdArray.push($(this).val());
        console.log(answerIdArray);
        // $.ajax({
        //     type: "POST",
        //     url: "/http://localhost:8080/little-chemist/quiz/results",
        //     data: {
        //         answerIdArray: a //notice that "myArray" matches the value for @RequestParam
        //                    //on the Java side
        //     }
        // })

    })
    ;
}