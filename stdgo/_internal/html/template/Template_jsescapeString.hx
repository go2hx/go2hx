package stdgo._internal.html.template;
function jsescapeString(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.text.template.Template_jsescapeString.jsescapeString(_s?.__copy__())?.__copy__();
    }
