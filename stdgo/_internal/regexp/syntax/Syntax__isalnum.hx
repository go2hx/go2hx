package stdgo._internal.regexp.syntax;
function _isalnum(_c:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2101"
        return (((((48 : stdgo.GoInt32) <= _c : Bool) && (_c <= (57 : stdgo.GoInt32) : Bool) : Bool) || (((65 : stdgo.GoInt32) <= _c : Bool) && (_c <= (90 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (((97 : stdgo.GoInt32) <= _c : Bool) && (_c <= (122 : stdgo.GoInt32) : Bool) : Bool) : Bool);
    }
