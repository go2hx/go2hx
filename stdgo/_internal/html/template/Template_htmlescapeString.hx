package stdgo._internal.html.template;
function htmlescapeString(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.text.template.Template_htmlescapeString.htmlescapeString(_s?.__copy__())?.__copy__();
    }
