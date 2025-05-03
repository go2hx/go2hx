package stdgo._internal.unicode.utf16;
function decode(_s:stdgo.Slice<stdgo.GoUInt16>):stdgo.Slice<stdgo.GoInt32> {
        var _buf = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        //"file:///home/runner/.go/go1.21.3/src/unicode/utf16/utf16.go#L109"
        return stdgo._internal.unicode.utf16.Utf16__decode._decode(_s, _buf);
    }
