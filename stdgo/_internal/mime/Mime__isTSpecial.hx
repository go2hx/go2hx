package stdgo._internal.mime;
function _isTSpecial(_r:stdgo.GoInt32):Bool {
        return stdgo._internal.strings.Strings_containsRune.containsRune(("()<>@,;:\\\"/[]?=" : stdgo.GoString), _r);
    }