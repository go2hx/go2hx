package stdgo._internal.unicode;
function isNumber(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L105"
        if (((_r : stdgo.GoUInt32) <= (255u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L106"
            return (stdgo._internal.unicode.Unicode__properties._properties[((_r : stdgo.GoUInt8) : stdgo.GoInt)] & (4 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L108"
        return stdgo._internal.unicode.Unicode__isexcludinglatin._isExcludingLatin(stdgo._internal.unicode.Unicode_number.number, _r);
    }
