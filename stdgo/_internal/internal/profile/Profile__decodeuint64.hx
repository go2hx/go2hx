package stdgo._internal.internal.profile;
function _decodeUint64(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _x:stdgo.Pointer<stdgo.GoUInt64>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L299"
        {
            var _err = (stdgo._internal.internal.profile.Profile__checktype._checkType(_b, (0 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L300"
                return _err;
            };
        };
        _x.value = (@:checkr _b ?? throw "null pointer dereference")._u64;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L303"
        return (null : stdgo.Error);
    }
