package _internal.internal.profile;
function _decodeBool(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _x:stdgo.Pointer<Bool>):stdgo.Error {
        {
            var _err = (_internal.internal.profile.Profile__checkType._checkType(_b, (0 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if ((_b._u64 : stdgo.GoInt64) == ((0i64 : stdgo.GoInt64))) {
            _x.value = false;
        } else {
            _x.value = true;
        };
        return (null : stdgo.Error);
    }