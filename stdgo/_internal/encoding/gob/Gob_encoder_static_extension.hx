package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    @:tdfield
    static public function encodeValue( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _value:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L219"
            if (_value.kind() == ((0u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L220"
                return stdgo._internal.errors.Errors_new_.new_(("gob: cannot encode nil value" : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L222"
            if (((_value.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _value.isNil() : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L223"
                throw stdgo.Go.toInterface((("gob: cannot encode nil pointer of type " : stdgo.GoString) + (_value.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L228"
            (@:checkr _enc ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = (@:checkr _enc ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _enc ?? throw "null pointer dereference")._w = ((@:checkr _enc ?? throw "null pointer dereference")._w.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>);
            var __tmp__ = stdgo._internal.encoding.gob.Gob__validusertype._validUserType(_value.type()), _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L235"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L236"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            (@:checkr _enc ?? throw "null pointer dereference")._err = (null : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L240"
            (@:checkr _enc ?? throw "null pointer dereference")._byteBuf.reset();
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L241"
            (@:checkr _enc ?? throw "null pointer dereference")._byteBuf.write(stdgo._internal.encoding.gob.Gob__spaceforlength._spaceForLength);
            var _state = _enc._newEncoderState((stdgo.Go.setRef((@:checkr _enc ?? throw "null pointer dereference")._byteBuf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L244"
            _enc._sendTypeDescriptor(_enc._writer(), _state, _ut);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L245"
            _enc._sendTypeId(_state, _ut);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L246"
            if ((@:checkr _enc ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L247"
                {
                    final __ret__:stdgo.Error = (@:checkr _enc ?? throw "null pointer dereference")._err;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L251"
            _enc._encode((@:checkr _state ?? throw "null pointer dereference")._b, _value?.__copy__(), _ut);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L252"
            if ((@:checkr _enc ?? throw "null pointer dereference")._err == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L253"
                _enc._writeMessage(_enc._writer(), (@:checkr _state ?? throw "null pointer dereference")._b);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L256"
            _enc._freeEncoderState(_state);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L257"
            {
                final __ret__:stdgo.Error = (@:checkr _enc ?? throw "null pointer dereference")._err;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _sendTypeId( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L212"
        _state._encodeInt(((@:checkr _enc ?? throw "null pointer dereference")._sent[(@:checkr _ut ?? throw "null pointer dereference")._base] ?? ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId) : stdgo.GoInt64));
    }
    @:keep
    @:tdfield
    static public function _sendTypeDescriptor( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _w:stdgo._internal.io.Io_writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var _rt = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L186"
        if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
            _rt = (@:checkr _ut ?? throw "null pointer dereference")._user;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L189"
        {
            var __tmp__ = ((@:checkr _enc ?? throw "null pointer dereference")._sent != null && (@:checkr _enc ?? throw "null pointer dereference")._sent.__exists__(_rt) ? { _0 : (@:checkr _enc ?? throw "null pointer dereference")._sent[_rt], _1 : true } : { _0 : ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId), _1 : false }), __8:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId = __tmp__._0, _alreadySent:Bool = __tmp__._1;
            if (!_alreadySent) {
                var _sent = (_enc._sendType(_w, _state, _rt) : Bool);
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L192"
                if ((@:checkr _enc ?? throw "null pointer dereference")._err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L193"
                    return;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L198"
                if (!_sent) {
                    var __tmp__ = stdgo._internal.encoding.gob.Gob__gettypeinfo._getTypeInfo(_ut), _info:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L200"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L201"
                        _enc._setError(_err);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L202"
                        return;
                    };
                    (@:checkr _enc ?? throw "null pointer dereference")._sent[_rt] = (@:checkr _info ?? throw "null pointer dereference")._id;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function encode( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _e:stdgo.AnyInterface):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L176"
        return _enc.encodeValue(stdgo._internal.reflect.Reflect_valueof.valueOf(_e)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _sendType( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _w:stdgo._internal.io.Io_writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _origt:stdgo._internal.reflect.Reflect_type_.Type_):Bool {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var _sent = false;
        var _ut = stdgo._internal.encoding.gob.Gob__usertype._userType(_origt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L137"
        if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L140"
            return _sent = _enc._sendActualType(_w, _state, _ut, (@:checkr _ut ?? throw "null pointer dereference")._base);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L144"
        {
            var _rt = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _rt.kind();
                        if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L150"
                            if (_rt.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L151"
                                return _sent;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L154"
                            break;
                            break;
                        } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L157"
                            break;
                            break;
                        } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L160"
                            break;
                            break;
                        } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L163"
                            break;
                            break;
                        } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L166"
                            return _sent;
                            break;
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L147"
                            return _sent;
                        };
                    };
                    break;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L169"
        return _sent = _enc._sendActualType(_w, _state, _ut, (@:checkr _ut ?? throw "null pointer dereference")._base);
    }
    @:keep
    @:tdfield
    static public function _sendActualType( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _w:stdgo._internal.io.Io_writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _actual:stdgo._internal.reflect.Reflect_type_.Type_):Bool {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var _sent = false;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L94"
        {
            var __tmp__ = ((@:checkr _enc ?? throw "null pointer dereference")._sent != null && (@:checkr _enc ?? throw "null pointer dereference")._sent.__exists__(_actual) ? { _0 : (@:checkr _enc ?? throw "null pointer dereference")._sent[_actual], _1 : true } : { _0 : ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId), _1 : false }), __8:stdgo._internal.encoding.gob.Gob_t_typeid.T_typeId = __tmp__._0, _alreadySent:Bool = __tmp__._1;
            if (_alreadySent) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L95"
                return _sent = false;
            };
        };
        var __tmp__ = stdgo._internal.encoding.gob.Gob__gettypeinfo._getTypeInfo(_ut), _info:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L98"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L99"
            _enc._setError(_err);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L100"
            return _sent;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L104"
        _state._encodeInt(-((@:checkr _info ?? throw "null pointer dereference")._id : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L106"
        _enc._encode((@:checkr _state ?? throw "null pointer dereference")._b, stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _info ?? throw "null pointer dereference")._wire)))?.__copy__(), stdgo._internal.encoding.gob.Gob__wiretypeuserinfo._wireTypeUserInfo);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L107"
        _enc._writeMessage(_w, (@:checkr _state ?? throw "null pointer dereference")._b);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L108"
        if ((@:checkr _enc ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L109"
            return _sent;
        };
        (@:checkr _enc ?? throw "null pointer dereference")._sent[(@:checkr _ut ?? throw "null pointer dereference")._base] = (@:checkr _info ?? throw "null pointer dereference")._id;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L114"
        if (!(((@:checkr _ut ?? throw "null pointer dereference")._user.string() : String) == ((@:checkr _ut ?? throw "null pointer dereference")._base.string() : String))) {
            (@:checkr _enc ?? throw "null pointer dereference")._sent[(@:checkr _ut ?? throw "null pointer dereference")._user] = (@:checkr _info ?? throw "null pointer dereference")._id;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L118"
        {
            var _st = (_actual : stdgo._internal.reflect.Reflect_type_.Type_);
            {
                final __value__ = _st.kind();
                if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L120"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _st.numField() : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L121"
                            if (stdgo._internal.encoding.gob.Gob__isexported._isExported(_st.field(_i).name.__copy__())) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L122"
                                _enc._sendType(_w, _state, _st.field(_i).type);
                            };
                            _i++;
                        };
                    };
                } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L126"
                    _enc._sendType(_w, _state, _st.elem());
                } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L128"
                    _enc._sendType(_w, _state, _st.key());
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L129"
                    _enc._sendType(_w, _state, _st.elem());
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L131"
        return _sent = true;
    }
    @:keep
    @:tdfield
    static public function _writeMessage( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _w:stdgo._internal.io.Io_writer.Writer, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var _message = _b.bytes();
        var _messageLen = ((_message.length) - (9 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L71"
        if ((_messageLen >= (1073741824 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L72"
            _enc._setError(stdgo._internal.errors.Errors_new_.new_(("gob: encoder: message too big" : stdgo.GoString)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L73"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L76"
        (@:checkr (@:checkr _enc ?? throw "null pointer dereference")._countState ?? throw "null pointer dereference")._b.reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L77"
        (@:checkr _enc ?? throw "null pointer dereference")._countState._encodeUint((_messageLen : stdgo.GoUInt64));
        var _offset = ((9 : stdgo.GoInt) - (@:checkr (@:checkr _enc ?? throw "null pointer dereference")._countState ?? throw "null pointer dereference")._b.len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L80"
        (_message.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr (@:checkr _enc ?? throw "null pointer dereference")._countState ?? throw "null pointer dereference")._b.bytes());
        var __tmp__ = _w.write((_message.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>)), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L84"
        _b.reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L85"
        _b.write(stdgo._internal.encoding.gob.Gob__spaceforlength._spaceForLength);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L86"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L87"
            _enc._setError(_err);
        };
    }
    @:keep
    @:tdfield
    static public function _setError( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _err:stdgo.Error):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L58"
        if ((@:checkr _enc ?? throw "null pointer dereference")._err == null) {
            (@:checkr _enc ?? throw "null pointer dereference")._err = _err;
        };
    }
    @:keep
    @:tdfield
    static public function _popWriter( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        (@:checkr _enc ?? throw "null pointer dereference")._w = ((@:checkr _enc ?? throw "null pointer dereference")._w.__slice__((0 : stdgo.GoInt), (((@:checkr _enc ?? throw "null pointer dereference")._w.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>);
    }
    @:keep
    @:tdfield
    static public function _pushWriter( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _w:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        (@:checkr _enc ?? throw "null pointer dereference")._w = ((@:checkr _enc ?? throw "null pointer dereference")._w.__append__(_w) : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>);
    }
    @:keep
    @:tdfield
    static public function _writer( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>):stdgo._internal.io.Io_writer.Writer {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder.go#L44"
        return (@:checkr _enc ?? throw "null pointer dereference")._w[(((@:checkr _enc ?? throw "null pointer dereference")._w.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _encode( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _value:stdgo._internal.reflect.Reflect_value.Value, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = (stdgo.Go.setRef((@:checkr _enc ?? throw "null pointer dereference")._err) : stdgo.Ref<stdgo.Error>);
                final __f__ = stdgo._internal.encoding.gob.Gob__catcherror._catchError;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _engine = stdgo._internal.encoding.gob.Gob__getencengine._getEncEngine(_ut, (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>, Bool>));
            var _indir = ((@:checkr _ut ?? throw "null pointer dereference")._indir : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L659"
            if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
                _indir = ((@:checkr _ut ?? throw "null pointer dereference")._encIndir : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L662"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _indir : Bool)) {
                    _value = stdgo._internal.reflect.Reflect_indirect.indirect(_value.__copy__()).__copy__();
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L665"
            if ((((@:checkr _ut ?? throw "null pointer dereference")._externalEnc == (0 : stdgo.GoInt)) && (_value.type().kind() == (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L666"
                _enc._encodeStruct(_b, _engine, _value?.__copy__());
            } else {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L668"
                _enc._encodeSingle(_b, _engine, _value?.__copy__());
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _encodeGobEncoder( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var _data:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L441"
        {
            final __value__ = (@:checkr _ut ?? throw "null pointer dereference")._externalEnc;
            if (__value__ == ((1 : stdgo.GoInt))) {
                {
                    var __tmp__ = (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.gob.Gob_gobencoder.GobEncoder)) : stdgo._internal.encoding.gob.Gob_gobencoder.GobEncoder).gobEncode();
                    _data = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                {
                    var __tmp__ = (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_binarymarshaler.BinaryMarshaler).marshalBinary();
                    _data = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                {
                    var __tmp__ = (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler).marshalText();
                    _data = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L449"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L450"
            stdgo._internal.encoding.gob.Gob__error_._error_(_err);
        };
        var _state = _enc._newEncoderState(_b);
        (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L454"
        _state._encodeUint((_data.length : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L455"
        (@:checkr _state ?? throw "null pointer dereference")._b.write(_data);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L456"
        _enc._freeEncoderState(_state);
    }
    @:keep
    @:tdfield
    static public function _encodeInterface( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _iv:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var _elem = (_iv.elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L389"
        if (((_elem.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _elem.isNil() : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L390"
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("gob: cannot encode nil pointer of type %s inside interface" : stdgo.GoString), stdgo.Go.toInterface(_iv.elem().type()));
        };
        var _state = _enc._newEncoderState(_b);
        (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (-1 : stdgo.GoInt);
        (@:checkr _state ?? throw "null pointer dereference")._sendZero = true;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L395"
        if (_iv.isNil()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L396"
            _state._encodeUint((0i64 : stdgo.GoUInt64));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L397"
            return;
        };
        var _ut = stdgo._internal.encoding.gob.Gob__usertype._userType(_iv.elem().type());
        var __tmp__ = stdgo._internal.encoding.gob.Gob__concretetypetoname._concreteTypeToName.load(stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._base)), _namei:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L402"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L403"
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("type not registered for interface: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _ut ?? throw "null pointer dereference")._base));
        };
        var _name = ((stdgo.Go.typeAssert((_namei : stdgo.GoString)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L408"
        _state._encodeUint((_name.length : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L409"
        (@:checkr _state ?? throw "null pointer dereference")._b.writeString(_name?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L411"
        _enc._sendTypeDescriptor(_enc._writer(), _state, _ut);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L413"
        _enc._sendTypeId(_state, _ut);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L416"
        _enc._pushWriter(stdgo.Go.asInterface(_b));
        var _data = (stdgo.Go.typeAssert((stdgo._internal.encoding.gob.Gob__encbufferpool._encBufferPool.get() : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L418"
        _data.write(stdgo._internal.encoding.gob.Gob__spaceforlength._spaceForLength);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L419"
        _enc._encode(_data, _elem?.__copy__(), _ut);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L420"
        if ((@:checkr _enc ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L421"
            stdgo._internal.encoding.gob.Gob__error_._error_((@:checkr _enc ?? throw "null pointer dereference")._err);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L423"
        _enc._popWriter();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L424"
        _enc._writeMessage(stdgo.Go.asInterface(_b), _data);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L425"
        _data.reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L426"
        stdgo._internal.encoding.gob.Gob__encbufferpool._encBufferPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_data)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L427"
        if ((@:checkr _enc ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L428"
            stdgo._internal.encoding.gob.Gob__error_._error_((@:checkr _enc ?? throw "null pointer dereference")._err);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L430"
        _enc._freeEncoderState(_state);
    }
    @:keep
    @:tdfield
    static public function _encodeMap( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _mv:stdgo._internal.reflect.Reflect_value.Value, _keyOp:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp, _elemOp:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp, _keyIndir:stdgo.GoInt, _elemIndir:stdgo.GoInt):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var _state = _enc._newEncoderState(_b);
        (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (-1 : stdgo.GoInt);
        (@:checkr _state ?? throw "null pointer dereference")._sendZero = true;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L371"
        _state._encodeUint((_mv.len() : stdgo.GoUInt64));
        var _mi = _mv.mapRange();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L373"
        while (_mi.next()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L374"
            stdgo._internal.encoding.gob.Gob__encodereflectvalue._encodeReflectValue(_state, _mi.key()?.__copy__(), _keyOp, _keyIndir);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L375"
            stdgo._internal.encoding.gob.Gob__encodereflectvalue._encodeReflectValue(_state, _mi.value()?.__copy__(), _elemOp, _elemIndir);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L377"
        _enc._freeEncoderState(_state);
    }
    @:keep
    @:tdfield
    static public function _encodeArray( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _value:stdgo._internal.reflect.Reflect_value.Value, _op:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp, _elemIndir:stdgo.GoInt, _length:stdgo.GoInt, _helper:stdgo._internal.encoding.gob.Gob_t_enchelper.T_encHelper):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _state = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                final __f__ = _enc._freeEncoderState;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (-1 : stdgo.GoInt);
            (@:checkr _state ?? throw "null pointer dereference")._sendZero = true;
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L338"
            _state._encodeUint((_length : stdgo.GoUInt64));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L339"
            if (((_helper != null) && _helper(_state, _value?.__copy__()) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L340"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L342"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _length : Bool)) {
                    var _elem = (_value.index(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L344"
                    if ((_elemIndir > (0 : stdgo.GoInt) : Bool)) {
                        _elem = stdgo._internal.encoding.gob.Gob__encindirect._encIndirect(_elem.__copy__(), _elemIndir).__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L347"
                        if (!stdgo._internal.encoding.gob.Gob__valid._valid(_elem.__copy__())) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L348"
                            stdgo._internal.encoding.gob.Gob__errorf._errorf(("encodeArray: nil element" : stdgo.GoString));
                        };
                    };
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L351"
                    _op(null, _state, _elem.__copy__());
                    _i++;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _encodeStruct( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L307"
            if (!stdgo._internal.encoding.gob.Gob__valid._valid(_value?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L308"
                return;
            };
            var _state = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                final __f__ = _enc._freeEncoderState;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (-1 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L313"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _engine ?? throw "null pointer dereference")._instr.length) : Bool)) {
                    var _instr = (stdgo.Go.setRef((@:checkr _engine ?? throw "null pointer dereference")._instr[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L315"
                    if ((_i >= _value.numField() : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L317"
                        (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L318"
                        break;
                    };
var _field = (_value.fieldByIndex((@:checkr _instr ?? throw "null pointer dereference")._index).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L321"
                    if (((@:checkr _instr ?? throw "null pointer dereference")._indir > (0 : stdgo.GoInt) : Bool)) {
                        _field = stdgo._internal.encoding.gob.Gob__encindirect._encIndirect(_field.__copy__(), (@:checkr _instr ?? throw "null pointer dereference")._indir).__copy__();
                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L324"
                        if (!stdgo._internal.encoding.gob.Gob__valid._valid(_field.__copy__())) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L325"
                            {
                                _i++;
                                continue;
                            };
                        };
                    };
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L328"
                    (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, _field.__copy__());
                    _i++;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _encodeSingle( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encengine.T_encEngine>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _state = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                final __f__ = _enc._freeEncoderState;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            (@:checkr _state ?? throw "null pointer dereference")._fieldnum = (0 : stdgo.GoInt);
            (@:checkr _state ?? throw "null pointer dereference")._sendZero = true;
            var _instr = (stdgo.Go.setRef((@:checkr _engine ?? throw "null pointer dereference")._instr[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L297"
            if (((@:checkr _instr ?? throw "null pointer dereference")._indir > (0 : stdgo.GoInt) : Bool)) {
                _value = stdgo._internal.encoding.gob.Gob__encindirect._encIndirect(_value?.__copy__(), (@:checkr _instr ?? throw "null pointer dereference")._indir)?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L300"
            if (stdgo._internal.encoding.gob.Gob__valid._valid(_value?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L301"
                (@:checkr _instr ?? throw "null pointer dereference")._op(_instr, _state, _value?.__copy__());
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _freeEncoderState( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        (@:checkr _e ?? throw "null pointer dereference")._next = (@:checkr _enc ?? throw "null pointer dereference")._freeList;
        (@:checkr _enc ?? throw "null pointer dereference")._freeList = _e;
    }
    @:keep
    @:tdfield
    static public function _newEncoderState( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encbuffer.T_encBuffer>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState> {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = _enc;
        var _e = (@:checkr _enc ?? throw "null pointer dereference")._freeList;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L81"
        if (({
            final value = _e;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _e = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>);
            (@:checkr _e ?? throw "null pointer dereference")._enc = _enc;
        } else {
            (@:checkr _enc ?? throw "null pointer dereference")._freeList = (@:checkr _e ?? throw "null pointer dereference")._next;
        };
        (@:checkr _e ?? throw "null pointer dereference")._sendZero = false;
        (@:checkr _e ?? throw "null pointer dereference")._fieldnum = (0 : stdgo.GoInt);
        (@:checkr _e ?? throw "null pointer dereference")._b = _b;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L90"
        if (((@:checkr _b ?? throw "null pointer dereference")._data.length) == ((0 : stdgo.GoInt))) {
            (@:checkr _b ?? throw "null pointer dereference")._data = ((@:checkr _b ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L93"
        return _e;
    }
}
