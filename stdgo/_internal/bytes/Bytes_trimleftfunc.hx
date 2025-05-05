package stdgo._internal.bytes;
function trimLeftFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool):stdgo.Slice<stdgo.GoUInt8> {
        var _i = (stdgo._internal.bytes.Bytes__indexfunc._indexFunc(_s, _f, false) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L810"
        if (_i == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L811"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L813"
        return (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
    }
