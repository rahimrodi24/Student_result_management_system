document.addEventListener("DOMContentLoaded", function() {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "sidebar.html", true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            document.querySelector("#menu").innerHTML = xhr.responseText;
        }
    };
    xhr.send();
});
