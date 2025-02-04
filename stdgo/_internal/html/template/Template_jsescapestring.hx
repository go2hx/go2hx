package stdgo._internal.html.template;
function jSEscapeString(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.text.template.Template_jsescapestring.jSEscapeString(_s?.__copy__())?.__copy__();
    }
