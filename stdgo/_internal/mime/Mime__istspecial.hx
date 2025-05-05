package stdgo._internal.mime;
function _isTSpecial(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/mime/grammar.go#L14"
        return stdgo._internal.strings.Strings_containsrune.containsRune(("()<>@,;:\\\"/[]?=" : stdgo.GoString), _r);
    }
