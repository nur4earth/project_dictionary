<?php

//var_dump($data);




// mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
//     $mysqli = new mysqli("localhost", "root", "", "udemy_db");

//     $query = "SELECT * FROM test";

//     $result = $mysqli->query($query);

//     $data = array();
//     /* fetch associative array */
//     while ($row = $result->fetch_assoc()) {
//     	$data["id"] = $row['id'];
//     	$data["question"] = $row['question'];
//         $current = array();
//         $cur = explode("|", $row['options']);
//         $x = 'a';
//         foreach ($cur as  $value) {
//         	$current[$x] = $value;
//         	$x++;
//         }
//     	$data["options"] = [$current];
//     	$data["answer"] = $row['answer'];
//     	$data["score"] = (int)($row['score']);
//     	$data["status"] = $row['status'];
//     	$data["last"] = $row['last'];
//     }
    // echo "<pre>";
    // var_dump($data);
    // echo "</pre>";
require_once($_SERVER['DOCUMENT_ROOT'].'/app/core/database.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/app/core/model.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/app/models/Test.php');
$test = new \Model\Test();
$data = $test->where(['name'=>"Python"]);
$data = json_decode(json_encode($data), true);

foreach($data 	as $key=>$value) {
	$data[$key]['id'] = (string)$data[$key]['id'];
    unset($data[$key]['name']);
    $current = array();
    $cur = explode("|", $data[$key]['options']);
    $x = 'a';
    foreach ($cur as  $value) {
     $current[$x] = $value;
     $x++;
    }
    $data[$key]['options'] = [$current];

    //$data[$key] = json_encode($data[$key],JSON_UNESCAPED_UNICODE);
}
$data0 = array("JS" => $data);















// mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
//     $mysqli = new mysqli("localhost", "root", "", "udemy_db");

//     $query = "SELECT * FROM test";

//     $result = $mysqli->query($query);

//     $dat = array();
//     /* fetch associative array */
//     while ($row = $result->fetch_assoc()) {
//     	$dat["id"] = $row['id'];
//     	$dat["question"] = $row['question'];
//         $current = array();
//         $cur = explode("|", $row['options']);
//         $x = 'a';
//         foreach ($cur as  $value) {
//         	$current[$x] = $value;
//         	$x++;
//         }
//     	$dat["options"] = [$current];
//     	$dat["answer"] = $row['answer'];
//     	$dat["score"] = (int)($row['score']);
//     	$dat["status"] = $row['status'];
//     	$dat["last"] = $row['last'];
//     	break;
//     }
//     $dat = array(
//     	"JS" => [$dat]
//     );









    //echo "<pre>";
    //var_dump($data);
    //echo "</pre>";

    //print(json_encode($data,JSON_UNESCAPED_UNICODE));


?>

console.log(<?=json_encode($data0,JSON_UNESCAPED_UNICODE)?>);
var data1 = <?=json_encode($data0,JSON_UNESCAPED_UNICODE)?>;
var quiz = data1;


var quizApp = function () {
this.score = 0;
this.qno = 1;
this.currentque = 0;
var totalque = quiz.JS.length;
this.displayQuiz = function (cque) {
this.currentque = cque;


if (this.currentque < totalque) {

alert("HAHA");

$("#tque").html(totalque);
$("#previous").attr("disabled", false);
$("#next").attr("disabled", false);
$("#qid").html(quiz.JS[this.currentque].id + '.');
$("#question").html(quiz.JS[this.currentque].question);
$("#question-options").html("");
for (var key in quiz.JS[this.currentque].options[0]) {
	if (quiz.JS[this.currentque].options[0].hasOwnProperty(key)) {
		console.log('q' + key);
		console.log("OK");
		console.log(quiz.JS[this.currentque].last);
		if(quiz.JS[this.currentque].last == ('q' + key)) {

			$("#question-options").append("<div class='form-check option-block'>" +"<label class='form-check-label'>" +
"<input type='radio' checked = 'checked' class='form-check-input' name='option' id='q" + key + "' value='" + quiz.JS[this.currentque].options[0][key] + "'><span id='optionval'>" +
quiz.JS[this.currentque].options[0][key] +
"</span></label>");
		} else {
			$("#question-options").append("<div class='form-check option-block'>" +"<label class='form-check-label'>" +
"<input type='radio' class='form-check-input' name='option' id='q" + key + "' value='" + quiz.JS[this.currentque].options[0][key] + "'><span id='optionval'>" +
quiz.JS[this.currentque].options[0][key] +
"</span></label>");
		}
		
}
}
}
if (this.currentque <= 0) {
$("#previous").attr("disabled", true);
}
if (this.currentque >= totalque) {
$('#next').attr('disabled', true);
for (var i = 0; i < totalque; i++) {
this.score = this.score + quiz.JS[i].score;
}
return this.showResult(this.score);
}
}
this.showResult = function (scr) {
$("#result").addClass('result');
$("#result").html("<h1 class='res-header'>Total Score: &nbsp;" + scr + '/' + totalque + "</h1>");
for (var j = 0; j < totalque; j++) {
var res;
if (quiz.JS[j].score == 0) {
res = '<span class="wrong">' + quiz.JS[j].score + '</span><i class="fa fa-remove c-wrong"></i>';
} else {
res = '<span class="correct">' + quiz.JS[j].score + '</span><i class="fa fa-check c-correct"></i>';
}
$("#result").append(
'<div class="result-question"><span>Q ' + quiz.JS[j].id + '</span> &nbsp;' + quiz.JS[j].question + '</div>' +
'<div><b>Correct answer:</b> &nbsp;' + quiz.JS[j].answer + '</div>' +
'<div class="last-row"><b>Score:</b> &nbsp;' + res +
'</div>'
);
}
}
this.checkAnswer = function (option) {
var answer = quiz.JS[this.currentque].answer;
option = option.replace(/</g, "&lt;") //for <
option = option.replace(/>/g, "&gt;") //for >
option = option.replace(/"/g, "&quot;")
if (option == quiz.JS[this.currentque].answer) {
if (quiz.JS[this.currentque].score == "") {
quiz.JS[this.currentque].score = 1;
quiz.JS[this.currentque].status = "correct";
}
} else {
quiz.JS[this.currentque].status = "wrong";
}
}
this.changeQuestion = function (cque) {
this.currentque = this.currentque + cque;
this.displayQuiz(this.currentque);
}
}

var jsq = new quizApp();
var selectedopt;
$(document).ready(function () {
	jsq.displayQuiz(0);
	$('#question-options').on('change', 'input[type=radio][name=option]', function (e) {
		//var radio = $(this).find('input:radio');
		$(this).prop("checked", true);
		quiz.JS[jsq.currentque].last = $(this).attr('id');
		selectedopt = $(this).val();
		console.log(jsq.currentque);

	});
});

$('#next').click(function (e) {
e.preventDefault();
if (selectedopt) {
jsq.checkAnswer(selectedopt);
}
jsq.changeQuestion(1);
});
$('#previous').click(function (e) {
e.preventDefault();
if (selectedopt) {
jsq.checkAnswer(selectedopt);
}
jsq.changeQuestion(-1);
});

