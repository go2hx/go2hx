package stdgo._internal.go.types;
function _concat(_list:stdgo.Slice<stdgo.GoInt>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        var _t:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        _t = (_t.__append__(...(_list : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/go/types/lookup.go#L561"
        return (_t.__append__(_i) : stdgo.Slice<stdgo.GoInt>);
    }
