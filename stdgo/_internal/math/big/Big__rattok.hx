package stdgo._internal.math.big;
function _ratTok(_ch:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv.go#L18"
        return stdgo._internal.strings.Strings_containsrune.containsRune(("+-/0123456789.eE" : stdgo.GoString), _ch);
    }
