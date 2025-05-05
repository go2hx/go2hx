package stdgo._internal.internal.profile;
function _decodeBool(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _x:stdgo.Pointer<Bool>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L347"
        {
            var _err = (stdgo._internal.internal.profile.Profile__checktype._checkType(_b, (0 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L348"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L350"
        if (((@:checkr _b ?? throw "null pointer dereference")._u64 : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
            _x.value = false;
        } else {
            _x.value = true;
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L355"
        return (null : stdgo.Error);
    }
