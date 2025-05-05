package stdgo._internal.internal.profile;
function _decodeVarint(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _u:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L181"
        {
            _i = (0 : stdgo.GoInt);
            while (true) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L182"
                if (((_i >= (10 : stdgo.GoInt) : Bool) || (_i >= (_data.length) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L183"
                    return { _0 : (0i64 : stdgo.GoUInt64), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : stdgo._internal.errors.Errors_new_.new_(("bad varint" : stdgo.GoString)) };
                };
_u = (_u | ((((_data[(_i : stdgo.GoInt)] & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << (((7 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
//"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L186"
                if ((_data[(_i : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L187"
                    return { _0 : _u, _1 : (_data.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                };
                _i++;
            };
        };
    }
