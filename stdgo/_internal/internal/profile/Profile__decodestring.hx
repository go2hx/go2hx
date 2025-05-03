package stdgo._internal.internal.profile;
function _decodeString(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _x:stdgo.Pointer<stdgo.GoString>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L330"
        {
            var _err = (stdgo._internal.internal.profile.Profile__checktype._checkType(_b, (2 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L331"
                return _err;
            };
        };
        _x.value = ((@:checkr _b ?? throw "null pointer dereference")._data : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L334"
        return (null : stdgo.Error);
    }
