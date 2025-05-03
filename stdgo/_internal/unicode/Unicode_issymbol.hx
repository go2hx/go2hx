package stdgo._internal.unicode;
function isSymbol(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L142"
        if (((_r : stdgo.GoUInt32) <= (255u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L143"
            return (stdgo._internal.unicode.Unicode__properties._properties[((_r : stdgo.GoUInt8) : stdgo.GoInt)] & (8 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L145"
        return stdgo._internal.unicode.Unicode__isexcludinglatin._isExcludingLatin(stdgo._internal.unicode.Unicode_symbol.symbol, _r);
    }
