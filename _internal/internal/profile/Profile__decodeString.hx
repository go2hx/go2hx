package _internal.internal.profile;
function _decodeString(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _x:stdgo.Pointer<stdgo.GoString>):stdgo.Error {
        {
            var _err = (_internal.internal.profile.Profile__checkType._checkType(_b, (2 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        _x.value = (_b._data : stdgo.GoString)?.__copy__();
        return (null : stdgo.Error);
    }
