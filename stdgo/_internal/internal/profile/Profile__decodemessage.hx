package stdgo._internal.internal.profile;
function _decodeMessage(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L245"
        {
            var _err = (stdgo._internal.internal.profile.Profile__checktype._checkType(_b, (2 : stdgo.GoInt)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L246"
                return _err;
            };
        };
        var _dec = _m._decoder();
        var _data = (@:checkr _b ?? throw "null pointer dereference")._data;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L250"
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__decodefield._decodeField(_b, _data);
                _data = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L254"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L255"
                return _err;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L257"
            if ((((@:checkr _b ?? throw "null pointer dereference")._field >= (_dec.length) : Bool) || (_dec[((@:checkr _b ?? throw "null pointer dereference")._field : stdgo.GoInt)] == null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L258"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L260"
            {
                var _err = (_dec[((@:checkr _b ?? throw "null pointer dereference")._field : stdgo.GoInt)](_b, _m) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L261"
                    return _err;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/proto.go#L264"
        return (null : stdgo.Error);
    }
