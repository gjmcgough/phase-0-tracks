<!-- 
Learning jQuery:
-Understand the overall concept and purpose of the technology
-Use resources such as jQuery docs and supplement with stackoverflow for further understanding
-Find cheat sheet for jQuery 
-When you believe you understand a concept from reading it, and possibly copy and paste doc codes, try it our for myself
-If you start to feel stuck step away and clear your mind for a few minutes
-W3 schools very helpful


jQuery Google CDN:

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>



jQuery Basic Syntax:
$(selector).action()

A $ sign to define/access jQuery
A (selector) to "query (or find)" HTML elements
A jQuery action() to be performed on the element(s)

jQuery uses CSS syntax to select elements[ ".test" is class test, #test is id test].
i.e. $(".test").hide() - hides all elements with class="test".
$("#test").hide() - hides the element with id="test".



jQuery Basic Template:

$(document).ready(function() {
    $('elementToInteractWith').event(function() {
        $('elementToAffect').effect();
    });
});



Most USeful:
For me the most useful was going through W3 schools and reading through their intro and syntax, while also messing around with their try it editor and using my own codes in sublime.
 -->