package stdgo._internal.image.png;
function _zeroMemory(_v:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///home/runner/.go/go1.21.3/src/image/png/writer.go#L299"
        for (_i => _ in _v) {
            _v[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
