package _internal.internal.profile;
function _decodeInt64(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _x:stdgo.Pointer<stdgo.GoInt64>):stdgo.Error {
        {
            var _err = (_internal.internal.profile.Profile__checkType._checkType(_b, (0 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _x.value = (_b._u64 : stdgo.GoInt64);
        return (null : stdgo.Error);
    }