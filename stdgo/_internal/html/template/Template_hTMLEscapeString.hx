package stdgo._internal.html.template;
function hTMLEscapeString(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.text.template.Template_hTMLEscapeString.hTMLEscapeString(_s?.__copy__())?.__copy__();
    }
