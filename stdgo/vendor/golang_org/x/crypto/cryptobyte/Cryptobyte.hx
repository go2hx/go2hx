package stdgo.vendor.golang_org.x.crypto.cryptobyte;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef MarshalingValue = StructType & {
    public function marshal(_b:Pointer<Builder>):Error;
};
@:structInit class Builder {
    public function addValue(_v:MarshalingValue):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:stdgo.Error = _v.marshal(_b);
        if (_err != null) {
            _b.value._err = _err;
        };
    }
    public function unwrite(_n:GoInt):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._err != null) {
            return;
        };
        if ((_b.value._child != null && !_b.value._child.isNil())) {
            throw "cryptobyte: attempted unwrite while child is pending";
        };
        var _length:GoInt = _b.value._result.length - _b.value._pendingLenLen - _b.value._offset;
        if (_length < ((0 : GoInt))) {
            throw "cryptobyte: internal error";
        };
        if (_n > _length) {
            throw "cryptobyte: attempted to unwrite more than was written";
        };
        _b.value._result = _b.value._result.__slice__(0, _b.value._result.length - _n);
    }
    public function _add(_bytes:haxe.Rest<GoByte>):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _bytes = new Slice<GoByte>(..._bytes);
        if (_b.value._err != null) {
            return;
        };
        if ((_b.value._child != null && !_b.value._child.isNil())) {
            throw "cryptobyte: attempted write while child is pending";
        };
        if (_b.value._result.length + _bytes.length < _bytes.length) {
            _b.value._err = stdgo.errors.Errors.new_("cryptobyte: length overflow");
        };
        if (_b.value._fixedSize && _b.value._result.length + _bytes.length > _b.value._result.cap()) {
            _b.value._err = stdgo.errors.Errors.new_("cryptobyte: Builder is exceeding its fixed-size buffer");
            return;
        };
        _b.value._result = _b.value._result.__append__(..._bytes.toArray());
    }
    public function _flushChild():Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if ((_b.value._child == null || _b.value._child.isNil())) {
            return;
        };
        _b.value._child.value._flushChild();
        var _child:Pointer<Builder> = _b.value._child;
        _b.value._child = new Pointer<Builder>().nil();
        if (_child.value._err != null) {
            _b.value._err = _child.value._err;
            return;
        };
        var _length:GoInt = _child.value._result.length - _child.value._pendingLenLen - _child.value._offset;
        if (_length < ((0 : GoInt))) {
            throw "cryptobyte: internal error";
        };
        if (_child.value._pendingIsASN1) {
            if (_child.value._pendingLenLen != ((1 : GoInt))) {
                throw "cryptobyte: internal error";
            };
            var _lenLen:GoUInt8 = ((0 : GoUInt8)), _lenByte:GoUInt8 = ((0 : GoUInt8));
            if (((_length : GoInt64)) > (("4294967294" : GoInt64))) {
                _b.value._err = stdgo.errors.Errors.new_("pending ASN.1 child too long");
                return;
            } else if (_length > ((16777215 : GoInt))) {
                _lenLen = ((5 : GoUInt8));
                _lenByte = ((128 : GoUnTypedInt)) | ((4 : GoUnTypedInt));
            } else if (_length > ((65535 : GoInt))) {
                _lenLen = ((4 : GoUInt8));
                _lenByte = ((128 : GoUnTypedInt)) | ((3 : GoUnTypedInt));
            } else if (_length > ((255 : GoInt))) {
                _lenLen = ((3 : GoUInt8));
                _lenByte = ((128 : GoUnTypedInt)) | ((2 : GoUnTypedInt));
            } else if (_length > ((127 : GoInt))) {
                _lenLen = ((2 : GoUInt8));
                _lenByte = ((128 : GoUnTypedInt)) | ((1 : GoUnTypedInt));
            } else {
                _lenLen = ((1 : GoUInt8));
                _lenByte = ((_length : GoUInt8));
                _length = ((0 : GoInt));
            };
            _child.value._result[_child.value._offset] = _lenByte;
            var _extraBytes:GoInt = (((_lenLen - ((1 : GoUInt8))) : GoInt));
            if (_extraBytes != ((0 : GoInt))) {
                _child.value._add(...new Slice<GoUInt8>(...[for (i in 0 ... ((_extraBytes : GoInt)).toBasic()) ((0 : GoUInt8))]).toArray());
                var _childStart:GoInt = _child.value._offset + _child.value._pendingLenLen;
                Go.copy(_child.value._result.__slice__(_childStart + _extraBytes), _child.value._result.__slice__(_childStart));
            };
            _child.value._offset++;
            _child.value._pendingLenLen = _extraBytes;
        };
        var _l:GoInt = _length;
        {
            var _i:GoInt = _child.value._pendingLenLen - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _child.value._result[_child.value._offset + _i] = ((_l : GoUInt8));
                _l = (_l >> (((8 : GoUnTypedInt))));
            });
        };
        if (_l != ((0 : GoInt))) {
            _b.value._err = stdgo.fmt.Fmt.errorf("cryptobyte: pending child length %d exceeds %d-byte length prefix", Go.toInterface(_length), Go.toInterface(_child.value._pendingLenLen));
            return;
        };
        if (_b.value._fixedSize && Go.pointer(_b.value._result[((0 : GoInt))]) != Go.pointer(_child.value._result[((0 : GoInt))])) {
            throw "cryptobyte: BuilderContinuation reallocated a fixed-size buffer";
        };
        _b.value._result = _child.value._result;
    }
    public function _addLengthPrefixed(_lenLen:GoInt, _isASN1:Bool, _f:BuilderContinuation):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._err != null) {
            return;
        };
        var _offset:GoInt = _b.value._result.length;
        _b.value._add(...new Slice<GoUInt8>(...[for (i in 0 ... ((_lenLen : GoInt)).toBasic()) ((0 : GoUInt8))]).toArray());
        if ((_b.value._inContinuation == null || _b.value._inContinuation.isNil())) {
            _b.value._inContinuation = Go.pointer(false);
        };
        _b.value._child = Go.pointer((({ _result : _b.value._result, _fixedSize : _b.value._fixedSize, _offset : _offset, _pendingLenLen : _lenLen, _pendingIsASN1 : _isASN1, _inContinuation : _b.value._inContinuation, _err : ((null : stdgo.Error)), _child : new Pointer<Builder>().nil() } : Builder)));
        _b.value._callContinuation(_f.__copy__(), _b.value._child);
        _b.value._flushChild();
        if ((_b.value._child != null && !_b.value._child.isNil())) {
            throw "cryptobyte: internal error";
        };
    }
    public function _callContinuation(_f:BuilderContinuation, _arg:Pointer<Builder>):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            if (!_b.value._inContinuation.value) {
                _b.value._inContinuation.value = true;
                {
                    deferstack.unshift(() -> {
                        var a = function():Void {
                            var recover_exception:Error = null;
                            _b.value._inContinuation.value = false;
                            var _r:AnyInterface = Go.toInterface(Go.recover());
                            if (_r == null) {
                                return;
                            };
                            {
                                var __tmp__ = try {
                                    { value : ((_r.value : BuildError)), ok : true };
                                } catch(_) {
                                    { value : new BuildError(), ok : false };
                                }, _buildError = __tmp__.value, _ok = __tmp__.ok;
                                if (_ok) {
                                    _b.value._err = _buildError.err;
                                } else {
                                    throw _r;
                                };
                            };
                        };
                        a();
                    });
                };
            };
            _f.__t__(_arg);
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function addUint32LengthPrefixed(_f:BuilderContinuation):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._addLengthPrefixed(((4 : GoInt)), false, _f.__copy__());
    }
    public function addUint24LengthPrefixed(_f:BuilderContinuation):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._addLengthPrefixed(((3 : GoInt)), false, _f.__copy__());
    }
    public function addUint16LengthPrefixed(_f:BuilderContinuation):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._addLengthPrefixed(((2 : GoInt)), false, _f.__copy__());
    }
    public function addUint8LengthPrefixed(_f:BuilderContinuation):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._addLengthPrefixed(((1 : GoInt)), false, _f.__copy__());
    }
    public function addBytes(_v:Slice<GoByte>):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._add(..._v.toArray());
    }
    public function addUint32(_v:GoUInt32):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._add((((_v >> ((24 : GoUnTypedInt))) : GoByte)), (((_v >> ((16 : GoUnTypedInt))) : GoByte)), (((_v >> ((8 : GoUnTypedInt))) : GoByte)), ((_v : GoByte)));
    }
    public function addUint24(_v:GoUInt32):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._add((((_v >> ((16 : GoUnTypedInt))) : GoByte)), (((_v >> ((8 : GoUnTypedInt))) : GoByte)), ((_v : GoByte)));
    }
    public function addUint16(_v:GoUInt16):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._add((((_v >> ((8 : GoUnTypedInt))) : GoByte)), ((_v : GoByte)));
    }
    public function addUint8(_v:GoUInt8):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._add(((_v : GoByte)));
    }
    public function bytesOrPanic():Slice<GoByte> {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._err != null) {
            throw _b.value._err;
        };
        return _b.value._result.__slice__(_b.value._offset);
    }
    public function bytes():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _b.value._err };
        };
        return { _0 : _b.value._result.__slice__(_b.value._offset), _1 : ((null : stdgo.Error)) };
    }
    public function setError(_err:Error):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._err = _err;
    }
    public function addASN1(_tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, _f:BuilderContinuation):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._err != null) {
            return;
        };
        if (new vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(_tag.__t__ & ((31 : GoUInt8))).__t__ == ((31 : GoUInt8))) {
            _b.value._err = stdgo.fmt.Fmt.errorf("cryptobyte: high-tag number identifier octects not supported: 0x%x", Go.toInterface(_tag));
            return;
        };
        _b.value.addUint8(_tag.__t__);
        _b.value._addLengthPrefixed(((1 : GoInt)), true, _f.__copy__());
    }
    public function marshalASN1(_v:AnyInterface):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._err != null) {
            return;
        };
        var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_v)), _bytes:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _b.value._err = _err;
            return;
        };
        _b.value.addBytes(_bytes);
    }
    public function addASN1NULL():Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._add(golang_org.x.crypto.cryptobyte.asn1.Asn1.null_.__t__, ((0 : GoUInt8)));
    }
    public function addASN1Boolean(_v:Bool):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.boolean, new BuilderContinuation(function(_b:Pointer<Builder>):Void {
            if (_v) {
                _b.value.addUint8(((255 : GoUInt8)));
            } else {
                _b.value.addUint8(((0 : GoUInt8)));
            };
        }));
    }
    public function addASN1ObjectIdentifier(_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.object_IDENTIFIER, new BuilderContinuation(function(_b:Pointer<Builder>):Void {
            if (!_isValidOID(_oid.__copy__())) {
                _b.value._err = stdgo.fmt.Fmt.errorf("cryptobyte: invalid OID: %v", Go.toInterface(_oid.__copy__()));
                return;
            };
            _b.value._addBase128Int(((_oid.__t__[((0 : GoInt))] : GoInt64)) * ((40 : GoInt64)) + ((_oid.__t__[((1 : GoInt))] : GoInt64)));
            for (_ => _v in _oid.__slice__(((2 : GoInt))).__t__) {
                _b.value._addBase128Int(((_v : GoInt64)));
            };
        }));
    }
    public function _addBase128Int(_n:GoInt64):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _length:GoInt = ((0 : GoInt));
        if (_n == ((0 : GoInt64))) {
            _length = ((1 : GoInt));
        } else {
            {
                var _i:GoInt64 = _n;
                Go.cfor(_i > ((0 : GoInt64)), _i = (_i >> (((7 : GoUnTypedInt)))), {
                    _length++;
                });
            };
        };
        {
            var _i:GoInt = _length - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                var _o:GoUInt8 = (((_n >> (((_i * ((7 : GoInt))) : GoUInt))) : GoByte));
                _o = _o & (((127 : GoUInt8)));
                if (_i != ((0 : GoInt))) {
                    _o = _o | (((128 : GoUInt8)));
                };
                _b.value._add(_o);
            });
        };
    }
    public function addASN1BitString(_data:Slice<GoByte>):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.bit_STRING, new BuilderContinuation(function(_b:Pointer<Builder>):Void {
            _b.value.addUint8(((0 : GoUInt8)));
            _b.value.addBytes(_data);
        }));
    }
    public function addASN1UTCTime(_t:stdgo.time.Time.Time):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.utctime, new BuilderContinuation(function(_c:Pointer<Builder>):Void {
            if (_t.year() < ((1950 : GoInt)) || _t.year() >= ((2050 : GoInt))) {
                _b.value._err = stdgo.fmt.Fmt.errorf("cryptobyte: cannot represent %v as a UTCTime", Go.toInterface(_t.__copy__()));
                return;
            };
            _c.value.addBytes(((_t.format(_defaultUTCTimeFormatStr) : Slice<GoByte>)));
        }));
    }
    public function addASN1GeneralizedTime(_t:stdgo.time.Time.Time):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_t.year() < ((0 : GoInt)) || _t.year() > ((9999 : GoInt))) {
            _b.value._err = stdgo.fmt.Fmt.errorf("cryptobyte: cannot represent %v as a GeneralizedTime", Go.toInterface(_t.__copy__()));
            return;
        };
        _b.value.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.generalizedTime, new BuilderContinuation(function(_c:Pointer<Builder>):Void {
            _c.value.addBytes(((_t.format(_generalizedTimeFormatStr) : Slice<GoByte>)));
        }));
    }
    public function addASN1OctetString(_bytes:Slice<GoByte>):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.octet_STRING, new BuilderContinuation(function(_c:Pointer<Builder>):Void {
            _c.value.addBytes(_bytes);
        }));
    }
    public function addASN1BigInt(_n:Pointer<stdgo.math.big.Big.Int_>):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._err != null) {
            return;
        };
        _b.value.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.integer, new BuilderContinuation(function(_c:Pointer<Builder>):Void {
            if (_n.value.sign() < ((0 : GoInt))) {
                var _nMinus1:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.neg(_n);
                _nMinus1.value.sub(_nMinus1, _bigOne);
                var _bytes:Slice<GoUInt8> = _nMinus1.value.bytes();
                for (_i => _ in _bytes) {
                    _bytes[_i] = _bytes[_i] ^ (((255 : GoUInt8)));
                };
                if (_bytes.length == ((0 : GoInt)) || _bytes[((0 : GoInt))] & ((128 : GoUInt8)) == ((0 : GoUInt8))) {
                    _c.value._add(((255 : GoUInt8)));
                };
                _c.value._add(..._bytes.toArray());
            } else if (_n.value.sign() == ((0 : GoInt))) {
                _c.value._add(((0 : GoUInt8)));
            } else {
                var _bytes:Slice<GoUInt8> = _n.value.bytes();
                if (_bytes[((0 : GoInt))] & ((128 : GoUInt8)) != ((0 : GoUInt8))) {
                    _c.value._add(((0 : GoUInt8)));
                };
                _c.value._add(..._bytes.toArray());
            };
        }));
    }
    public function addASN1Uint64(_v:GoUInt64):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value.addASN1(golang_org.x.crypto.cryptobyte.asn1.Asn1.integer, new BuilderContinuation(function(_c:Pointer<Builder>):Void {
            var _length:GoInt = ((1 : GoInt));
            {
                var _i:GoUInt64 = _v;
                Go.cfor(_i >= ((128 : GoUInt64)), _i = (_i >> (((8 : GoUnTypedInt)))), {
                    _length++;
                });
            };
            Go.cfor(_length > ((0 : GoInt)), _length--, {
                var _i:GoUInt64 = (_v >> ((((_length - ((1 : GoInt))) * ((8 : GoInt))) : GoUInt))) & ((255 : GoUInt64));
                _c.value.addUint8(((_i : GoUInt8)));
            });
        }));
    }
    public function _addASN1Signed(_tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, _v:GoInt64):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value.addASN1(_tag, new BuilderContinuation(function(_c:Pointer<Builder>):Void {
            var _length:GoInt = ((1 : GoInt));
            {
                var _i:GoInt64 = _v;
                Go.cfor(_i >= ((128 : GoInt64)) || _i < -((128 : GoUnTypedInt)), _i = (_i >> (((8 : GoUnTypedInt)))), {
                    _length++;
                });
            };
            Go.cfor(_length > ((0 : GoInt)), _length--, {
                var _i:GoInt64 = (_v >> ((((_length - ((1 : GoInt))) * ((8 : GoInt))) : GoUInt))) & ((255 : GoInt64));
                _c.value.addUint8(((_i : GoUInt8)));
            });
        }));
    }
    public function addASN1Enum(_v:GoInt64):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._addASN1Signed(golang_org.x.crypto.cryptobyte.asn1.Asn1.enum_, _v);
    }
    public function addASN1Int64WithTag(_v:GoInt64, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._addASN1Signed(_tag, _v);
    }
    public function addASN1Int64(_v:GoInt64):Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _b.value._addASN1Signed(golang_org.x.crypto.cryptobyte.asn1.Asn1.integer, _v);
    }
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _result : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _fixedSize : Bool = false;
    public var _child : Pointer<Builder> = new Pointer<Builder>().nil();
    public var _offset : GoInt = ((0 : GoInt));
    public var _pendingLenLen : GoInt = ((0 : GoInt));
    public var _pendingIsASN1 : Bool = false;
    public var _inContinuation : Pointer<Bool> = new Pointer<Bool>().nil();
    public function new(?_err:stdgo.Error, ?_result:Slice<GoUInt8>, ?_fixedSize:Bool, ?_child:Pointer<Builder>, ?_offset:GoInt, ?_pendingLenLen:GoInt, ?_pendingIsASN1:Bool, ?_inContinuation:Pointer<Bool>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_err) + " " + Go.string(_result) + " " + Go.string(_fixedSize) + " " + Go.string(_child) + " " + Go.string(_offset) + " " + Go.string(_pendingLenLen) + " " + Go.string(_pendingIsASN1) + " " + Go.string(_inContinuation) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Builder(_err, _result, _fixedSize, _child, _offset, _pendingLenLen, _pendingIsASN1, _inContinuation);
    }
    public function __set__(__tmp__) {
        this._err = __tmp__._err;
        this._result = __tmp__._result;
        this._fixedSize = __tmp__._fixedSize;
        this._child = __tmp__._child;
        this._offset = __tmp__._offset;
        this._pendingLenLen = __tmp__._pendingLenLen;
        this._pendingIsASN1 = __tmp__._pendingIsASN1;
        this._inContinuation = __tmp__._inContinuation;
        return this;
    }
}
@:named class BuilderContinuation {
    public var __t__ : Pointer<Builder> -> Void;
    public function new(?t:Pointer<Builder> -> Void) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new BuilderContinuation(__t__);
}
@:structInit class BuildError {
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new BuildError(err);
    }
    public function __set__(__tmp__) {
        this.err = __tmp__.err;
        return this;
    }
}
@:named class String_ {
    public function empty():Bool {
        var _s = this.__copy__();
        return _s.__t__.length == ((0 : GoInt));
    }
    public function copyBytes(_out:Slice<GoByte>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _n:GoInt = _out.length;
        var _v:Slice<GoUInt8> = _s.value._read(_n);
        if ((_v == null || _v.isNil())) {
            return false;
        };
        return Go.copy(_out, _v) == _n;
    }
    public function readBytes(_out:Pointer<Slice<GoByte>>, _n:GoInt):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _v:Slice<GoUInt8> = _s.value._read(_n);
        if ((_v == null || _v.isNil())) {
            return false;
        };
        _out.value = _v;
        return true;
    }
    public function readUint24LengthPrefixed(_out:Pointer<String_>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        return _s.value._readLengthPrefixed(((3 : GoInt)), _out);
    }
    public function readUint16LengthPrefixed(_out:Pointer<String_>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        return _s.value._readLengthPrefixed(((2 : GoInt)), _out);
    }
    public function readUint8LengthPrefixed(_out:Pointer<String_>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        return _s.value._readLengthPrefixed(((1 : GoInt)), _out);
    }
    public function _readLengthPrefixed(_lenLen:GoInt, _outChild:Pointer<String_>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _lenBytes:Slice<GoUInt8> = _s.value._read(_lenLen);
        if ((_lenBytes == null || _lenBytes.isNil())) {
            return false;
        };
        var _length:GoUInt32 = ((0 : GoUInt32));
        for (_ => _b in _lenBytes) {
            _length = (_length << ((8 : GoUnTypedInt)));
            _length = _length | ((_b : GoUInt32));
        };
        var _v:Slice<GoUInt8> = _s.value._read(((_length : GoInt)));
        if ((_v == null || _v.isNil())) {
            return false;
        };
        _outChild.value = new String_(_v);
        return true;
    }
    public function _readUnsigned(_out:Pointer<GoUInt32>, _length:GoInt):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _v:Slice<GoUInt8> = _s.value._read(_length);
        if ((_v == null || _v.isNil())) {
            return false;
        };
        var _result:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                _result = (_result << (((8 : GoUnTypedInt))));
                _result = _result | (((_v[_i] : GoUInt32)));
            });
        };
        _out.value = _result;
        return true;
    }
    public function readUint32(_out:Pointer<GoUInt32>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _v:Slice<GoUInt8> = _s.value._read(((4 : GoInt)));
        if ((_v == null || _v.isNil())) {
            return false;
        };
        _out.value = (((_v[((0 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt))) | (((_v[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_v[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_v[((3 : GoInt))] : GoUInt32));
        return true;
    }
    public function readUint24(_out:Pointer<GoUInt32>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _v:Slice<GoUInt8> = _s.value._read(((3 : GoInt)));
        if ((_v == null || _v.isNil())) {
            return false;
        };
        _out.value = (((_v[((0 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_v[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_v[((2 : GoInt))] : GoUInt32));
        return true;
    }
    public function readUint16(_out:Pointer<GoUInt16>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _v:Slice<GoUInt8> = _s.value._read(((2 : GoInt)));
        if ((_v == null || _v.isNil())) {
            return false;
        };
        _out.value = (((_v[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) | ((_v[((1 : GoInt))] : GoUInt16));
        return true;
    }
    public function readUint8(_out:Pointer<GoUInt8>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _v:Slice<GoUInt8> = _s.value._read(((1 : GoInt)));
        if ((_v == null || _v.isNil())) {
            return false;
        };
        _out.value = ((_v[((0 : GoInt))] : GoUInt8));
        return true;
    }
    public function skip(_n:GoInt):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        return (_s.value._read(_n) != null && !_s.value._read(_n).isNil());
    }
    public function _read(_n:GoInt):Slice<GoByte> {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        if (_s.value.__t__.length < _n || _n < ((0 : GoInt))) {
            return new Slice<GoUInt8>().nil();
        };
        var _v:String_ = (_s.value).__slice__(0, _n).__copy__();
        _s.value = (_s.value).__slice__(_n).__copy__();
        return _v.__copy__().__t__;
    }
    public function _readASN1(_out:Pointer<String_>, _outTag:Pointer<golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>, _skipHeader:Bool):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        if (_s.value.__t__.length < ((2 : GoInt))) {
            return false;
        };
        var _tag:GoUInt8 = (_s.value).__t__[((0 : GoInt))], _lenByte:GoUInt8 = (_s.value).__t__[((1 : GoInt))];
        if (_tag & ((31 : GoUInt8)) == ((31 : GoUInt8))) {
            return false;
        };
        if ((_outTag != null && !_outTag.isNil())) {
            _outTag.value = new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(_tag);
        };
        var _length:GoUInt32 = ((0 : GoUInt32)), _headerLen:GoUInt32 = ((0 : GoUInt32));
        if (_lenByte & ((128 : GoUInt8)) == ((0 : GoUInt8))) {
            _length = ((_lenByte : GoUInt32)) + ((2 : GoUInt32));
            _headerLen = ((2 : GoUInt32));
        } else {
            var _lenLen:GoUInt8 = _lenByte & ((127 : GoUInt8));
            var _len32:GoUInt32 = ((0 : GoUInt32));
            if (_lenLen == ((0 : GoUInt8)) || _lenLen > ((4 : GoUInt8)) || _s.value.__t__.length < (((((2 : GoUInt8)) + _lenLen) : GoInt))) {
                return false;
            };
            var _lenBytes:String_ = new String_((_s.value).__slice__(((2 : GoInt)), ((2 : GoUInt8)) + _lenLen).__copy__().__t__).__copy__();
            if (!_lenBytes._readUnsigned(Go.pointer(_len32), ((_lenLen : GoInt)))) {
                return false;
            };
            if (_len32 < ((128 : GoUInt32))) {
                return false;
            };
            if ((_len32 >> ((_lenLen - ((1 : GoUInt8))) * ((8 : GoUInt8)))) == ((0 : GoUInt32))) {
                return false;
            };
            _headerLen = ((2 : GoUInt32)) + ((_lenLen : GoUInt32));
            if (_headerLen + _len32 < _len32) {
                return false;
            };
            _length = _headerLen + _len32;
        };
        if (((_length : GoInt)) < ((0 : GoInt)) || !_s.value.readBytes(new Pointer<Slice<GoUInt8>>(() -> _out.value.__t__, v -> (_out.value = new String_(v)).__t__), ((_length : GoInt)))) {
            return false;
        };
        if (_skipHeader && !_out.value.skip(((_headerLen : GoInt)))) {
            throw "cryptobyte: internal error";
        };
        return true;
    }
    public function readOptionalASN1Boolean(_out:Pointer<Bool>, _defaultValue:Bool):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _present:Bool = false;
        var _child:String_ = new String_();
        if (!_s.value.readOptionalASN1(Go.pointer(_child), Go.pointer(_present), golang_org.x.crypto.cryptobyte.asn1.Asn1.boolean)) {
            return false;
        };
        if (!_present) {
            _out.value = _defaultValue;
            return true;
        };
        return _s.value.readASN1Boolean(_out);
    }
    public function readOptionalASN1OctetString(_out:Pointer<Slice<GoByte>>, _outPresent:Pointer<Bool>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _present:Bool = false;
        var _child:String_ = new String_();
        if (!_s.value.readOptionalASN1(Go.pointer(_child), Go.pointer(_present), _tag)) {
            return false;
        };
        if ((_outPresent != null && !_outPresent.isNil())) {
            _outPresent.value = _present;
        };
        if (_present) {
            var _oct:String_ = new String_();
            if (!_child.readASN1(Go.pointer(_oct), golang_org.x.crypto.cryptobyte.asn1.Asn1.octet_STRING) || !_child.empty()) {
                return false;
            };
            _out.value = _oct.__copy__().__t__;
        } else {
            _out.value = new Slice<GoUInt8>().nil();
        };
        return true;
    }
    public function readOptionalASN1Integer(_out:AnyInterface, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, _defaultValue:AnyInterface):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        if (stdgo.reflect.Reflect.typeOf(Go.toInterface(_out)).kind().__t__ != stdgo.reflect.Reflect.ptr.__t__) {
            throw "out is not a pointer";
        };
        var _present:Bool = false;
        var _i:String_ = new String_();
        if (!_s.value.readOptionalASN1(Go.pointer(_i), Go.pointer(_present), _tag)) {
            return false;
        };
        if (!_present) {
            if (stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.int.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.int8.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.int16.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.int64.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.uint.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.uint8.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.uint16.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.uint32.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.uint64.__t__) {
                stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().set(stdgo.reflect.Reflect.valueOf(Go.toInterface(_defaultValue)).__copy__());
            } else if (stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
                if (!(stdgo.reflect.Reflect.typeOf(Go.toInterface(_out)).elem().toString() == _bigIntType.toString())) {
                    throw "invalid integer type";
                };
                if (stdgo.reflect.Reflect.typeOf(Go.toInterface(_defaultValue)).kind().__t__ != stdgo.reflect.Reflect.ptr.__t__ || !(stdgo.reflect.Reflect.typeOf(Go.toInterface(_defaultValue)).elem().toString() == _bigIntType.toString())) {
                    throw "out points to big.Int, but defaultValue does not";
                };
                ((_out.value : Pointer<stdgo.math.big.Big.Int_>)).value.set(((_defaultValue.value : Pointer<stdgo.math.big.Big.Int_>)));
            } else {
                throw "invalid integer type";
            };
            return true;
        };
        if (!_i.readASN1Integer(Go.toInterface(_out)) || !_i.empty()) {
            return false;
        };
        return true;
    }
    public function skipOptionalASN1(_tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        if (!_s.value.peekASN1Tag(_tag)) {
            return true;
        };
        var _unused:String_ = new String_();
        return _s.value.readASN1(Go.pointer(_unused), _tag);
    }
    public function readOptionalASN1(_out:Pointer<String_>, _outPresent:Pointer<Bool>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _present:Bool = _s.value.peekASN1Tag(_tag);
        if ((_outPresent != null && !_outPresent.isNil())) {
            _outPresent.value = _present;
        };
        if (_present && !_s.value.readASN1(_out, _tag)) {
            return false;
        };
        return true;
    }
    public function skipASN1(_tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _unused:String_ = new String_();
        return _s.value.readASN1(Go.pointer(_unused), _tag);
    }
    public function peekASN1Tag(_tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _s = this.__copy__();
        if (_s.__t__.length == ((0 : GoInt))) {
            return false;
        };
        return new golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag(_s.__t__[((0 : GoInt))]).__t__ == _tag.__t__;
    }
    public function readAnyASN1Element(_out:Pointer<String_>, _outTag:Pointer<golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        return _s.value._readASN1(_out, _outTag, false);
    }
    public function readAnyASN1(_out:Pointer<String_>, _outTag:Pointer<golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        return _s.value._readASN1(_out, _outTag, true);
    }
    public function readASN1Element(_out:Pointer<String_>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _t:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag();
        if (!_s.value.readAnyASN1Element(_out, Go.pointer(_t)) || _t.__t__ != _tag.__t__) {
            return false;
        };
        return true;
    }
    public function readASN1(_out:Pointer<String_>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _t:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag();
        if (!_s.value.readAnyASN1(_out, Go.pointer(_t)) || _t.__t__ != _tag.__t__) {
            return false;
        };
        return true;
    }
    public function readASN1Bytes(_out:Pointer<Slice<GoByte>>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        return _s.value.readASN1(new Pointer<String_>(() -> new String_(_out.value), v -> new String_((_out.value = v.__t__))), _tag);
    }
    public function readASN1BitStringAsBytes(_out:Pointer<Slice<GoByte>>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _bytes:String_ = new String_();
        if (!_s.value.readASN1(Go.pointer(_bytes), golang_org.x.crypto.cryptobyte.asn1.Asn1.bit_STRING) || _bytes.__t__.length == ((0 : GoInt))) {
            return false;
        };
        var _paddingBits:GoUInt8 = ((_bytes.__t__[((0 : GoInt))] : GoUInt8));
        if (_paddingBits != ((0 : GoUInt8))) {
            return false;
        };
        _out.value = _bytes.__slice__(((1 : GoInt))).__copy__().__t__;
        return true;
    }
    public function readASN1BitString(_out:Pointer<stdgo.encoding.asn1.Asn1.BitString>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _bytes:String_ = new String_();
        if (!_s.value.readASN1(Go.pointer(_bytes), golang_org.x.crypto.cryptobyte.asn1.Asn1.bit_STRING) || _bytes.__t__.length == ((0 : GoInt)) || _bytes.__t__.length * ((8 : GoInt)) / ((8 : GoInt)) != _bytes.__t__.length) {
            return false;
        };
        var _paddingBits:GoUInt8 = ((_bytes.__t__[((0 : GoInt))] : GoUInt8));
        _bytes = _bytes.__slice__(((1 : GoInt))).__copy__();
        if (_paddingBits > ((7 : GoUInt8)) || _bytes.__t__.length == ((0 : GoInt)) && _paddingBits != ((0 : GoUInt8)) || _bytes.__t__.length > ((0 : GoInt)) && _bytes.__t__[_bytes.__t__.length - ((1 : GoInt))] & ((((1 : GoUInt8)) << _paddingBits) - ((1 : GoUInt8))) != ((0 : GoUInt8))) {
            return false;
        };
        _out.value.bitLength = _bytes.__t__.length * ((8 : GoInt)) - ((_paddingBits : GoInt));
        _out.value.bytes = _bytes.__copy__().__t__;
        return true;
    }
    public function readASN1UTCTime(_out:Pointer<stdgo.time.Time.Time>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _bytes:String_ = new String_();
        if (!_s.value.readASN1(Go.pointer(_bytes), golang_org.x.crypto.cryptobyte.asn1.Asn1.utctime)) {
            return false;
        };
        var _t:GoString = _bytes.__t__;
        var _formatStr:GoString = _defaultUTCTimeFormatStr;
        var _err:Error = ((null : stdgo.Error));
        var __tmp__ = stdgo.time.Time.parse(_formatStr, _t), _res:stdgo.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _formatStr = "0601021504Z0700";
            {
                var __tmp__ = stdgo.time.Time.parse(_formatStr, _t);
                _res = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return false;
        };
        {
            var _serialized:GoString = _res.format(_formatStr);
            if (_serialized != _t) {
                return false;
            };
        };
        if (_res.year() >= ((2050 : GoInt))) {
            _res = _res.addDate(-((100 : GoUnTypedInt)), ((0 : GoInt)), ((0 : GoInt))).__copy__();
        };
        _out.value = _res.__copy__();
        return true;
    }
    public function readASN1GeneralizedTime(_out:Pointer<stdgo.time.Time.Time>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _bytes:String_ = new String_();
        if (!_s.value.readASN1(Go.pointer(_bytes), golang_org.x.crypto.cryptobyte.asn1.Asn1.generalizedTime)) {
            return false;
        };
        var _t:GoString = _bytes.__t__;
        var __tmp__ = stdgo.time.Time.parse(_generalizedTimeFormatStr, _t), _res:stdgo.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        {
            var _serialized:GoString = _res.format(_generalizedTimeFormatStr);
            if (_serialized != _t) {
                return false;
            };
        };
        _out.value = _res.__copy__();
        return true;
    }
    public function readASN1ObjectIdentifier(_out:Pointer<stdgo.encoding.asn1.Asn1.ObjectIdentifier>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _bytes:String_ = new String_();
        if (!_s.value.readASN1(Go.pointer(_bytes), golang_org.x.crypto.cryptobyte.asn1.Asn1.object_IDENTIFIER) || _bytes.__t__.length == ((0 : GoInt))) {
            return false;
        };
        var _components:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0 ... ((_bytes.__t__.length + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]);
        var _v:GoInt = ((0 : GoInt));
        if (!_bytes._readBase128Int(Go.pointer(_v))) {
            return false;
        };
        if (_v < ((80 : GoInt))) {
            _components[((0 : GoInt))] = _v / ((40 : GoInt));
            _components[((1 : GoInt))] = _v % ((40 : GoInt));
        } else {
            _components[((0 : GoInt))] = ((2 : GoInt));
            _components[((1 : GoInt))] = _v - ((80 : GoInt));
        };
        var _i:GoInt = ((2 : GoInt));
        Go.cfor(_bytes.__t__.length > ((0 : GoInt)), _i++, {
            if (!_bytes._readBase128Int(Go.pointer(_v))) {
                return false;
            };
            _components[_i] = _v;
        });
        _out.value = new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_components.__slice__(0, _i));
        return true;
    }
    public function _readBase128Int(_out:Pointer<GoInt>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _ret:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_s.value.__t__.length > ((0 : GoInt)), _i++, {
                if (_i == ((4 : GoInt))) {
                    return false;
                };
                _ret = (_ret << (((7 : GoUnTypedInt))));
                var _b:GoUInt8 = _s.value._read(((1 : GoInt)))[((0 : GoInt))];
                _ret = _ret | ((((_b & ((127 : GoUInt8))) : GoInt)));
                if (_b & ((128 : GoUInt8)) == ((0 : GoUInt8))) {
                    _out.value = _ret;
                    return true;
                };
            });
        };
        return false;
    }
    public function readASN1Enum(_out:Pointer<GoInt>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _bytes:String_ = new String_();
        var _i:GoInt64 = ((0 : GoInt64));
        if (!_s.value.readASN1(Go.pointer(_bytes), golang_org.x.crypto.cryptobyte.asn1.Asn1.enum_) || !_checkASN1Integer(_bytes.__copy__().__t__) || !_asn1Signed(Go.pointer(_i), _bytes.__copy__().__t__)) {
            return false;
        };
        if (((((_i : GoInt)) : GoInt64)) != _i) {
            return false;
        };
        _out.value = ((_i : GoInt));
        return true;
    }
    public function readASN1Int64WithTag(_out:Pointer<GoInt64>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _bytes:String_ = new String_();
        return _s.value.readASN1(Go.pointer(_bytes), _tag) && _checkASN1Integer(_bytes.__copy__().__t__) && _asn1Signed(_out, _bytes.__copy__().__t__);
    }
    public function _readASN1Uint64(_out:Pointer<GoUInt64>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _bytes:String_ = new String_();
        if (!_s.value.readASN1(Go.pointer(_bytes), golang_org.x.crypto.cryptobyte.asn1.Asn1.integer) || !_checkASN1Integer(_bytes.__copy__().__t__) || !_asn1Unsigned(_out, _bytes.__copy__().__t__)) {
            return false;
        };
        return true;
    }
    public function _readASN1Int64(_out:Pointer<GoInt64>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _bytes:String_ = new String_();
        if (!_s.value.readASN1(Go.pointer(_bytes), golang_org.x.crypto.cryptobyte.asn1.Asn1.integer) || !_checkASN1Integer(_bytes.__copy__().__t__) || !_asn1Signed(_out, _bytes.__copy__().__t__)) {
            return false;
        };
        return true;
    }
    public function _readASN1BigInt(_out:Pointer<stdgo.math.big.Big.Int_>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _bytes:String_ = new String_();
        if (!_s.value.readASN1(Go.pointer(_bytes), golang_org.x.crypto.cryptobyte.asn1.Asn1.integer) || !_checkASN1Integer(_bytes.__copy__().__t__)) {
            return false;
        };
        if (_bytes.__t__[((0 : GoInt))] & ((128 : GoUInt8)) == ((128 : GoUInt8))) {
            var _neg:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_bytes.__t__.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
            for (_i => _b in _bytes.__t__) {
                _neg[_i] = -1 ^ _b;
            };
            _out.value.setBytes(_neg);
            _out.value.add(_out, _bigOne);
            _out.value.neg(_out);
        } else {
            _out.value.setBytes(_bytes.__copy__().__t__);
        };
        return true;
    }
    public function readASN1Integer(_out:AnyInterface):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        if (stdgo.reflect.Reflect.typeOf(Go.toInterface(_out)).kind().__t__ != stdgo.reflect.Reflect.ptr.__t__) {
            throw "out is not a pointer";
        };
        if (stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.int.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.int8.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.int16.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
            var _i:GoInt64 = ((0 : GoInt64));
            if (!_s.value._readASN1Int64(Go.pointer(_i)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().overflowInt(_i)) {
                return false;
            };
            stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().setInt(_i);
            return true;
        } else if (stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.uint.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.uint8.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.uint16.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.uint32.__t__ || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.uint64.__t__) {
            var _u:GoUInt64 = ((0 : GoUInt64));
            if (!_s.value._readASN1Uint64(Go.pointer(_u)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().overflowUint(_u)) {
                return false;
            };
            stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().setUint(_u);
            return true;
        } else if (stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
            if (stdgo.reflect.Reflect.typeOf(Go.toInterface(_out)).elem().toString() == _bigIntType.toString()) {
                return _s.value._readASN1BigInt(((_out.value : Pointer<stdgo.math.big.Big.Int_>)));
            };
        };
        throw "out does not point to an integer type";
    }
    public function readASN1Boolean(_out:Pointer<Bool>):Bool {
        var _s = new Pointer(() -> new String_(this.__t__), __tmp__ -> new String_(this.__t__ = __tmp__.__t__));
        var _bytes:String_ = new String_();
        if (!_s.value.readASN1(Go.pointer(_bytes), golang_org.x.crypto.cryptobyte.asn1.Asn1.boolean) || _bytes.__t__.length != ((1 : GoInt))) {
            return false;
        };
        if (_bytes.__t__[((0 : GoInt))] == ((0 : GoUInt8))) {
            _out.value = false;
        } else if (_bytes.__t__[((0 : GoInt))] == ((255 : GoUInt8))) {
            _out.value = true;
        } else {
            return false;
        };
        return true;
    }
    public var __t__ : Slice<GoUInt8>;
    public function new(?t:Slice<GoUInt8>) {
        __t__ = t == null ? new Slice<GoUInt8>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new String_(__t__);
    public function __append__(args:haxe.Rest<GoUInt8>) return new String_(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new String_(this.__t__.__slice__(low, high));
}
final _generalizedTimeFormatStr : GoString = "20060102150405Z0700";
var _bigOne : Pointer<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((1 : GoInt64)));
final _defaultUTCTimeFormatStr : GoString = "060102150405Z0700";
var _bigIntType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<stdgo.math.big.Big.Int_>().nil() : Pointer<stdgo.math.big.Big.Int_>)))).elem();
function _isValidOID(_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier):Bool {
        if (_oid.__t__.length < ((2 : GoInt))) {
            return false;
        };
        if (_oid.__t__[((0 : GoInt))] > ((2 : GoInt)) || (_oid.__t__[((0 : GoInt))] <= ((1 : GoInt)) && _oid.__t__[((1 : GoInt))] >= ((40 : GoInt)))) {
            return false;
        };
        for (_ => _v in _oid.__t__) {
            if (_v < ((0 : GoInt))) {
                return false;
            };
        };
        return true;
    }
function _checkASN1Integer(_bytes:Slice<GoByte>):Bool {
        if (_bytes.length == ((0 : GoInt))) {
            return false;
        };
        if (_bytes.length == ((1 : GoInt))) {
            return true;
        };
        if (_bytes[((0 : GoInt))] == ((0 : GoUInt8)) && _bytes[((1 : GoInt))] & ((128 : GoUInt8)) == ((0 : GoUInt8)) || _bytes[((0 : GoInt))] == ((255 : GoUInt8)) && _bytes[((1 : GoInt))] & ((128 : GoUInt8)) == ((128 : GoUInt8))) {
            return false;
        };
        return true;
    }
function _asn1Signed(_out:Pointer<GoInt64>, _n:Slice<GoByte>):Bool {
        var _length:GoInt = _n.length;
        if (_length > ((8 : GoInt))) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                _out.value = (_out.value << (((8 : GoUnTypedInt))));
                _out.value = _out.value | (((_n[_i] : GoInt64)));
            });
        };
        _out.value = (_out.value << (((64 : GoUInt8)) - ((_length : GoUInt8)) * ((8 : GoUInt8))));
        _out.value = (_out.value >> (((64 : GoUInt8)) - ((_length : GoUInt8)) * ((8 : GoUInt8))));
        return true;
    }
function _asn1Unsigned(_out:Pointer<GoUInt64>, _n:Slice<GoByte>):Bool {
        var _length:GoInt = _n.length;
        if (_length > ((9 : GoInt)) || _length == ((9 : GoInt)) && _n[((0 : GoInt))] != ((0 : GoUInt8))) {
            return false;
        };
        if (_n[((0 : GoInt))] & ((128 : GoUInt8)) != ((0 : GoUInt8))) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                _out.value = (_out.value << (((8 : GoUnTypedInt))));
                _out.value = _out.value | (((_n[_i] : GoUInt64)));
            });
        };
        return true;
    }
/**
    // NewBuilder creates a Builder that appends its output to the given buffer.
    // Like append(), the slice will be reallocated if its capacity is exceeded.
    // Use Bytes to get the final buffer.
**/
function newBuilder(_buffer:Slice<GoByte>):Pointer<Builder> {
        return Go.pointer((({ _result : _buffer, _err : ((null : stdgo.Error)), _fixedSize : false, _child : new Pointer<Builder>().nil(), _offset : 0, _pendingLenLen : 0, _pendingIsASN1 : false, _inContinuation : new Pointer<Bool>().nil() } : Builder)));
    }
/**
    // NewFixedBuilder creates a Builder that appends its output into the given
    // buffer. This builder does not reallocate the output buffer. Writes that
    // would exceed the buffer's capacity are treated as an error.
**/
function newFixedBuilder(_buffer:Slice<GoByte>):Pointer<Builder> {
        return Go.pointer((({ _result : _buffer, _fixedSize : true, _err : ((null : stdgo.Error)), _child : new Pointer<Builder>().nil(), _offset : 0, _pendingLenLen : 0, _pendingIsASN1 : false, _inContinuation : new Pointer<Bool>().nil() } : Builder)));
    }
class Builder_extension_fields {
    public function addASN1Int64(__tmp__, _v:GoInt64):Void __tmp__.addASN1Int64(_v);
    public function addASN1Int64WithTag(__tmp__, _v:GoInt64, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Void __tmp__.addASN1Int64WithTag(_v, _tag);
    public function addASN1Enum(__tmp__, _v:GoInt64):Void __tmp__.addASN1Enum(_v);
    public function _addASN1Signed(__tmp__, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, _v:GoInt64):Void __tmp__._addASN1Signed(_tag, _v);
    public function addASN1Uint64(__tmp__, _v:GoUInt64):Void __tmp__.addASN1Uint64(_v);
    public function addASN1BigInt(__tmp__, _n:Pointer<stdgo.math.big.Big.Int_>):Void __tmp__.addASN1BigInt(_n);
    public function addASN1OctetString(__tmp__, _bytes:Slice<GoByte>):Void __tmp__.addASN1OctetString(_bytes);
    public function addASN1GeneralizedTime(__tmp__, _t:stdgo.time.Time.Time):Void __tmp__.addASN1GeneralizedTime(_t);
    public function addASN1UTCTime(__tmp__, _t:stdgo.time.Time.Time):Void __tmp__.addASN1UTCTime(_t);
    public function addASN1BitString(__tmp__, _data:Slice<GoByte>):Void __tmp__.addASN1BitString(_data);
    public function _addBase128Int(__tmp__, _n:GoInt64):Void __tmp__._addBase128Int(_n);
    public function addASN1ObjectIdentifier(__tmp__, _oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier):Void __tmp__.addASN1ObjectIdentifier(_oid);
    public function addASN1Boolean(__tmp__, _v:Bool):Void __tmp__.addASN1Boolean(_v);
    public function addASN1NULL(__tmp__):Void __tmp__.addASN1NULL();
    public function marshalASN1(__tmp__, _v:AnyInterface):Void __tmp__.marshalASN1(_v);
    public function addASN1(__tmp__, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, _f:BuilderContinuation):Void __tmp__.addASN1(_tag, _f);
    public function setError(__tmp__, _err:Error):Void __tmp__.setError(_err);
    public function bytes(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.bytes();
    public function bytesOrPanic(__tmp__):Slice<GoByte> return __tmp__.bytesOrPanic();
    public function addUint8(__tmp__, _v:GoUInt8):Void __tmp__.addUint8(_v);
    public function addUint16(__tmp__, _v:GoUInt16):Void __tmp__.addUint16(_v);
    public function addUint24(__tmp__, _v:GoUInt32):Void __tmp__.addUint24(_v);
    public function addUint32(__tmp__, _v:GoUInt32):Void __tmp__.addUint32(_v);
    public function addBytes(__tmp__, _v:Slice<GoByte>):Void __tmp__.addBytes(_v);
    public function addUint8LengthPrefixed(__tmp__, _f:BuilderContinuation):Void __tmp__.addUint8LengthPrefixed(_f);
    public function addUint16LengthPrefixed(__tmp__, _f:BuilderContinuation):Void __tmp__.addUint16LengthPrefixed(_f);
    public function addUint24LengthPrefixed(__tmp__, _f:BuilderContinuation):Void __tmp__.addUint24LengthPrefixed(_f);
    public function addUint32LengthPrefixed(__tmp__, _f:BuilderContinuation):Void __tmp__.addUint32LengthPrefixed(_f);
    public function _callContinuation(__tmp__, _f:BuilderContinuation, _arg:Pointer<Builder>):Void __tmp__._callContinuation(_f, _arg);
    public function _addLengthPrefixed(__tmp__, _lenLen:GoInt, _isASN1:Bool, _f:BuilderContinuation):Void __tmp__._addLengthPrefixed(_lenLen, _isASN1, _f);
    public function _flushChild(__tmp__):Void __tmp__._flushChild();
    public function _add(__tmp__, _bytes:haxe.Rest<GoByte>):Void __tmp__._add(_bytes);
    public function unwrite(__tmp__, _n:GoInt):Void __tmp__.unwrite(_n);
    public function addValue(__tmp__, _v:MarshalingValue):Void __tmp__.addValue(_v);
}
class String__extension_fields {
    public function readASN1Boolean(__tmp__, _out:Pointer<Bool>):Bool return __tmp__.readASN1Boolean(_out);
    public function readASN1Integer(__tmp__, _out:AnyInterface):Bool return __tmp__.readASN1Integer(_out);
    public function _readASN1BigInt(__tmp__, _out:Pointer<stdgo.math.big.Big.Int_>):Bool return __tmp__._readASN1BigInt(_out);
    public function _readASN1Int64(__tmp__, _out:Pointer<GoInt64>):Bool return __tmp__._readASN1Int64(_out);
    public function _readASN1Uint64(__tmp__, _out:Pointer<GoUInt64>):Bool return __tmp__._readASN1Uint64(_out);
    public function readASN1Int64WithTag(__tmp__, _out:Pointer<GoInt64>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool return __tmp__.readASN1Int64WithTag(_out, _tag);
    public function readASN1Enum(__tmp__, _out:Pointer<GoInt>):Bool return __tmp__.readASN1Enum(_out);
    public function _readBase128Int(__tmp__, _out:Pointer<GoInt>):Bool return __tmp__._readBase128Int(_out);
    public function readASN1ObjectIdentifier(__tmp__, _out:Pointer<stdgo.encoding.asn1.Asn1.ObjectIdentifier>):Bool return __tmp__.readASN1ObjectIdentifier(_out);
    public function readASN1GeneralizedTime(__tmp__, _out:Pointer<stdgo.time.Time.Time>):Bool return __tmp__.readASN1GeneralizedTime(_out);
    public function readASN1UTCTime(__tmp__, _out:Pointer<stdgo.time.Time.Time>):Bool return __tmp__.readASN1UTCTime(_out);
    public function readASN1BitString(__tmp__, _out:Pointer<stdgo.encoding.asn1.Asn1.BitString>):Bool return __tmp__.readASN1BitString(_out);
    public function readASN1BitStringAsBytes(__tmp__, _out:Pointer<Slice<GoByte>>):Bool return __tmp__.readASN1BitStringAsBytes(_out);
    public function readASN1Bytes(__tmp__, _out:Pointer<Slice<GoByte>>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool return __tmp__.readASN1Bytes(_out, _tag);
    public function readASN1(__tmp__, _out:Pointer<String_>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool return __tmp__.readASN1(_out, _tag);
    public function readASN1Element(__tmp__, _out:Pointer<String_>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool return __tmp__.readASN1Element(_out, _tag);
    public function readAnyASN1(__tmp__, _out:Pointer<String_>, _outTag:Pointer<golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>):Bool return __tmp__.readAnyASN1(_out, _outTag);
    public function readAnyASN1Element(__tmp__, _out:Pointer<String_>, _outTag:Pointer<golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>):Bool return __tmp__.readAnyASN1Element(_out, _outTag);
    public function peekASN1Tag(__tmp__, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool return __tmp__.peekASN1Tag(_tag);
    public function skipASN1(__tmp__, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool return __tmp__.skipASN1(_tag);
    public function readOptionalASN1(__tmp__, _out:Pointer<String_>, _outPresent:Pointer<Bool>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool return __tmp__.readOptionalASN1(_out, _outPresent, _tag);
    public function skipOptionalASN1(__tmp__, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool return __tmp__.skipOptionalASN1(_tag);
    public function readOptionalASN1Integer(__tmp__, _out:AnyInterface, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, _defaultValue:AnyInterface):Bool return __tmp__.readOptionalASN1Integer(_out, _tag, _defaultValue);
    public function readOptionalASN1OctetString(__tmp__, _out:Pointer<Slice<GoByte>>, _outPresent:Pointer<Bool>, _tag:golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool return __tmp__.readOptionalASN1OctetString(_out, _outPresent, _tag);
    public function readOptionalASN1Boolean(__tmp__, _out:Pointer<Bool>, _defaultValue:Bool):Bool return __tmp__.readOptionalASN1Boolean(_out, _defaultValue);
    public function _readASN1(__tmp__, _out:Pointer<String_>, _outTag:Pointer<golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>, _skipHeader:Bool):Bool return __tmp__._readASN1(_out, _outTag, _skipHeader);
    public function _read(__tmp__, _n:GoInt):Slice<GoByte> return __tmp__._read(_n);
    public function skip(__tmp__, _n:GoInt):Bool return __tmp__.skip(_n);
    public function readUint8(__tmp__, _out:Pointer<GoUInt8>):Bool return __tmp__.readUint8(_out);
    public function readUint16(__tmp__, _out:Pointer<GoUInt16>):Bool return __tmp__.readUint16(_out);
    public function readUint24(__tmp__, _out:Pointer<GoUInt32>):Bool return __tmp__.readUint24(_out);
    public function readUint32(__tmp__, _out:Pointer<GoUInt32>):Bool return __tmp__.readUint32(_out);
    public function _readUnsigned(__tmp__, _out:Pointer<GoUInt32>, _length:GoInt):Bool return __tmp__._readUnsigned(_out, _length);
    public function _readLengthPrefixed(__tmp__, _lenLen:GoInt, _outChild:Pointer<String_>):Bool return __tmp__._readLengthPrefixed(_lenLen, _outChild);
    public function readUint8LengthPrefixed(__tmp__, _out:Pointer<String_>):Bool return __tmp__.readUint8LengthPrefixed(_out);
    public function readUint16LengthPrefixed(__tmp__, _out:Pointer<String_>):Bool return __tmp__.readUint16LengthPrefixed(_out);
    public function readUint24LengthPrefixed(__tmp__, _out:Pointer<String_>):Bool return __tmp__.readUint24LengthPrefixed(_out);
    public function readBytes(__tmp__, _out:Pointer<Slice<GoByte>>, _n:GoInt):Bool return __tmp__.readBytes(_out, _n);
    public function copyBytes(__tmp__, _out:Slice<GoByte>):Bool return __tmp__.copyBytes(_out);
    public function empty(__tmp__):Bool return __tmp__.empty();
}
