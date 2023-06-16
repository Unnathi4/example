{% set my_cool_string = "Wow!!"%}

{{my_cool_string}}

{% set animals = ['lion','tiger','monkey','snake']%}

{{ animals[0]}}
{{ animals[1]}}
{{ animals[2]}}
{{ animals[3]}}

{% for animal in animals%}
 My fav animal is {{animal}}
 {%endfor%}

