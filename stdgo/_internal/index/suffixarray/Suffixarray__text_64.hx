package stdgo._internal.index.suffixarray;
function _text_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L10"
        if (((((_text.length : stdgo.GoInt64) : stdgo.GoInt) != (_text.length)) || (_text.length != (_sa.length)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L11"
            throw stdgo.Go.toInterface(("suffixarray: misuse of text_64" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L13"
        stdgo._internal.index.suffixarray.Suffixarray__sais_8_64._sais_8_64(_text, (256 : stdgo.GoInt), _sa, (new stdgo.Slice<stdgo.GoInt64>((512 : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>));
    }
