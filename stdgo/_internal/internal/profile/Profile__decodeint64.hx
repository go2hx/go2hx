package stdgo._internal.internal.profile;
function _decodeInt64(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _x:stdgo.Pointer<stdgo.GoInt64>):stdgo.Error {
        {
            var _err = (stdgo._internal.internal.profile.Profile__checktype._checkType(_b, (0 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _x.value = ((@:checkr _b ?? throw "null pointer dereference")._u64 : stdgo.GoInt64);
        return (null : stdgo.Error);
    }
