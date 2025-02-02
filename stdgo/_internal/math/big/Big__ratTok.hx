package stdgo._internal.math.big;
function _ratTok(_ch:stdgo.GoInt32):Bool {
        return stdgo._internal.strings.Strings_containsRune.containsRune(("+-/0123456789.eE" : stdgo.GoString), _ch);
    }
