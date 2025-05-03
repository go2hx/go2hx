package stdgo._internal.image;
function _match(_magic:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/image/format.go#L60"
        if ((_magic.length) != ((_b.length))) {
            //"file:///home/runner/.go/go1.21.3/src/image/format.go#L61"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/image/format.go#L63"
        for (_i => _c in _b) {
            //"file:///home/runner/.go/go1.21.3/src/image/format.go#L64"
            if (((_magic[(_i : stdgo.GoInt)] != _c) && (_magic[(_i : stdgo.GoInt)] != (63 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/image/format.go#L65"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/image/format.go#L68"
        return true;
    }
