package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    static public function encodeValue( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _value:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_value.kind() == ((0u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                return stdgo._internal.errors.Errors_new_.new_(("gob: cannot encode nil value" : stdgo.GoString));
            };
            if (((_value.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _value.isNil() : Bool)) {
                throw stdgo.Go.toInterface((("gob: cannot encode nil pointer of type " : stdgo.GoString) + (_value.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString));
            };
            _enc._mutex.lock();
            {
                final __f__ = _enc._mutex.unlock;
                __deferstack__.unshift(() -> __f__());
            };
            _enc._w = (_enc._w.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>);
            var __tmp__ = stdgo._internal.encoding.gob.Gob__validUserType._validUserType(_value.type()), _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return _err;
                };
            };
            _enc._err = (null : stdgo.Error);
            _enc._byteBuf.reset();
            _enc._byteBuf.write(stdgo._internal.encoding.gob.Gob__spaceForLength._spaceForLength);
            var _state = _enc._newEncoderState((stdgo.Go.setRef(_enc._byteBuf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>));
            _enc._sendTypeDescriptor(_enc._writer(), _state, _ut);
            _enc._sendTypeId(_state, _ut);
            if (_enc._err != null) {
                {
                    final __ret__:stdgo.Error = _enc._err;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            _enc._encode(_state._b, _value?.__copy__(), _ut);
            if (_enc._err == null) {
                _enc._writeMessage(_enc._writer(), _state._b);
            };
            _enc._freeEncoderState(_state);
            {
                final __ret__:stdgo.Error = _enc._err;
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
    @:keep
    static public function _sendTypeId( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        _state._encodeInt((_enc._sent[_ut._base] ?? ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId) : stdgo.GoInt64));
    }
    @:keep
    static public function _sendTypeDescriptor( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _w:stdgo._internal.io.Io_Writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var _rt = (_ut._base : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (_ut._externalEnc != ((0 : stdgo.GoInt))) {
            _rt = _ut._user;
        };
        {
            var __tmp__ = (_enc._sent != null && _enc._sent.exists(_rt) ? { _0 : _enc._sent[_rt], _1 : true } : { _0 : ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), _1 : false }), __8:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = __tmp__._0, _alreadySent:Bool = __tmp__._1;
            if (!_alreadySent) {
                var _sent = (_enc._sendType(_w, _state, _rt) : Bool);
                if (_enc._err != null) {
                    return;
                };
                if (!_sent) {
                    var __tmp__ = stdgo._internal.encoding.gob.Gob__getTypeInfo._getTypeInfo(_ut), _info:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _enc._setError(_err);
                        return;
                    };
                    _enc._sent[_rt] = _info._id;
                };
            };
        };
    }
    @:keep
    static public function encode( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _e:stdgo.AnyInterface):stdgo.Error {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        return _enc.encodeValue(stdgo._internal.reflect.Reflect_valueOf.valueOf(_e)?.__copy__());
    }
    @:keep
    static public function _sendType( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _w:stdgo._internal.io.Io_Writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _origt:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var _sent = false;
        var _ut = stdgo._internal.encoding.gob.Gob__userType._userType(_origt);
        if (_ut._externalEnc != ((0 : stdgo.GoInt))) {
            return _sent = _enc._sendActualType(_w, _state, _ut, _ut._base);
        };
        {
            var _rt = (_ut._base : stdgo._internal.reflect.Reflect_Type_.Type_);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _rt.kind();
                        if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            if (_rt.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                                return _sent;
                            };
                            break;
                            break;
                        } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            break;
                            break;
                        } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            break;
                            break;
                        } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            break;
                            break;
                        } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                            return _sent;
                            break;
                        } else {
                            return _sent;
                        };
                    };
                    break;
                };
            };
        };
        return _sent = _enc._sendActualType(_w, _state, _ut, _ut._base);
    }
    @:keep
    static public function _sendActualType( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _w:stdgo._internal.io.Io_Writer.Writer, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _actual:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var _sent = false;
        {
            var __tmp__ = (_enc._sent != null && _enc._sent.exists(_actual) ? { _0 : _enc._sent[_actual], _1 : true } : { _0 : ((0 : stdgo.GoInt32) : stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId), _1 : false }), __8:stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId = __tmp__._0, _alreadySent:Bool = __tmp__._1;
            if (_alreadySent) {
                return _sent = false;
            };
        };
        var __tmp__ = stdgo._internal.encoding.gob.Gob__getTypeInfo._getTypeInfo(_ut), _info:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _enc._setError(_err);
            return _sent;
        };
        _state._encodeInt(-(_info._id : stdgo.GoInt64));
        _enc._encode(_state._b, stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_info._wire)))?.__copy__(), stdgo._internal.encoding.gob.Gob__wireTypeUserInfo._wireTypeUserInfo);
        _enc._writeMessage(_w, _state._b);
        if (_enc._err != null) {
            return _sent;
        };
        _enc._sent[_ut._base] = _info._id;
        if (!((_ut._user.string() : String) == (_ut._base.string() : String))) {
            _enc._sent[_ut._user] = _info._id;
        };
        {
            var _st = (_actual : stdgo._internal.reflect.Reflect_Type_.Type_);
            {
                final __value__ = _st.kind();
                if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _st.numField() : Bool)) {
                            if (stdgo._internal.encoding.gob.Gob__isExported._isExported(_st.field(_i).name.__copy__())) {
                                _enc._sendType(_w, _state, _st.field(_i).type);
                            };
                            _i++;
                        };
                    };
                } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _enc._sendType(_w, _state, _st.elem());
                } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    _enc._sendType(_w, _state, _st.key());
                    _enc._sendType(_w, _state, _st.elem());
                };
            };
        };
        return _sent = true;
    }
    @:keep
    static public function _writeMessage( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _w:stdgo._internal.io.Io_Writer.Writer, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var _message = _b.bytes();
        var _messageLen = ((_message.length) - (9 : stdgo.GoInt) : stdgo.GoInt);
        if ((_messageLen >= (1073741824 : stdgo.GoInt) : Bool)) {
            _enc._setError(stdgo._internal.errors.Errors_new_.new_(("gob: encoder: message too big" : stdgo.GoString)));
            return;
        };
        _enc._countState._b.reset();
        _enc._countState._encodeUint((_messageLen : stdgo.GoUInt64));
        var _offset = ((9 : stdgo.GoInt) - _enc._countState._b.len() : stdgo.GoInt);
        (_message.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_enc._countState._b.bytes());
        var __tmp__ = _w.write((_message.__slice__(_offset) : stdgo.Slice<stdgo.GoUInt8>)), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _b.reset();
        _b.write(stdgo._internal.encoding.gob.Gob__spaceForLength._spaceForLength);
        if (_err != null) {
            _enc._setError(_err);
        };
    }
    @:keep
    static public function _setError( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _err:stdgo.Error):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        if (_enc._err == null) {
            _enc._err = _err;
        };
    }
    @:keep
    static public function _popWriter( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        _enc._w = (_enc._w.__slice__((0 : stdgo.GoInt), ((_enc._w.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer>);
    }
    @:keep
    static public function _pushWriter( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _w:stdgo._internal.io.Io_Writer.Writer):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        _enc._w = (_enc._w.__append__(_w));
    }
    @:keep
    static public function _writer( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>):stdgo._internal.io.Io_Writer.Writer {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        return _enc._w[((_enc._w.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    static public function _encode( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _value:stdgo._internal.reflect.Reflect_Value.Value, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = (stdgo.Go.setRef(_enc._err) : stdgo.Ref<stdgo.Error>);
                final __f__ = stdgo._internal.encoding.gob.Gob__catchError._catchError;
                __deferstack__.unshift(() -> __f__(_a0));
            };
            var _engine = stdgo._internal.encoding.gob.Gob__getEncEngine._getEncEngine(_ut, (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_typeInfo.T_typeInfo>, Bool>));
            var _indir = (_ut._indir : stdgo.GoInt);
            if (_ut._externalEnc != ((0 : stdgo.GoInt))) {
                _indir = (_ut._encIndir : stdgo.GoInt);
            };
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _indir : Bool)) {
                    _value = stdgo._internal.reflect.Reflect_indirect.indirect(_value.__copy__()).__copy__();
                    _i++;
                };
            };
            if (((_ut._externalEnc == (0 : stdgo.GoInt)) && (_value.type().kind() == (25u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) : Bool)) {
                _enc._encodeStruct(_b, _engine, _value?.__copy__());
            } else {
                _enc._encodeSingle(_b, _engine, _value?.__copy__());
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _encodeGobEncoder( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var _data:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            final __value__ = _ut._externalEnc;
            if (__value__ == ((1 : stdgo.GoInt))) {
                {
                    var __tmp__ = (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.gob.Gob_GobEncoder.GobEncoder)) : stdgo._internal.encoding.gob.Gob_GobEncoder.GobEncoder).gobEncode();
                    _data = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                {
                    var __tmp__ = (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.Encoding_BinaryMarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_BinaryMarshaler.BinaryMarshaler).marshalBinary();
                    _data = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                {
                    var __tmp__ = (stdgo.Go.typeAssert((_v.interface_() : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler)) : stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler).marshalText();
                    _data = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
        };
        if (_err != null) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_err);
        };
        var _state = _enc._newEncoderState(_b);
        _state._fieldnum = (-1 : stdgo.GoInt);
        _state._encodeUint((_data.length : stdgo.GoUInt64));
        _state._b.write(_data);
        _enc._freeEncoderState(_state);
    }
    @:keep
    static public function _encodeInterface( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _iv:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var _elem = (_iv.elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (((_elem.kind() == (22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _elem.isNil() : Bool)) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("gob: cannot encode nil pointer of type %s inside interface" : stdgo.GoString), stdgo.Go.toInterface(_iv.elem().type()));
        };
        var _state = _enc._newEncoderState(_b);
        _state._fieldnum = (-1 : stdgo.GoInt);
        _state._sendZero = true;
        if (_iv.isNil()) {
            _state._encodeUint((0i64 : stdgo.GoUInt64));
            return;
        };
        var _ut = stdgo._internal.encoding.gob.Gob__userType._userType(_iv.elem().type());
        var __tmp__ = stdgo._internal.encoding.gob.Gob__concreteTypeToName._concreteTypeToName.load(stdgo.Go.toInterface(_ut._base)), _namei:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("type not registered for interface: %s" : stdgo.GoString), stdgo.Go.toInterface(_ut._base));
        };
        var _name = ((stdgo.Go.typeAssert((_namei : stdgo.GoString)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _state._encodeUint((_name.length : stdgo.GoUInt64));
        _state._b.writeString(_name?.__copy__());
        _enc._sendTypeDescriptor(_enc._writer(), _state, _ut);
        _enc._sendTypeId(_state, _ut);
        _enc._pushWriter(stdgo.Go.asInterface(_b));
        var _data = (stdgo.Go.typeAssert((stdgo._internal.encoding.gob.Gob__encBufferPool._encBufferPool.get() : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>);
        _data.write(stdgo._internal.encoding.gob.Gob__spaceForLength._spaceForLength);
        _enc._encode(_data, _elem?.__copy__(), _ut);
        if (_enc._err != null) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_enc._err);
        };
        _enc._popWriter();
        _enc._writeMessage(stdgo.Go.asInterface(_b), _data);
        _data.reset();
        stdgo._internal.encoding.gob.Gob__encBufferPool._encBufferPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_data)));
        if (_enc._err != null) {
            stdgo._internal.encoding.gob.Gob__error_._error_(_enc._err);
        };
        _enc._freeEncoderState(_state);
    }
    @:keep
    static public function _encodeMap( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _mv:stdgo._internal.reflect.Reflect_Value.Value, _keyOp:stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp, _elemOp:stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp, _keyIndir:stdgo.GoInt, _elemIndir:stdgo.GoInt):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var _state = _enc._newEncoderState(_b);
        _state._fieldnum = (-1 : stdgo.GoInt);
        _state._sendZero = true;
        _state._encodeUint((_mv.len() : stdgo.GoUInt64));
        var _mi = _mv.mapRange();
        while (_mi.next()) {
            stdgo._internal.encoding.gob.Gob__encodeReflectValue._encodeReflectValue(_state, _mi.key()?.__copy__(), _keyOp, _keyIndir);
            stdgo._internal.encoding.gob.Gob__encodeReflectValue._encodeReflectValue(_state, _mi.value()?.__copy__(), _elemOp, _elemIndir);
        };
        _enc._freeEncoderState(_state);
    }
    @:keep
    static public function _encodeArray( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _value:stdgo._internal.reflect.Reflect_Value.Value, _op:stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp, _elemIndir:stdgo.GoInt, _length:stdgo.GoInt, _helper:stdgo._internal.encoding.gob.Gob_T_encHelper.T_encHelper):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                final __f__ = _enc._freeEncoderState;
                __deferstack__.unshift(() -> __f__(_a0));
            };
            _state._fieldnum = (-1 : stdgo.GoInt);
            _state._sendZero = true;
            _state._encodeUint((_length : stdgo.GoUInt64));
            if (((_helper != null) && _helper(_state, _value?.__copy__()) : Bool)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _length : Bool)) {
                    var _elem = (_value.index(_i).__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
if ((_elemIndir > (0 : stdgo.GoInt) : Bool)) {
                        _elem = stdgo._internal.encoding.gob.Gob__encIndirect._encIndirect(_elem.__copy__(), _elemIndir).__copy__();
                        if (!stdgo._internal.encoding.gob.Gob__valid._valid(_elem.__copy__())) {
                            stdgo._internal.encoding.gob.Gob__errorf._errorf(("encodeArray: nil element" : stdgo.GoString));
                        };
                    };
_op(null, _state, _elem.__copy__());
                    _i++;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _encodeStruct( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (!stdgo._internal.encoding.gob.Gob__valid._valid(_value?.__copy__())) {
                return;
            };
            var _state = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                final __f__ = _enc._freeEncoderState;
                __deferstack__.unshift(() -> __f__(_a0));
            };
            _state._fieldnum = (-1 : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_engine._instr.length) : Bool)) {
                    var _instr = (stdgo.Go.setRef(_engine._instr[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>);
if ((_i >= _value.numField() : Bool)) {
                        _instr._op(_instr, _state, (new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value));
                        break;
                    };
var _field = (_value.fieldByIndex(_instr._index).__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
if ((_instr._indir > (0 : stdgo.GoInt) : Bool)) {
                        _field = stdgo._internal.encoding.gob.Gob__encIndirect._encIndirect(_field.__copy__(), _instr._indir).__copy__();
                        if (!stdgo._internal.encoding.gob.Gob__valid._valid(_field.__copy__())) {
                            {
                                _i++;
                                continue;
                            };
                        };
                    };
_instr._op(_instr, _state, _field.__copy__());
                    _i++;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _encodeSingle( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _engine:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encEngine.T_encEngine>, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _state = _enc._newEncoderState(_b);
            {
                var _a0 = _state;
                final __f__ = _enc._freeEncoderState;
                __deferstack__.unshift(() -> __f__(_a0));
            };
            _state._fieldnum = (0 : stdgo.GoInt);
            _state._sendZero = true;
            var _instr = (stdgo.Go.setRef(_engine._instr[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>);
            if ((_instr._indir > (0 : stdgo.GoInt) : Bool)) {
                _value = stdgo._internal.encoding.gob.Gob__encIndirect._encIndirect(_value?.__copy__(), _instr._indir)?.__copy__();
            };
            if (stdgo._internal.encoding.gob.Gob__valid._valid(_value?.__copy__())) {
                _instr._op(_instr, _state, _value?.__copy__());
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    @:keep
    static public function _freeEncoderState( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        _e._next = _enc._freeList;
        _enc._freeList = _e;
    }
    @:keep
    static public function _newEncoderState( _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>):stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState> {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = _enc;
        var _e = _enc._freeList;
        if ((_e == null || (_e : Dynamic).__nil__)) {
            _e = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>);
            _e._enc = _enc;
        } else {
            _enc._freeList = _e._next;
        };
        _e._sendZero = false;
        _e._fieldnum = (0 : stdgo.GoInt);
        _e._b = _b;
        if ((_b._data.length) == ((0 : stdgo.GoInt))) {
            _b._data = (_b._scratch.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _e;
    }
}
