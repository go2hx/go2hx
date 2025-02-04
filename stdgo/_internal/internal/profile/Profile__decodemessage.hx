package stdgo._internal.internal.profile;
function _decodeMessage(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        {
            var _err = (stdgo._internal.internal.profile.Profile__checktype._checkType(_b, (2 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        var _dec = _m._decoder();
        var _data = (@:checkr _b ?? throw "null pointer dereference")._data;
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__decodefield._decodeField(_b, _data);
                _data = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            if ((((@:checkr _b ?? throw "null pointer dereference")._field >= (_dec.length) : Bool) || (_dec[((@:checkr _b ?? throw "null pointer dereference")._field : stdgo.GoInt)] == null) : Bool)) {
                continue;
            };
            {
                var _err = (_dec[((@:checkr _b ?? throw "null pointer dereference")._field : stdgo.GoInt)](_b, _m) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
