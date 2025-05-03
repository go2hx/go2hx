package stdgo._internal.internal.xcoff;
function _cstring(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L142"
        {
            _i = (0 : stdgo.GoInt);
            while (((_i < (_b.length) : Bool) && (_b[(_i : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                {};
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/file.go#L144"
        return ((_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
