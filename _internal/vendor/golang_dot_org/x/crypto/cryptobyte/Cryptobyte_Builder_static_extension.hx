package _internal.vendor.golang_dot_org.x.crypto.cryptobyte;
@:keep @:allow(_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte.Builder_asInterface) class Builder_static_extension {
    @:keep
    static public function addValue( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_MarshalingValue.MarshalingValue):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        var _err = (_v.marshal(_b) : stdgo.Error);
        if (_err != null) {
            _b._err = _err;
        };
    }
    @:keep
    static public function unwrite( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        if (_b._err != null) {
            return;
        };
        if (_b._child != null && ((_b._child : Dynamic).__nil__ == null || !(_b._child : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("cryptobyte: attempted unwrite while child is pending" : stdgo.GoString));
        };
        var _length = (((_b._result.length) - _b._pendingLenLen : stdgo.GoInt) - _b._offset : stdgo.GoInt);
        if ((_length < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("cryptobyte: internal error" : stdgo.GoString));
        };
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("cryptobyte: attempted to unwrite negative number of bytes" : stdgo.GoString));
        };
        if ((_n > _length : Bool)) {
            throw stdgo.Go.toInterface(("cryptobyte: attempted to unwrite more than was written" : stdgo.GoString));
        };
        _b._result = (_b._result.__slice__(0, ((_b._result.length) - _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _add( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _bytes:haxe.Rest<stdgo.GoUInt8>):Void {
        var _bytes = new stdgo.Slice<stdgo.GoUInt8>(_bytes.length, 0, ..._bytes);
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        if (_b._err != null) {
            return;
        };
        if (_b._child != null && ((_b._child : Dynamic).__nil__ == null || !(_b._child : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("cryptobyte: attempted write while child is pending" : stdgo.GoString));
        };
        if ((((_b._result.length) + (_bytes.length) : stdgo.GoInt) < (_bytes.length) : Bool)) {
            _b._err = stdgo._internal.errors.Errors_new_.new_(("cryptobyte: length overflow" : stdgo.GoString));
        };
        if ((_b._fixedSize && (((_b._result.length) + (_bytes.length) : stdgo.GoInt) > _b._result.capacity : Bool) : Bool)) {
            _b._err = stdgo._internal.errors.Errors_new_.new_(("cryptobyte: Builder is exceeding its fixed-size buffer" : stdgo.GoString));
            return;
        };
        _b._result = (_b._result.__append__(...(_bytes : Array<stdgo.GoUInt8>)));
    }
    @:keep
    static public function _flushChild( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        if (_b._child == null || (_b._child : Dynamic).__nil__) {
            return;
        };
        _b._child._flushChild();
        var _child = _b._child;
        _b._child = null;
        if (_child._err != null) {
            _b._err = _child._err;
            return;
        };
        var _length = (((_child._result.length) - _child._pendingLenLen : stdgo.GoInt) - _child._offset : stdgo.GoInt);
        if ((_length < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("cryptobyte: internal error" : stdgo.GoString));
        };
        if (_child._pendingIsASN1) {
            if (_child._pendingLenLen != ((1 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("cryptobyte: internal error" : stdgo.GoString));
            };
            var __0:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), __1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
var _lenByte = __1, _lenLen = __0;
            if (((_length : stdgo.GoInt64) > (4294967294i64 : stdgo.GoInt64) : Bool)) {
                _b._err = stdgo._internal.errors.Errors_new_.new_(("pending ASN.1 child too long" : stdgo.GoString));
                return;
            } else if ((_length > (16777215 : stdgo.GoInt) : Bool)) {
                _lenLen = (5 : stdgo.GoUInt8);
                _lenByte = (132 : stdgo.GoUInt8);
            } else if ((_length > (65535 : stdgo.GoInt) : Bool)) {
                _lenLen = (4 : stdgo.GoUInt8);
                _lenByte = (131 : stdgo.GoUInt8);
            } else if ((_length > (255 : stdgo.GoInt) : Bool)) {
                _lenLen = (3 : stdgo.GoUInt8);
                _lenByte = (130 : stdgo.GoUInt8);
            } else if ((_length > (127 : stdgo.GoInt) : Bool)) {
                _lenLen = (2 : stdgo.GoUInt8);
                _lenByte = (129 : stdgo.GoUInt8);
            } else {
                _lenLen = (1 : stdgo.GoUInt8);
                _lenByte = (_length : stdgo.GoUInt8);
                _length = (0 : stdgo.GoInt);
            };
            _child._result[(_child._offset : stdgo.GoInt)] = _lenByte;
            var _extraBytes = ((_lenLen - (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
            if (_extraBytes != ((0 : stdgo.GoInt))) {
                _child._add(...((new stdgo.Slice<stdgo.GoUInt8>((_extraBytes : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>));
                var _childStart = (_child._offset + _child._pendingLenLen : stdgo.GoInt);
                stdgo.Go.copySlice((_child._result.__slice__((_childStart + _extraBytes : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_child._result.__slice__(_childStart) : stdgo.Slice<stdgo.GoUInt8>));
            };
            _child._offset++;
            _child._pendingLenLen = _extraBytes;
        };
        var _l = (_length : stdgo.GoInt);
        {
            var _i = (_child._pendingLenLen - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _child._result[(_child._offset + _i : stdgo.GoInt)] = (_l : stdgo.GoUInt8);
                _l = (_l >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            });
        };
        if (_l != ((0 : stdgo.GoInt))) {
            _b._err = stdgo._internal.fmt.Fmt_errorf.errorf(("cryptobyte: pending child length %d exceeds %d-byte length prefix" : stdgo.GoString), stdgo.Go.toInterface(_length), stdgo.Go.toInterface(_child._pendingLenLen));
            return;
        };
        if ((_b._fixedSize && (stdgo.Go.pointer(_b._result[(0 : stdgo.GoInt)]) != stdgo.Go.pointer(_child._result[(0 : stdgo.GoInt)])) : Bool)) {
            throw stdgo.Go.toInterface(("cryptobyte: BuilderContinuation reallocated a fixed-size buffer" : stdgo.GoString));
        };
        _b._result = _child._result;
    }
    @:keep
    static public function _addLengthPrefixed( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _lenLen:stdgo.GoInt, _isASN1:Bool, _f:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_BuilderContinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        if (_b._err != null) {
            return;
        };
        var _offset = (_b._result.length : stdgo.GoInt);
        _b._add(...((new stdgo.Slice<stdgo.GoUInt8>((_lenLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>));
        if (_b._inContinuation == null) {
            _b._inContinuation = stdgo.Go.pointer(false);
        };
        _b._child = (stdgo.Go.setRef(({ _result : _b._result, _fixedSize : _b._fixedSize, _offset : _offset, _pendingLenLen : _lenLen, _pendingIsASN1 : _isASN1, _inContinuation : _b._inContinuation } : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>);
        _b._callContinuation(_f, _b._child);
        _b._flushChild();
        if (_b._child != null && ((_b._child : Dynamic).__nil__ == null || !(_b._child : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("cryptobyte: internal error" : stdgo.GoString));
        };
    }
    @:keep
    static public function _callContinuation( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _f:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_BuilderContinuation.BuilderContinuation, _arg:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (!_b._inContinuation.value) {
                _b._inContinuation.value = true;
                __deferstack__.unshift(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            _b._inContinuation.value = false;
                            var _r = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_r == null) {
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
                            };
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((_r : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_BuildError.BuildError)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_BuildError.BuildError), _1 : true };
                                } catch(_) {
                                    { _0 : ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_BuildError.BuildError), _1 : false };
                                }, _buildError = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    _b._err = _buildError.err;
                                } else {
                                    throw stdgo.Go.toInterface(_r);
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
                    };
                    a();
                });
            };
            _f(_arg);
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
    static public function addUint32LengthPrefixed( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _f:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_BuilderContinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._addLengthPrefixed((4 : stdgo.GoInt), false, _f);
    }
    @:keep
    static public function addUint24LengthPrefixed( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _f:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_BuilderContinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._addLengthPrefixed((3 : stdgo.GoInt), false, _f);
    }
    @:keep
    static public function addUint16LengthPrefixed( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _f:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_BuilderContinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._addLengthPrefixed((2 : stdgo.GoInt), false, _f);
    }
    @:keep
    static public function addUint8LengthPrefixed( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _f:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_BuilderContinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._addLengthPrefixed((1 : stdgo.GoInt), false, _f);
    }
    @:keep
    static public function addBytes( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._add(...(_v : Array<stdgo.GoUInt8>));
    }
    @:keep
    static public function addUint64( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._add(((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), (_v : stdgo.GoUInt8));
    }
    @:keep
    static public function addUint32( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.GoUInt32):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._add(((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_v : stdgo.GoUInt8));
    }
    @:keep
    static public function addUint24( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.GoUInt32):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._add(((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_v : stdgo.GoUInt8));
    }
    @:keep
    static public function addUint16( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.GoUInt16):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._add(((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), (_v : stdgo.GoUInt8));
    }
    @:keep
    static public function addUint8( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.GoUInt8):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._add((_v : stdgo.GoUInt8));
    }
    @:keep
    static public function bytesOrPanic( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        if (_b._err != null) {
            throw stdgo.Go.toInterface(_b._err);
        };
        return (_b._result.__slice__(_b._offset) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function bytes( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        if (_b._err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _b._err };
        };
        return { _0 : (_b._result.__slice__(_b._offset) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function setError( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _err:stdgo.Error):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._err = _err;
    }
    @:keep
    static public function addASN1( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag, _f:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_BuilderContinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        if (_b._err != null) {
            return;
        };
        if ((_tag & (31 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag) == ((31 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
            _b._err = stdgo._internal.fmt.Fmt_errorf.errorf(("cryptobyte: high-tag number identifier octects not supported: 0x%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tag)));
            return;
        };
        _b.addUint8((_tag : stdgo.GoUInt8));
        _b._addLengthPrefixed((1 : stdgo.GoInt), true, _f);
    }
    @:keep
    static public function marshalASN1( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.AnyInterface):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        if (_b._err != null) {
            return;
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(_v), _bytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _b._err = _err;
            return;
        };
        _b.addBytes(_bytes);
    }
    @:keep
    static public function addASN1NULL( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._add(((5 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag) : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
    }
    @:keep
    static public function addASN1Boolean( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:Bool):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b.addASN1((1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            if (_v) {
                _b.addUint8((255 : stdgo.GoUInt8));
            } else {
                _b.addUint8((0 : stdgo.GoUInt8));
            };
        });
    }
    @:keep
    static public function addASN1ObjectIdentifier( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b.addASN1((6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            if (!_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__isValidOID._isValidOID(_oid)) {
                _b._err = stdgo._internal.fmt.Fmt_errorf.errorf(("cryptobyte: invalid OID: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_oid)));
                return;
            };
            _b._addBase128Int((((_oid[(0 : stdgo.GoInt)] : stdgo.GoInt64) * (40i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_oid[(1 : stdgo.GoInt)] : stdgo.GoInt64) : stdgo.GoInt64));
            for (__0 => _v in (_oid.__slice__((2 : stdgo.GoInt)) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier)) {
                _b._addBase128Int((_v : stdgo.GoInt64));
            };
        });
    }
    @:keep
    static public function _addBase128Int( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _n:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        var _length:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_n == ((0i64 : stdgo.GoInt64))) {
            _length = (1 : stdgo.GoInt);
        } else {
            {
                var _i = (_n : stdgo.GoInt64);
                stdgo.Go.cfor((_i > (0i64 : stdgo.GoInt64) : Bool), _i = (_i >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt64), {
                    _length++;
                });
            };
        };
        {
            var _i = (_length - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                var _o = ((_n >> ((_i * (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt64) : stdgo.GoUInt8);
                _o = (_o & ((127 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                if (_i != ((0 : stdgo.GoInt))) {
                    _o = (_o | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
                _b._add(_o);
            });
        };
    }
    @:keep
    static public function addASN1BitString( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _data:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b.addASN1((3 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _b.addUint8((0 : stdgo.GoUInt8));
            _b.addBytes(_data);
        });
    }
    @:keep
    static public function addASN1UTCTime( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _t:stdgo._internal.time.Time_Time.Time):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b.addASN1((23 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            if (((_t.year() < (1950 : stdgo.GoInt) : Bool) || (_t.year() >= (2050 : stdgo.GoInt) : Bool) : Bool)) {
                _b._err = stdgo._internal.fmt.Fmt_errorf.errorf(("cryptobyte: cannot represent %v as a UTCTime" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
                return;
            };
            _c.addBytes((_t.format(("060102150405Z0700" : stdgo.GoString)) : stdgo.Slice<stdgo.GoUInt8>));
        });
    }
    @:keep
    static public function addASN1GeneralizedTime( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _t:stdgo._internal.time.Time_Time.Time):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        if (((_t.year() < (0 : stdgo.GoInt) : Bool) || (_t.year() > (9999 : stdgo.GoInt) : Bool) : Bool)) {
            _b._err = stdgo._internal.fmt.Fmt_errorf.errorf(("cryptobyte: cannot represent %v as a GeneralizedTime" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
            return;
        };
        _b.addASN1((24 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _c.addBytes((_t.format(("20060102150405Z0700" : stdgo.GoString)) : stdgo.Slice<stdgo.GoUInt8>));
        });
    }
    @:keep
    static public function addASN1OctetString( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _bytes:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b.addASN1((4 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _c.addBytes(_bytes);
        });
    }
    @:keep
    static public function addASN1BigInt( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        if (_b._err != null) {
            return;
        };
        _b.addASN1((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            if ((_n.sign() < (0 : stdgo.GoInt) : Bool)) {
                var _nMinus1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).neg(_n);
                _nMinus1.sub(_nMinus1, _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte__bigOne._bigOne);
                var _bytes = _nMinus1.bytes();
                for (_i => _ in _bytes) {
                    _bytes[(_i : stdgo.GoInt)] = (_bytes[(_i : stdgo.GoInt)] ^ ((255 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
                if (((_bytes.length == (0 : stdgo.GoInt)) || ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                    _c._add((255 : stdgo.GoUInt8));
                };
                _c._add(...(_bytes : Array<stdgo.GoUInt8>));
            } else if (_n.sign() == ((0 : stdgo.GoInt))) {
                _c._add((0 : stdgo.GoUInt8));
            } else {
                var _bytes = _n.bytes();
                if ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                    _c._add((0 : stdgo.GoUInt8));
                };
                _c._add(...(_bytes : Array<stdgo.GoUInt8>));
            };
        });
    }
    @:keep
    static public function addASN1Uint64( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b.addASN1((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            var _length = (1 : stdgo.GoInt);
            {
                var _i = (_v : stdgo.GoUInt64);
                stdgo.Go.cfor((_i >= (128i64 : stdgo.GoUInt64) : Bool), _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64), {
                    _length++;
                });
            };
            stdgo.Go.cfor((_length > (0 : stdgo.GoInt) : Bool), _length--, {
                var _i = ((_v >> ((((_length - (1 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _c.addUint8((_i : stdgo.GoUInt8));
            });
        });
    }
    @:keep
    static public function _addASN1Signed( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag, _v:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b.addASN1(_tag, function(_c:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            var _length = (1 : stdgo.GoInt);
            {
                var _i = (_v : stdgo.GoInt64);
                stdgo.Go.cfor(((_i >= (128i64 : stdgo.GoInt64) : Bool) || (_i < (-128i64 : stdgo.GoInt64) : Bool) : Bool), _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt64), {
                    _length++;
                });
            };
            stdgo.Go.cfor((_length > (0 : stdgo.GoInt) : Bool), _length--, {
                var _i = ((_v >> ((((_length - (1 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt64) & (255i64 : stdgo.GoInt64) : stdgo.GoInt64);
                _c.addUint8((_i : stdgo.GoUInt8));
            });
        });
    }
    @:keep
    static public function addASN1Enum( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._addASN1Signed((10 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), _v);
    }
    @:keep
    static public function addASN1Int64WithTag( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.GoInt64, _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._addASN1Signed(_tag, _v);
    }
    @:keep
    static public function addASN1Int64( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _v:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = _b;
        _b._addASN1Signed((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), _v);
    }
}
