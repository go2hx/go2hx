package stdgo._internal.unicode.utf16;
function decodeRune(_r1:stdgo.GoInt32, _r2:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf16/utf16.go#L38"
        if ((((((55296 : stdgo.GoInt32) <= _r1 : Bool) && (_r1 < (56320 : stdgo.GoInt32) : Bool) : Bool) && ((56320 : stdgo.GoInt32) <= _r2 : Bool) : Bool) && (_r2 < (57344 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/utf16/utf16.go#L39"
            return (((((_r1 - (55296 : stdgo.GoInt32) : stdgo.GoInt32)) << (10i64 : stdgo.GoUInt64) : stdgo.GoInt32) | ((_r2 - (56320 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32) + (65536 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf16/utf16.go#L41"
        return (65533 : stdgo.GoInt32);
    }
