package stdgo._internal.unicode;
function isUpper(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L186"
        if (((_r : stdgo.GoUInt32) <= (255u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L187"
            return (stdgo._internal.unicode.Unicode__properties._properties[((_r : stdgo.GoUInt8) : stdgo.GoInt)] & (96 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((32 : stdgo.GoUInt8));
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/letter.go#L189"
        return stdgo._internal.unicode.Unicode__isexcludinglatin._isExcludingLatin(stdgo._internal.unicode.Unicode_upper.upper, _r);
    }
