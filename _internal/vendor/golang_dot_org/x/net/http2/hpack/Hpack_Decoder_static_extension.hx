package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    static public function _decodeString( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _u:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_undecodedString.T_undecodedString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        if (!_u._isHuff) {
            return { _0 : (_u._b : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _buf = (stdgo.Go.typeAssert((_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__bufPool._bufPool.get() : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        _buf.reset();
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        var _err = (_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__huffmanDecode._huffmanDecode(_buf, _d._maxStrLen, _u._b) : stdgo.Error);
        if (_err == null) {
            _s = (_buf.string() : stdgo.GoString)?.__copy__();
        };
        _buf.reset();
        _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__bufPool._bufPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_buf)));
        return { _0 : _s?.__copy__(), _1 : _err };
    }
    @:keep
    static public function _readString( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_undecodedString.T_undecodedString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        var _u = ({} : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_undecodedString.T_undecodedString), _remain = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return { _0 : _u?.__copy__(), _1 : _p, _2 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__errNeedMore._errNeedMore };
        };
        var _isHuff = ((_p[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) : Bool);
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__readVarInt._readVarInt((7 : stdgo.GoUInt8), _p), _strLen:stdgo.GoUInt64 = __tmp__._0, _p:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _u?.__copy__(), _1 : _p, _2 : _err };
        };
        if (((_d._maxStrLen != (0 : stdgo.GoInt)) && (_strLen > (_d._maxStrLen : stdgo.GoUInt64) : Bool) : Bool)) {
            return { _0 : _u?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_errStringLength.errStringLength };
        };
        if (((_p.length : stdgo.GoUInt64) < _strLen : Bool)) {
            return { _0 : _u?.__copy__(), _1 : _p, _2 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__errNeedMore._errNeedMore };
        };
        _u._isHuff = _isHuff;
        _u._b = (_p.__slice__(0, _strLen) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : _u?.__copy__(), _1 : (_p.__slice__(_strLen) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function _parseDynamicTableSizeUpdate( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        if ((!_d._firstField && (_d._dynTab._size > (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
            return stdgo.Go.asInterface((new _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError(stdgo._internal.errors.Errors_new_.new_(("dynamic table size update MUST occur at the beginning of a header block" : stdgo.GoString))) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError));
        };
        var _buf = _d._buf;
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__readVarInt._readVarInt((5 : stdgo.GoUInt8), _buf), _size:stdgo.GoUInt64 = __tmp__._0, _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        if ((_size > (_d._dynTab._allowedMaxSize : stdgo.GoUInt64) : Bool)) {
            return stdgo.Go.asInterface((new _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError(stdgo._internal.errors.Errors_new_.new_(("dynamic table size update too large" : stdgo.GoString))) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError));
        };
        _d._dynTab._setMaxSize((_size : stdgo.GoUInt32));
        _d._buf = _buf;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _callEmit( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _hf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        if (_d._maxStrLen != ((0 : stdgo.GoInt))) {
            if ((((_hf.name.length) > _d._maxStrLen : Bool) || ((_hf.value.length) > _d._maxStrLen : Bool) : Bool)) {
                return _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_errStringLength.errStringLength;
            };
        };
        if (_d._emitEnabled) {
            _d._emit(_hf?.__copy__());
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _parseFieldLiteral( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _n:stdgo.GoUInt8, _it:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_indexType.T_indexType):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        var _buf = _d._buf;
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__readVarInt._readVarInt(_n, _buf), _nameIdx:stdgo.GoUInt64 = __tmp__._0, _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var _hf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField = ({} : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField);
        var _wantStr = (_d._emitEnabled || _it._indexed() : Bool);
        var _undecodedName:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_undecodedString.T_undecodedString = ({} : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_undecodedString.T_undecodedString);
        if ((_nameIdx > (0i64 : stdgo.GoUInt64) : Bool)) {
            var __tmp__ = _d._at(_nameIdx), _ihf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return stdgo.Go.asInterface((new _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError(stdgo.Go.asInterface((_nameIdx : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_InvalidIndexError.InvalidIndexError))) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError));
            };
            _hf.name = _ihf.name?.__copy__();
        } else {
            {
                var __tmp__ = _d._readString(_buf);
                _undecodedName = __tmp__._0?.__copy__();
                _buf = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return _err;
            };
        };
        var __tmp__ = _d._readString(_buf), _undecodedValue:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_undecodedString.T_undecodedString = __tmp__._0, _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        if (_wantStr) {
            if ((_nameIdx <= (0i64 : stdgo.GoUInt64) : Bool)) {
                {
                    var __tmp__ = _d._decodeString(_undecodedName?.__copy__());
                    _hf.name = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            };
            {
                var __tmp__ = _d._decodeString(_undecodedValue?.__copy__());
                _hf.value = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        _d._buf = _buf;
        if (_it._indexed()) {
            _d._dynTab._add(_hf?.__copy__());
        };
        _hf.sensitive = _it._sensitive();
        return _d._callEmit(_hf?.__copy__());
    }
    @:keep
    static public function _parseFieldIndexed( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        var _buf = _d._buf;
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__readVarInt._readVarInt((7 : stdgo.GoUInt8), _buf), _idx:stdgo.GoUInt64 = __tmp__._0, _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _err;
        };
        var __tmp__ = _d._at(_idx), _hf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return stdgo.Go.asInterface((new _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError(stdgo.Go.asInterface((_idx : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_InvalidIndexError.InvalidIndexError))) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError));
        };
        _d._buf = _buf;
        return _d._callEmit(({ name : _hf.name?.__copy__(), value : _hf.value?.__copy__() } : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField));
    }
    @:keep
    static public function _parseHeaderFieldRepr( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        var _b = (_d._buf[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            return _d._parseFieldIndexed();
        } else if ((_b & (192 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((64 : stdgo.GoUInt8))) {
            return _d._parseFieldLiteral((6 : stdgo.GoUInt8), (0 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_indexType.T_indexType));
        } else if ((_b & (240 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
            return _d._parseFieldLiteral((4 : stdgo.GoUInt8), (1 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_indexType.T_indexType));
        } else if ((_b & (240 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((16 : stdgo.GoUInt8))) {
            return _d._parseFieldLiteral((4 : stdgo.GoUInt8), (2 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_indexType.T_indexType));
        } else if ((_b & (224 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((32 : stdgo.GoUInt8))) {
            return _d._parseDynamicTableSizeUpdate();
        };
        return stdgo.Go.asInterface((new _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError(stdgo._internal.errors.Errors_new_.new_(("invalid encoding" : stdgo.GoString))) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError));
    }
    @:keep
    static public function write( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        if (_d._saveBuf.len() == ((0 : stdgo.GoInt))) {
            _d._buf = _p;
        } else {
            _d._saveBuf.write(_p);
            _d._buf = _d._saveBuf.bytes();
            _d._saveBuf.reset();
        };
        while (((_d._buf.length) > (0 : stdgo.GoInt) : Bool)) {
            _err = _d._parseHeaderFieldRepr();
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__errNeedMore._errNeedMore))) {
                {};
                if (((_d._maxStrLen != (0 : stdgo.GoInt)) && ((_d._buf.length : stdgo.GoInt64) > ((2i64 : stdgo.GoInt64) * (((_d._maxStrLen : stdgo.GoInt64) + (8i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64) : Bool) : Bool)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_errStringLength.errStringLength };
                };
                _d._saveBuf.write(_d._buf);
                return { _0 : (_p.length), _1 : (null : stdgo.Error) };
            };
            _d._firstField = false;
            if (_err != null) {
                break;
            };
        };
        return { _0 : (_p.length), _1 : _err };
    }
    @:keep
    static public function close( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        if ((_d._saveBuf.len() > (0 : stdgo.GoInt) : Bool)) {
            _d._saveBuf.reset();
            return stdgo.Go.asInterface((new _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError(stdgo._internal.errors.Errors_new_.new_(("truncated headers" : stdgo.GoString))) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_DecodingError.DecodingError));
        };
        _d._firstField = true;
        return (null : stdgo.Error);
    }
    @:keep
    static public function decodeFull( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _hf:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>);
            var _saveFunc = (_d._emit : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField -> Void);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        _d._emit = _saveFunc;
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
                };
                a();
            });
            _d._emit = function(_f:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    _hf = (_hf.__append__(_f?.__copy__()));
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
            };
            {
                var __tmp__ = _d.write(_p), __6:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>), _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                var _err = (_d.close() : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>), _1 : _err };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>; var _1 : stdgo.Error; } = { _0 : _hf, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _at( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _i:stdgo.GoUInt64):{ var _0 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        var _hf = ({} : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField), _ok = false;
        if (_i == ((0i64 : stdgo.GoUInt64))) {
            return { _0 : _hf, _1 : _ok };
        };
        if ((_i <= (_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__staticTable._staticTable._len() : stdgo.GoUInt64) : Bool)) {
            return { _0 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__staticTable._staticTable._ents[((_i - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)], _1 : true };
        };
        if ((_i > (_d._maxTableIndex() : stdgo.GoUInt64) : Bool)) {
            return { _0 : _hf, _1 : _ok };
        };
        var _dt = (_d._dynTab._table?.__copy__() : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable);
        return { _0 : _dt._ents[(_dt._len() - (((_i : stdgo.GoInt) - _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__staticTable._staticTable._len() : stdgo.GoInt)) : stdgo.GoInt)], _1 : true };
    }
    @:keep
    static public function _maxTableIndex( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        return (_d._dynTab._table._len() + _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__staticTable._staticTable._len() : stdgo.GoInt);
    }
    @:keep
    static public function setAllowedMaxDynamicTableSize( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _v:stdgo.GoUInt32):Void {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        _d._dynTab._allowedMaxSize = _v;
    }
    @:keep
    static public function setMaxDynamicTableSize( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _v:stdgo.GoUInt32):Void {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        _d._dynTab._setMaxSize(_v);
    }
    @:keep
    static public function emitEnabled( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>):Bool {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        return _d._emitEnabled;
    }
    @:keep
    static public function setEmitEnabled( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _v:Bool):Void {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        _d._emitEnabled = _v;
    }
    @:keep
    static public function setEmitFunc( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _emitFunc:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField -> Void):Void {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        _d._emit = _emitFunc;
    }
    @:keep
    static public function setMaxStringLength( _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, _n:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = _d;
        _d._maxStrLen = _n;
    }
}
