package stdgo._internal.unicode.utf16;
function isSurrogate(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf16/utf16.go#L31"
        return (((55296 : stdgo.GoInt32) <= _r : Bool) && (_r < (57344 : stdgo.GoInt32) : Bool) : Bool);
    }
