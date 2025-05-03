package stdgo._internal.unicode;
function isPrint(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L51"
        if (((_r : stdgo.GoUInt32) <= (255u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L52"
            return (stdgo._internal.unicode.Unicode__properties._properties[((_r : stdgo.GoUInt8) : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        };
        //"file:///home/runner/.go/go1.21.3/src/unicode/graphic.go#L54"
        return stdgo._internal.unicode.Unicode_in_.in_(_r, ...(stdgo._internal.unicode.Unicode_printranges.printRanges : Array<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>));
    }
