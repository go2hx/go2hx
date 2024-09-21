package _internal.internal.profile;
function _decodeMessage(_b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>, _m:_internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        {
            var _err = (_internal.internal.profile.Profile__checkType._checkType(_b, (2 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _dec = _m._decoder();
        var _data = _b._data;
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _internal.internal.profile.Profile__decodeField._decodeField(_b, _data);
                _data = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            if (((_b._field >= (_dec.length) : Bool) || (_dec[(_b._field : stdgo.GoInt)] == null) : Bool)) {
                continue;
            };
            {
                var _err = (_dec[(_b._field : stdgo.GoInt)](_b, _m) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
