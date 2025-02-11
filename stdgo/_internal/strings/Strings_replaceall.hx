package stdgo._internal.strings;
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new_:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings_replace.replace(_s?.__copy__(), _old?.__copy__(), _new_?.__copy__(), (-1 : stdgo.GoInt))?.__copy__();
    }
