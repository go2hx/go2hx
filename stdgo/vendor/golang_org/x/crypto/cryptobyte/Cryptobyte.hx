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
var _bigIntType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((null : stdgo.math.big.Big.Int_)))).elem();
var _bigOne : Ref<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((1 : GoInt64)));
typedef MarshalingValue = StructType & {
    public function marshal(_b:Builder):Error;
};
@:structInit @:using(vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.Builder_static_extension) class Builder {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _result : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _fixedSize : Bool = false;
    public var _child : Ref<Builder> = null;
    public var _offset : GoInt = ((0 : GoInt));
    public var _pendingLenLen : GoInt = ((0 : GoInt));
    public var _pendingIsASN1 : Bool = false;
    public var _inContinuation : Pointer<Bool> = ((null : Pointer<Bool>));
    public function new(?_err:stdgo.Error, ?_result:Slice<GoUInt8>, ?_fixedSize:Bool, ?_child:Ref<Builder>, ?_offset:GoInt, ?_pendingLenLen:GoInt, ?_pendingIsASN1:Bool, ?_inContinuation:Pointer<Bool>) {
        if (_err != null) this._err = _err;
        if (_result != null) this._result = _result;
        if (_fixedSize != null) this._fixedSize = _fixedSize;
        if (_child != null) this._child = _child;
        if (_offset != null) this._offset = _offset;
        if (_pendingLenLen != null) this._pendingLenLen = _pendingLenLen;
        if (_pendingIsASN1 != null) this._pendingIsASN1 = _pendingIsASN1;
        if (_inContinuation != null) this._inContinuation = _inContinuation;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Builder(_err, _result, _fixedSize, _child, _offset, _pendingLenLen, _pendingIsASN1, _inContinuation);
    }
}
@:structInit class BuildError {
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?err:stdgo.Error) {
        if (err != null) this.err = err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new BuildError(err);
    }
}
@:named typedef BuilderContinuation = Ref<Builder> -> Void;
@:named @:using(vendor.golang_org.x.crypto.cryptobyte.Cryptobyte.String__static_extension) typedef String_ = Slice<GoUInt8>;
function _isValidOID(_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier):Bool {
        if ((_oid != null ? _oid.length : ((0 : GoInt))) < ((2 : GoInt))) {
            return false;
        };
        if (((_oid != null ? _oid[((0 : GoInt))] : ((0 : GoInt))) > ((2 : GoInt))) || (((_oid != null ? _oid[((0 : GoInt))] : ((0 : GoInt))) <= ((1 : GoInt))) && ((_oid != null ? _oid[((1 : GoInt))] : ((0 : GoInt))) >= ((40 : GoInt))))) {
            return false;
        };
        for (_0 => _v in _oid) {
            if (_v < ((0 : GoInt))) {
                return false;
            };
        };
        return true;
    }
function _checkASN1Integer(_bytes:Slice<GoByte>):Bool {
        if ((_bytes != null ? _bytes.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return false;
        };
        if ((_bytes != null ? _bytes.length : ((0 : GoInt))) == ((1 : GoInt))) {
            return true;
        };
        if ((((_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8))) && (((_bytes != null ? _bytes[((1 : GoInt))] : ((0 : GoUInt8))) & ((128 : GoUInt8))) == ((0 : GoUInt8)))) || (((_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) == ((255 : GoUInt8))) && (((_bytes != null ? _bytes[((1 : GoInt))] : ((0 : GoUInt8))) & ((128 : GoUInt8))) == ((128 : GoUInt8))))) {
            return false;
        };
        return true;
    }
function _asn1Signed(_out:Pointer<GoInt64>, _n:Slice<GoByte>):Bool {
        var _length:GoInt = (_n != null ? _n.length : ((0 : GoInt)));
        if (_length > ((8 : GoInt))) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                _out.value = _out.value << (((8 : GoUnTypedInt)));
                _out.value = _out.value | ((((_n != null ? _n[_i] : ((0 : GoUInt8))) : GoInt64)));
            });
        };
        _out.value = _out.value << (((64 : GoUInt8)) - (((_length : GoUInt8)) * ((8 : GoUInt8))));
        _out.value = _out.value >> (((64 : GoUInt8)) - (((_length : GoUInt8)) * ((8 : GoUInt8))));
        return true;
    }
function _asn1Unsigned(_out:Pointer<GoUInt64>, _n:Slice<GoByte>):Bool {
        var _length:GoInt = (_n != null ? _n.length : ((0 : GoInt)));
        if ((_length > ((9 : GoInt))) || ((_length == ((9 : GoInt))) && ((_n != null ? _n[((0 : GoInt))] : ((0 : GoUInt8))) != ((0 : GoUInt8))))) {
            return false;
        };
        if (((_n != null ? _n[((0 : GoInt))] : ((0 : GoUInt8))) & ((128 : GoUInt8))) != ((0 : GoUInt8))) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                _out.value = _out.value << (((8 : GoUnTypedInt)));
                _out.value = _out.value | ((((_n != null ? _n[_i] : ((0 : GoUInt8))) : GoUInt64)));
            });
        };
        return true;
    }
/**
    // NewBuilder creates a Builder that appends its output to the given buffer.
    // Like append(), the slice will be reallocated if its capacity is exceeded.
    // Use Bytes to get the final buffer.
**/
function newBuilder(_buffer:Slice<GoByte>):Builder {
        return (({ _result : _buffer, _err : ((null : stdgo.Error)), _fixedSize : false, _child : null, _offset : 0, _pendingLenLen : 0, _pendingIsASN1 : false, _inContinuation : ((null : Pointer<Bool>)) } : Builder));
    }
/**
    // NewFixedBuilder creates a Builder that appends its output into the given
    // buffer. This builder does not reallocate the output buffer. Writes that
    // would exceed the buffer's capacity are treated as an error.
**/
function newFixedBuilder(_buffer:Slice<GoByte>):Builder {
        return (({ _result : _buffer, _fixedSize : true, _err : ((null : stdgo.Error)), _child : null, _offset : 0, _pendingLenLen : 0, _pendingIsASN1 : false, _inContinuation : ((null : Pointer<Bool>)) } : Builder));
    }
@:keep class Builder_static_extension {
    /**
        // AddValue calls Marshal on v, passing a pointer to the builder to append to.
        // If Marshal returns an error, it is set on the Builder so that subsequent
        // appends don't have an effect.
    **/
    @:keep
    public static function addValue( _b:Builder, _v:MarshalingValue):Void {
        var _err:stdgo.Error = _v.marshal(_b);
        if (_err != null) {
            _b._err = _err;
        };
    }
    /**
        // Unwrite rolls back n bytes written directly to the Builder. An attempt by a
        // child builder passed to a continuation to unwrite bytes from its parent will
        // panic.
    **/
    @:keep
    public static function unwrite( _b:Builder, _n:GoInt):Void {
        if (_b._err != null) {
            return;
        };
        if (_b._child != null) {
            throw Go.toInterface(((("cryptobyte: attempted unwrite while child is pending" : GoString))));
        };
        var _length:GoInt = ((_b._result != null ? _b._result.length : ((0 : GoInt))) - _b._pendingLenLen) - _b._offset;
        if (_length < ((0 : GoInt))) {
            throw Go.toInterface(((("cryptobyte: internal error" : GoString))));
        };
        if (_n > _length) {
            throw Go.toInterface(((("cryptobyte: attempted to unwrite more than was written" : GoString))));
        };
        _b._result = ((_b._result.__slice__(0, (_b._result != null ? _b._result.length : ((0 : GoInt))) - _n) : Slice<GoUInt8>));
    }
    @:keep
    public static function _add( _b:Builder, _bytes:haxe.Rest<GoByte>):Void {
        var _bytes = new Slice<GoByte>(..._bytes);
        if (_b._err != null) {
            return;
        };
        if (_b._child != null) {
            throw Go.toInterface(((("cryptobyte: attempted write while child is pending" : GoString))));
        };
        if (((_b._result != null ? _b._result.length : ((0 : GoInt))) + (_bytes != null ? _bytes.length : ((0 : GoInt)))) < (_bytes != null ? _bytes.length : ((0 : GoInt)))) {
            _b._err = stdgo.errors.Errors.new_(((("cryptobyte: length overflow" : GoString))));
        };
        if (_b._fixedSize && (((_b._result != null ? _b._result.length : ((0 : GoInt))) + (_bytes != null ? _bytes.length : ((0 : GoInt)))) > (_b._result != null ? _b._result.cap() : ((0 : GoInt))))) {
            _b._err = stdgo.errors.Errors.new_(((("cryptobyte: Builder is exceeding its fixed-size buffer" : GoString))));
            return;
        };
        _b._result = (_b._result != null ? _b._result.__append__(..._bytes.__toArray__()) : new Slice<GoUInt8>(..._bytes.__toArray__()));
    }
    @:keep
    public static function _flushChild( _b:Builder):Void {
        if (_b._child == null) {
            return;
        };
        _b._child._flushChild();
        var _child = _b._child;
        _b._child = null;
        if (_child._err != null) {
            _b._err = _child._err;
            return;
        };
        var _length:GoInt = ((_child._result != null ? _child._result.length : ((0 : GoInt))) - _child._pendingLenLen) - _child._offset;
        if (_length < ((0 : GoInt))) {
            throw Go.toInterface(((("cryptobyte: internal error" : GoString))));
        };
        if (_child._pendingIsASN1) {
            if (_child._pendingLenLen != ((1 : GoInt))) {
                throw Go.toInterface(((("cryptobyte: internal error" : GoString))));
            };
            var _lenLen:GoUInt8 = ((0 : GoUInt8)), _lenByte:GoUInt8 = ((0 : GoUInt8));
            if (((_length : GoInt64)) > (("4294967294" : GoInt64))) {
                _b._err = stdgo.errors.Errors.new_(((("pending ASN.1 child too long" : GoString))));
                return;
            } else if (_length > ((16777215 : GoInt))) {
                _lenLen = ((5 : GoUInt8));
                _lenByte = ((132 : GoUInt8));
            } else if (_length > ((65535 : GoInt))) {
                _lenLen = ((4 : GoUInt8));
                _lenByte = ((131 : GoUInt8));
            } else if (_length > ((255 : GoInt))) {
                _lenLen = ((3 : GoUInt8));
                _lenByte = ((130 : GoUInt8));
            } else if (_length > ((127 : GoInt))) {
                _lenLen = ((2 : GoUInt8));
                _lenByte = ((129 : GoUInt8));
            } else {
                _lenLen = ((1 : GoUInt8));
                _lenByte = ((_length : GoUInt8));
                _length = ((0 : GoInt));
            };
            if (_child._result != null) _child._result[_child._offset] = _lenByte;
            var _extraBytes:GoInt = (((_lenLen - ((1 : GoUInt8))) : GoInt));
            if (_extraBytes != ((0 : GoInt))) {
                _child._add(...new Slice<GoUInt8>(...[for (i in 0 ... ((_extraBytes : GoInt)).toBasic()) ((0 : GoUInt8))]).__toArray__());
                var _childStart:GoInt = _child._offset + _child._pendingLenLen;
                Go.copySlice(((_child._result.__slice__(_childStart + _extraBytes) : Slice<GoUInt8>)), ((_child._result.__slice__(_childStart) : Slice<GoUInt8>)));
            };
            _child._offset++;
            _child._pendingLenLen = _extraBytes;
        };
        var _l:GoInt = _length;
        {
            var _i:GoInt = _child._pendingLenLen - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if (_child._result != null) _child._result[_child._offset + _i] = ((_l : GoUInt8));
                _l = _l >> (((8 : GoUnTypedInt)));
            });
        };
        if (_l != ((0 : GoInt))) {
            _b._err = stdgo.fmt.Fmt.errorf(((("cryptobyte: pending child length %d exceeds %d-byte length prefix" : GoString))), Go.toInterface(_length), Go.toInterface(_child._pendingLenLen));
            return;
        };
        if (_b._fixedSize && (Go.pointer((_b._result != null ? _b._result[((0 : GoInt))] : ((0 : GoUInt8)))) != Go.pointer((_child._result != null ? _child._result[((0 : GoInt))] : ((0 : GoUInt8)))))) {
            throw Go.toInterface(((("cryptobyte: BuilderContinuation reallocated a fixed-size buffer" : GoString))));
        };
        _b._result = _child._result;
    }
    @:keep
    public static function _addLengthPrefixed( _b:Builder, _lenLen:GoInt, _isASN1:Bool, _f:BuilderContinuation):Void {
        if (_b._err != null) {
            return;
        };
        var _offset:GoInt = (_b._result != null ? _b._result.length : ((0 : GoInt)));
        _b._add(...new Slice<GoUInt8>(...[for (i in 0 ... ((_lenLen : GoInt)).toBasic()) ((0 : GoUInt8))]).__toArray__());
        if (_b._inContinuation == null) {
            _b._inContinuation = Go.pointer(false);
        };
        _b._child = (({ _result : _b._result, _fixedSize : _b._fixedSize, _offset : _offset, _pendingLenLen : _lenLen, _pendingIsASN1 : _isASN1, _inContinuation : _b._inContinuation, _err : ((null : stdgo.Error)), _child : null } : Builder));
        _b._callContinuation(_f, _b._child);
        _b._flushChild();
        if (_b._child != null) {
            throw Go.toInterface(((("cryptobyte: internal error" : GoString))));
        };
    }
    @:keep
    public static function _callContinuation( _b:Builder, _f:BuilderContinuation, _arg:Builder):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (!_b._inContinuation.value) {
                _b._inContinuation.value = true;
                __deferstack__.unshift(() -> {
                    var a = function():Void {
                        _b._inContinuation.value = false;
                        var _r:AnyInterface = Go.toInterface(({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }));
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
                                { value : ((_r.value : BuildError)), ok : true };
                            } catch(_) {
                                { value : new BuildError(), ok : false };
                            }, _buildError = __tmp__.value, _ok = __tmp__.ok;
                            if (_ok) {
                                _b._err = _buildError.err;
                            } else {
                                throw Go.toInterface(_r);
                            };
                        };
                    };
                    a();
                });
            };
            _f(_arg);
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
    /**
        // AddUint32LengthPrefixed adds a big-endian, 32-bit length-prefixed byte sequence.
    **/
    @:keep
    public static function addUint32LengthPrefixed( _b:Builder, _f:BuilderContinuation):Void {
        _b._addLengthPrefixed(((4 : GoInt)), false, _f);
    }
    /**
        // AddUint24LengthPrefixed adds a big-endian, 24-bit length-prefixed byte sequence.
    **/
    @:keep
    public static function addUint24LengthPrefixed( _b:Builder, _f:BuilderContinuation):Void {
        _b._addLengthPrefixed(((3 : GoInt)), false, _f);
    }
    /**
        // AddUint16LengthPrefixed adds a big-endian, 16-bit length-prefixed byte sequence.
    **/
    @:keep
    public static function addUint16LengthPrefixed( _b:Builder, _f:BuilderContinuation):Void {
        _b._addLengthPrefixed(((2 : GoInt)), false, _f);
    }
    /**
        // AddUint8LengthPrefixed adds a 8-bit length-prefixed byte sequence.
    **/
    @:keep
    public static function addUint8LengthPrefixed( _b:Builder, _f:BuilderContinuation):Void {
        _b._addLengthPrefixed(((1 : GoInt)), false, _f);
    }
    /**
        // AddBytes appends a sequence of bytes to the byte string.
    **/
    @:keep
    public static function addBytes( _b:Builder, _v:Slice<GoByte>):Void {
        _b._add(..._v.__toArray__());
    }
    /**
        // AddUint32 appends a big-endian, 32-bit value to the byte string.
    **/
    @:keep
    public static function addUint32( _b:Builder, _v:GoUInt32):Void {
        _b._add((((_v >> ((24 : GoUnTypedInt))) : GoByte)), (((_v >> ((16 : GoUnTypedInt))) : GoByte)), (((_v >> ((8 : GoUnTypedInt))) : GoByte)), ((_v : GoByte)));
    }
    /**
        // AddUint24 appends a big-endian, 24-bit value to the byte string. The highest
        // byte of the 32-bit input value is silently truncated.
    **/
    @:keep
    public static function addUint24( _b:Builder, _v:GoUInt32):Void {
        _b._add((((_v >> ((16 : GoUnTypedInt))) : GoByte)), (((_v >> ((8 : GoUnTypedInt))) : GoByte)), ((_v : GoByte)));
    }
    /**
        // AddUint16 appends a big-endian, 16-bit value to the byte string.
    **/
    @:keep
    public static function addUint16( _b:Builder, _v:GoUInt16):Void {
        _b._add((((_v >> ((8 : GoUnTypedInt))) : GoByte)), ((_v : GoByte)));
    }
    /**
        // AddUint8 appends an 8-bit value to the byte string.
    **/
    @:keep
    public static function addUint8( _b:Builder, _v:GoUInt8):Void {
        _b._add(((_v : GoByte)));
    }
    /**
        // BytesOrPanic returns the bytes written by the builder or panics if an error
        // has occurred during building.
    **/
    @:keep
    public static function bytesOrPanic( _b:Builder):Slice<GoByte> {
        if (_b._err != null) {
            throw Go.toInterface(_b._err);
        };
        return ((_b._result.__slice__(_b._offset) : Slice<GoUInt8>));
    }
    /**
        // Bytes returns the bytes written by the builder or an error if one has
        // occurred during building.
    **/
    @:keep
    public static function bytes( _b:Builder):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        if (_b._err != null) {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : _b._err };
        };
        return { _0 : ((_b._result.__slice__(_b._offset) : Slice<GoUInt8>)), _1 : ((null : stdgo.Error)) };
    }
    /**
        // SetError sets the value to be returned as the error from Bytes. Writes
        // performed after calling SetError are ignored.
    **/
    @:keep
    public static function setError( _b:Builder, _err:Error):Void {
        _b._err = _err;
    }
    /**
        // AddASN1 appends an ASN.1 object. The object is prefixed with the given tag.
        // Tags greater than 30 are not supported and result in an error (i.e.
        // low-tag-number form only). The child builder passed to the
        // BuilderContinuation can be used to build the content of the ASN.1 object.
    **/
    @:keep
    public static function addASN1( _b:Builder, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, _f:BuilderContinuation):Void {
        if (_b._err != null) {
            return;
        };
        if ((_tag & ((31 : GoUInt8))) == ((31 : GoUInt8))) {
            _b._err = stdgo.fmt.Fmt.errorf(((("cryptobyte: high-tag number identifier octects not supported: 0x%x" : GoString))), Go.toInterface(_tag));
            return;
        };
        _b.addUint8(((_tag : GoUInt8)));
        _b._addLengthPrefixed(((1 : GoInt)), true, _f);
    }
    /**
        // MarshalASN1 calls encoding_asn1.Marshal on its input and appends the result if
        // successful or records an error if one occurred.
    **/
    @:keep
    public static function marshalASN1( _b:Builder, _v:AnyInterface):Void {
        if (_b._err != null) {
            return;
        };
        var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_v)), _bytes:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _b._err = _err;
            return;
        };
        _b.addBytes(_bytes);
    }
    @:keep
    public static function addASN1NULL( _b:Builder):Void {
        _b._add(((((5 : GoUInt8)) : GoUInt8)), ((0 : GoUInt8)));
    }
    @:keep
    public static function addASN1Boolean( _b:Builder, _v:Bool):Void {
        _b.addASN1(((1 : GoUInt8)), function(_b:Builder):Void {
            if (_v) {
                _b.addUint8(((255 : GoUInt8)));
            } else {
                _b.addUint8(((0 : GoUInt8)));
            };
        });
    }
    @:keep
    public static function addASN1ObjectIdentifier( _b:Builder, _oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier):Void {
        _b.addASN1(((6 : GoUInt8)), function(_b:Builder):Void {
            if (!_isValidOID(_oid)) {
                _b._err = stdgo.fmt.Fmt.errorf(((("cryptobyte: invalid OID: %v" : GoString))), Go.toInterface(_oid));
                return;
            };
            _b._addBase128Int(((((_oid != null ? _oid[((0 : GoInt))] : ((0 : GoInt))) : GoInt64)) * ((40 : GoInt64))) + (((_oid != null ? _oid[((1 : GoInt))] : ((0 : GoInt))) : GoInt64)));
            for (_0 => _v in ((_oid.__slice__(((2 : GoInt))) : stdgo.encoding.asn1.Asn1.ObjectIdentifier))) {
                _b._addBase128Int(((_v : GoInt64)));
            };
        });
    }
    @:keep
    public static function _addBase128Int( _b:Builder, _n:GoInt64):Void {
        var _length:GoInt = ((0 : GoInt));
        if (_n == ((0 : GoInt64))) {
            _length = ((1 : GoInt));
        } else {
            {
                var _i:GoInt64 = _n;
                Go.cfor(_i > ((0 : GoInt64)), _i = _i >> (((7 : GoUnTypedInt))), {
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
                _b._add(_o);
            });
        };
    }
    /**
        // AddASN1BitString appends a DER-encoded ASN.1 BIT STRING. This does not
        // support BIT STRINGs that are not a whole number of bytes.
    **/
    @:keep
    public static function addASN1BitString( _b:Builder, _data:Slice<GoByte>):Void {
        _b.addASN1(((3 : GoUInt8)), function(_b:Builder):Void {
            _b.addUint8(((0 : GoUInt8)));
            _b.addBytes(_data);
        });
    }
    /**
        // AddASN1UTCTime appends a DER-encoded ASN.1 UTCTime.
    **/
    @:keep
    public static function addASN1UTCTime( _b:Builder, _t:stdgo.time.Time.Time):Void {
        _b.addASN1(((23 : GoUInt8)), function(_c:Builder):Void {
            if ((_t.year() < ((1950 : GoInt))) || (_t.year() >= ((2050 : GoInt)))) {
                _b._err = stdgo.fmt.Fmt.errorf(((("cryptobyte: cannot represent %v as a UTCTime" : GoString))), Go.toInterface(_t));
                return;
            };
            _c.addBytes(((_t.format(((("060102150405Z0700" : GoString)))) : Slice<GoByte>)));
        });
    }
    /**
        // AddASN1GeneralizedTime appends a DER-encoded ASN.1 GENERALIZEDTIME.
    **/
    @:keep
    public static function addASN1GeneralizedTime( _b:Builder, _t:stdgo.time.Time.Time):Void {
        if ((_t.year() < ((0 : GoInt))) || (_t.year() > ((9999 : GoInt)))) {
            _b._err = stdgo.fmt.Fmt.errorf(((("cryptobyte: cannot represent %v as a GeneralizedTime" : GoString))), Go.toInterface(_t));
            return;
        };
        _b.addASN1(((24 : GoUInt8)), function(_c:Builder):Void {
            _c.addBytes(((_t.format(((("20060102150405Z0700" : GoString)))) : Slice<GoByte>)));
        });
    }
    /**
        // AddASN1OctetString appends a DER-encoded ASN.1 OCTET STRING.
    **/
    @:keep
    public static function addASN1OctetString( _b:Builder, _bytes:Slice<GoByte>):Void {
        _b.addASN1(((4 : GoUInt8)), function(_c:Builder):Void {
            _c.addBytes(_bytes);
        });
    }
    /**
        // AddASN1BigInt appends a DER-encoded ASN.1 INTEGER.
    **/
    @:keep
    public static function addASN1BigInt( _b:Builder, _n:stdgo.math.big.Big.Int_):Void {
        if (_b._err != null) {
            return;
        };
        _b.addASN1(((2 : GoUInt8)), function(_c:Builder):Void {
            if (_n.sign() < ((0 : GoInt))) {
                var _nMinus1 = new stdgo.math.big.Big.Int_().neg(_n);
                _nMinus1.sub(_nMinus1, _bigOne);
                var _bytes = _nMinus1.bytes();
                for (_i => _ in _bytes) {
                    if (_bytes != null) (_bytes != null ? _bytes[_i] : ((0 : GoUInt8))) ^ (((255 : GoUInt8)));
                };
                if (((_bytes != null ? _bytes.length : ((0 : GoInt))) == ((0 : GoInt))) || (((_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) & ((128 : GoUInt8))) == ((0 : GoUInt8)))) {
                    _c._add(((255 : GoUInt8)));
                };
                _c._add(..._bytes.__toArray__());
            } else if (_n.sign() == ((0 : GoInt))) {
                _c._add(((0 : GoUInt8)));
            } else {
                var _bytes = _n.bytes();
                if (((_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) & ((128 : GoUInt8))) != ((0 : GoUInt8))) {
                    _c._add(((0 : GoUInt8)));
                };
                _c._add(..._bytes.__toArray__());
            };
        });
    }
    /**
        // AddASN1Uint64 appends a DER-encoded ASN.1 INTEGER.
    **/
    @:keep
    public static function addASN1Uint64( _b:Builder, _v:GoUInt64):Void {
        _b.addASN1(((2 : GoUInt8)), function(_c:Builder):Void {
            var _length:GoInt = ((1 : GoInt));
            {
                var _i:GoUInt64 = _v;
                Go.cfor(_i >= ((128 : GoUInt64)), _i = _i >> (((8 : GoUnTypedInt))), {
                    _length++;
                });
            };
            Go.cfor(_length > ((0 : GoInt)), _length--, {
                var _i:GoUInt64 = (_v >> ((((_length - ((1 : GoInt))) * ((8 : GoInt))) : GoUInt))) & ((255 : GoUInt64));
                _c.addUint8(((_i : GoUInt8)));
            });
        });
    }
    @:keep
    public static function _addASN1Signed( _b:Builder, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, _v:GoInt64):Void {
        _b.addASN1(_tag, function(_c:Builder):Void {
            var _length:GoInt = ((1 : GoInt));
            {
                var _i:GoInt64 = _v;
                Go.cfor((_i >= ((128 : GoInt64))) || (_i < ((-128 : GoInt64))), _i = _i >> (((8 : GoUnTypedInt))), {
                    _length++;
                });
            };
            Go.cfor(_length > ((0 : GoInt)), _length--, {
                var _i:GoInt64 = (_v >> ((((_length - ((1 : GoInt))) * ((8 : GoInt))) : GoUInt))) & ((255 : GoInt64));
                _c.addUint8(((_i : GoUInt8)));
            });
        });
    }
    /**
        // AddASN1Enum appends a DER-encoded ASN.1 ENUMERATION.
    **/
    @:keep
    public static function addASN1Enum( _b:Builder, _v:GoInt64):Void {
        _b._addASN1Signed(((10 : GoUInt8)), _v);
    }
    /**
        // AddASN1Int64WithTag appends a DER-encoded ASN.1 INTEGER with the
        // given tag.
    **/
    @:keep
    public static function addASN1Int64WithTag( _b:Builder, _v:GoInt64, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Void {
        _b._addASN1Signed(_tag, _v);
    }
    /**
        // AddASN1Int64 appends a DER-encoded ASN.1 INTEGER.
    **/
    @:keep
    public static function addASN1Int64( _b:Builder, _v:GoInt64):Void {
        _b._addASN1Signed(((2 : GoUInt8)), _v);
    }
}
class Builder_wrapper {
    /**
        // AddValue calls Marshal on v, passing a pointer to the builder to append to.
        // If Marshal returns an error, it is set on the Builder so that subsequent
        // appends don't have an effect.
    **/
    @:keep
    public var addValue : MarshalingValue -> Void = null;
    /**
        // Unwrite rolls back n bytes written directly to the Builder. An attempt by a
        // child builder passed to a continuation to unwrite bytes from its parent will
        // panic.
    **/
    @:keep
    public var unwrite : GoInt -> Void = null;
    @:keep
    public var _add : haxe.Rest<GoByte> -> Void = null;
    @:keep
    public var _flushChild : () -> Void = null;
    @:keep
    public var _addLengthPrefixed : (GoInt, Bool, BuilderContinuation) -> Void = null;
    @:keep
    public var _callContinuation : (BuilderContinuation, Builder) -> Void = null;
    /**
        // AddUint32LengthPrefixed adds a big-endian, 32-bit length-prefixed byte sequence.
    **/
    @:keep
    public var addUint32LengthPrefixed : BuilderContinuation -> Void = null;
    /**
        // AddUint24LengthPrefixed adds a big-endian, 24-bit length-prefixed byte sequence.
    **/
    @:keep
    public var addUint24LengthPrefixed : BuilderContinuation -> Void = null;
    /**
        // AddUint16LengthPrefixed adds a big-endian, 16-bit length-prefixed byte sequence.
    **/
    @:keep
    public var addUint16LengthPrefixed : BuilderContinuation -> Void = null;
    /**
        // AddUint8LengthPrefixed adds a 8-bit length-prefixed byte sequence.
    **/
    @:keep
    public var addUint8LengthPrefixed : BuilderContinuation -> Void = null;
    /**
        // AddBytes appends a sequence of bytes to the byte string.
    **/
    @:keep
    public var addBytes : Slice<GoByte> -> Void = null;
    /**
        // AddUint32 appends a big-endian, 32-bit value to the byte string.
    **/
    @:keep
    public var addUint32 : GoUInt32 -> Void = null;
    /**
        // AddUint24 appends a big-endian, 24-bit value to the byte string. The highest
        // byte of the 32-bit input value is silently truncated.
    **/
    @:keep
    public var addUint24 : GoUInt32 -> Void = null;
    /**
        // AddUint16 appends a big-endian, 16-bit value to the byte string.
    **/
    @:keep
    public var addUint16 : GoUInt16 -> Void = null;
    /**
        // AddUint8 appends an 8-bit value to the byte string.
    **/
    @:keep
    public var addUint8 : GoUInt8 -> Void = null;
    /**
        // BytesOrPanic returns the bytes written by the builder or panics if an error
        // has occurred during building.
    **/
    @:keep
    public var bytesOrPanic : () -> Slice<GoByte> = null;
    /**
        // Bytes returns the bytes written by the builder or an error if one has
        // occurred during building.
    **/
    @:keep
    public var bytes : () -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    /**
        // SetError sets the value to be returned as the error from Bytes. Writes
        // performed after calling SetError are ignored.
    **/
    @:keep
    public var setError : Error -> Void = null;
    /**
        // AddASN1 appends an ASN.1 object. The object is prefixed with the given tag.
        // Tags greater than 30 are not supported and result in an error (i.e.
        // low-tag-number form only). The child builder passed to the
        // BuilderContinuation can be used to build the content of the ASN.1 object.
    **/
    @:keep
    public var addASN1 : (vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, BuilderContinuation) -> Void = null;
    /**
        // MarshalASN1 calls encoding_asn1.Marshal on its input and appends the result if
        // successful or records an error if one occurred.
    **/
    @:keep
    public var marshalASN1 : AnyInterface -> Void = null;
    @:keep
    public var addASN1NULL : () -> Void = null;
    @:keep
    public var addASN1Boolean : Bool -> Void = null;
    @:keep
    public var addASN1ObjectIdentifier : stdgo.encoding.asn1.Asn1.ObjectIdentifier -> Void = null;
    @:keep
    public var _addBase128Int : GoInt64 -> Void = null;
    /**
        // AddASN1BitString appends a DER-encoded ASN.1 BIT STRING. This does not
        // support BIT STRINGs that are not a whole number of bytes.
    **/
    @:keep
    public var addASN1BitString : Slice<GoByte> -> Void = null;
    /**
        // AddASN1UTCTime appends a DER-encoded ASN.1 UTCTime.
    **/
    @:keep
    public var addASN1UTCTime : stdgo.time.Time.Time -> Void = null;
    /**
        // AddASN1GeneralizedTime appends a DER-encoded ASN.1 GENERALIZEDTIME.
    **/
    @:keep
    public var addASN1GeneralizedTime : stdgo.time.Time.Time -> Void = null;
    /**
        // AddASN1OctetString appends a DER-encoded ASN.1 OCTET STRING.
    **/
    @:keep
    public var addASN1OctetString : Slice<GoByte> -> Void = null;
    /**
        // AddASN1BigInt appends a DER-encoded ASN.1 INTEGER.
    **/
    @:keep
    public var addASN1BigInt : stdgo.math.big.Big.Int_ -> Void = null;
    /**
        // AddASN1Uint64 appends a DER-encoded ASN.1 INTEGER.
    **/
    @:keep
    public var addASN1Uint64 : GoUInt64 -> Void = null;
    @:keep
    public var _addASN1Signed : (vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, GoInt64) -> Void = null;
    /**
        // AddASN1Enum appends a DER-encoded ASN.1 ENUMERATION.
    **/
    @:keep
    public var addASN1Enum : GoInt64 -> Void = null;
    /**
        // AddASN1Int64WithTag appends a DER-encoded ASN.1 INTEGER with the
        // given tag.
    **/
    @:keep
    public var addASN1Int64WithTag : (GoInt64, vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag) -> Void = null;
    /**
        // AddASN1Int64 appends a DER-encoded ASN.1 INTEGER.
    **/
    @:keep
    public var addASN1Int64 : GoInt64 -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Builder;
}
@:keep class String__static_extension {
    /**
        // Empty reports whether the string does not contain any bytes.
    **/
    @:keep
    public static function empty( _s:String_):Bool {
        return (_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt));
    }
    /**
        // CopyBytes copies len(out) bytes into out and advances over them. It reports
        // whether the copy operation was successful
    **/
    @:keep
    public static function copyBytes( _s:String_, _out:Slice<GoByte>):Bool {
        var _n:GoInt = (_out != null ? _out.length : ((0 : GoInt)));
        var _v = _s._read(_n);
        if (_v == null) {
            return false;
        };
        return Go.copySlice(_out, _v) == _n;
    }
    /**
        // ReadBytes reads n bytes into out and advances over them. It reports
        // whether the read was successful.
    **/
    @:keep
    public static function readBytes( _s:String_, _out:Slice<GoByte>, _n:GoInt):Bool {
        var _v = _s._read(_n);
        if (_v == null) {
            return false;
        };
        _out = _v;
        return true;
    }
    /**
        // ReadUint24LengthPrefixed reads the content of a big-endian, 24-bit
        // length-prefixed value into out and advances over it. It reports whether
        // the read was successful.
    **/
    @:keep
    public static function readUint24LengthPrefixed( _s:String_, _out:String_):Bool {
        return _s._readLengthPrefixed(((3 : GoInt)), _out);
    }
    /**
        // ReadUint16LengthPrefixed reads the content of a big-endian, 16-bit
        // length-prefixed value into out and advances over it. It reports whether the
        // read was successful.
    **/
    @:keep
    public static function readUint16LengthPrefixed( _s:String_, _out:String_):Bool {
        return _s._readLengthPrefixed(((2 : GoInt)), _out);
    }
    /**
        // ReadUint8LengthPrefixed reads the content of an 8-bit length-prefixed value
        // into out and advances over it. It reports whether the read was successful.
    **/
    @:keep
    public static function readUint8LengthPrefixed( _s:String_, _out:String_):Bool {
        return _s._readLengthPrefixed(((1 : GoInt)), _out);
    }
    @:keep
    public static function _readLengthPrefixed( _s:String_, _lenLen:GoInt, _outChild:String_):Bool {
        var _lenBytes = _s._read(_lenLen);
        if (_lenBytes == null) {
            return false;
        };
        var _length:GoUInt32 = ((0 : GoUInt32));
        for (_0 => _b in _lenBytes) {
            _length = _length << ((8 : GoUnTypedInt));
            _length = _length | ((_b : GoUInt32));
        };
        var _v = _s._read(((_length : GoInt)));
        if (_v == null) {
            return false;
        };
        _outChild = _v;
        return true;
    }
    @:keep
    public static function _readUnsigned( _s:String_, _out:Pointer<GoUInt32>, _length:GoInt):Bool {
        var _v = _s._read(_length);
        if (_v == null) {
            return false;
        };
        var _result:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _length, _i++, {
                _result = _result << (((8 : GoUnTypedInt)));
                _result = _result | ((((_v != null ? _v[_i] : ((0 : GoUInt8))) : GoUInt32)));
            });
        };
        _out.value = _result;
        return true;
    }
    /**
        // ReadUint32 decodes a big-endian, 32-bit value into out and advances over it.
        // It reports whether the read was successful.
    **/
    @:keep
    public static function readUint32( _s:String_, _out:Pointer<GoUInt32>):Bool {
        var _v = _s._read(((4 : GoInt)));
        if (_v == null) {
            return false;
        };
        _out.value = ((((((_v != null ? _v[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt))) | ((((_v != null ? _v[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_v != null ? _v[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | (((_v != null ? _v[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32));
        return true;
    }
    /**
        // ReadUint24 decodes a big-endian, 24-bit value into out and advances over it.
        // It reports whether the read was successful.
    **/
    @:keep
    public static function readUint24( _s:String_, _out:Pointer<GoUInt32>):Bool {
        var _v = _s._read(((3 : GoInt)));
        if (_v == null) {
            return false;
        };
        _out.value = (((((_v != null ? _v[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt))) | ((((_v != null ? _v[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | (((_v != null ? _v[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32));
        return true;
    }
    /**
        // ReadUint16 decodes a big-endian, 16-bit value into out and advances over it.
        // It reports whether the read was successful.
    **/
    @:keep
    public static function readUint16( _s:String_, _out:Pointer<GoUInt16>):Bool {
        var _v = _s._read(((2 : GoInt)));
        if (_v == null) {
            return false;
        };
        _out.value = ((((_v != null ? _v[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) << ((8 : GoUnTypedInt))) | (((_v != null ? _v[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt16));
        return true;
    }
    /**
        // ReadUint8 decodes an 8-bit value into out and advances over it.
        // It reports whether the read was successful.
    **/
    @:keep
    public static function readUint8( _s:String_, _out:Pointer<GoUInt8>):Bool {
        var _v = _s._read(((1 : GoInt)));
        if (_v == null) {
            return false;
        };
        _out.value = (((_v != null ? _v[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt8));
        return true;
    }
    /**
        // Skip advances the String by n byte and reports whether it was successful.
    **/
    @:keep
    public static function skip( _s:String_, _n:GoInt):Bool {
        return _s._read(_n) != null;
    }
    /**
        // read advances a String by n bytes and returns them. If less than n bytes
        // remain, it returns nil.
    **/
    @:keep
    public static function _read( _s:String_, _n:GoInt):Slice<GoByte> {
        if (((_s != null ? _s.length : ((0 : GoInt))) < _n) || (_n < ((0 : GoInt)))) {
            return ((null : Slice<GoUInt8>));
        };
        var _v:String_ = (((_s).__slice__(0, _n) : String_));
        _s = (((_s).__slice__(_n) : String_));
        return _v;
    }
    @:keep
    public static function _readASN1( _s:String_, _out:String_, _outTag:Pointer<vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>, _skipHeader:Bool):Bool {
        if ((_s != null ? _s.length : ((0 : GoInt))) < ((2 : GoInt))) {
            return false;
        };
        var _tag:GoUInt8 = ((_s) != null ? (_s)[((0 : GoInt))] : ((0 : GoUInt8))), _lenByte:GoUInt8 = ((_s) != null ? (_s)[((1 : GoInt))] : ((0 : GoUInt8)));
        if ((_tag & ((31 : GoUInt8))) == ((31 : GoUInt8))) {
            return false;
        };
        if (_outTag != null) {
            _outTag.value = ((_tag : vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag));
        };
        var _length:GoUInt32 = ((0 : GoUInt32)), _headerLen:GoUInt32 = ((0 : GoUInt32));
        if ((_lenByte & ((128 : GoUInt8))) == ((0 : GoUInt8))) {
            _length = ((_lenByte : GoUInt32)) + ((2 : GoUInt32));
            _headerLen = ((2 : GoUInt32));
        } else {
            var _lenLen:GoUInt8 = _lenByte & ((127 : GoUInt8));
            var _len32:GoUInt32 = ((0 : GoUInt32));
            if (((_lenLen == ((0 : GoUInt8))) || (_lenLen > ((4 : GoUInt8)))) || ((_s != null ? _s.length : ((0 : GoInt))) < (((((2 : GoUInt8)) + _lenLen) : GoInt)))) {
                return false;
            };
            var _lenBytes:String_ = (((((_s).__slice__(((2 : GoInt)), ((2 : GoUInt8)) + _lenLen) : String_)) : String_));
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
            if ((_headerLen + _len32) < _len32) {
                return false;
            };
            _length = _headerLen + _len32;
        };
        if ((((_length : GoInt)) < ((0 : GoInt))) || !_s.readBytes(((_out : Slice<GoByte>)), ((_length : GoInt)))) {
            return false;
        };
        if (_skipHeader && !_out.skip(((_headerLen : GoInt)))) {
            throw Go.toInterface(((("cryptobyte: internal error" : GoString))));
        };
        return true;
    }
    /**
        // ReadOptionalASN1Boolean sets *out to the value of the next ASN.1 BOOLEAN or,
        // if the next bytes are not an ASN.1 BOOLEAN, to the value of defaultValue.
        // It reports whether the operation was successful.
    **/
    @:keep
    public static function readOptionalASN1Boolean( _s:String_, _out:Pointer<Bool>, _defaultValue:Bool):Bool {
        var _present:Bool = false;
        var _child:String_ = new String_();
        if (!_s.readOptionalASN1(_child, Go.pointer(_present), ((1 : GoUInt8)))) {
            return false;
        };
        if (!_present) {
            _out.value = _defaultValue;
            return true;
        };
        return _s.readASN1Boolean(_out);
    }
    /**
        // ReadOptionalASN1OctetString attempts to read an optional ASN.1 OCTET STRING
        // explicitly tagged with tag into out and advances. If no element with a
        // matching tag is present, it sets "out" to nil instead. It reports
        // whether the read was successful.
    **/
    @:keep
    public static function readOptionalASN1OctetString( _s:String_, _out:Slice<GoByte>, _outPresent:Pointer<Bool>, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _present:Bool = false;
        var _child:String_ = new String_();
        if (!_s.readOptionalASN1(_child, Go.pointer(_present), _tag)) {
            return false;
        };
        if (_outPresent != null) {
            _outPresent.value = _present;
        };
        if (_present) {
            var _oct:String_ = new String_();
            if (!_child.readASN1(_oct, ((4 : GoUInt8))) || !_child.empty()) {
                return false;
            };
            _out = _oct;
        } else {
            _out = ((null : Slice<GoUInt8>));
        };
        return true;
    }
    /**
        // ReadOptionalASN1Integer attempts to read an optional ASN.1 INTEGER
        // explicitly tagged with tag into out and advances. If no element with a
        // matching tag is present, it writes defaultValue into out instead. If out
        // does not point to an integer or to a big.Int, it panics. It reports
        // whether the read was successful.
    **/
    @:keep
    public static function readOptionalASN1Integer( _s:String_, _out:AnyInterface, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, _defaultValue:AnyInterface):Bool {
        if (stdgo.reflect.Reflect.typeOf(Go.toInterface(_out)).kind() != ((22 : GoUInt))) {
            throw Go.toInterface(((("out is not a pointer" : GoString))));
        };
        var _present:Bool = false;
        var _i:String_ = new String_();
        if (!_s.readOptionalASN1(_i, Go.pointer(_present), _tag)) {
            return false;
        };
        if (!_present) {
            if (stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((2 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((3 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((4 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((5 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((6 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((7 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((8 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((9 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((10 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((11 : GoUInt))) {
                stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().set((stdgo.reflect.Reflect.valueOf(Go.toInterface(_defaultValue)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_defaultValue)).__copy__()));
            } else if (stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((25 : GoUInt))) {
                if (stdgo.reflect.Reflect.typeOf(Go.toInterface(_out)).elem() != _bigIntType) {
                    throw Go.toInterface(((("invalid integer type" : GoString))));
                };
                if ((stdgo.reflect.Reflect.typeOf(Go.toInterface(_defaultValue)).kind() != ((22 : GoUInt))) || (stdgo.reflect.Reflect.typeOf(Go.toInterface(_defaultValue)).elem() != _bigIntType)) {
                    throw Go.toInterface(((("out points to big.Int, but defaultValue does not" : GoString))));
                };
                ((_out.value : stdgo.math.big.Big.Int_)).set(((_defaultValue.value : stdgo.math.big.Big.Int_)));
            } else {
                throw Go.toInterface(((("invalid integer type" : GoString))));
            };
            return true;
        };
        if (!_i.readASN1Integer(Go.toInterface(_out)) || !_i.empty()) {
            return false;
        };
        return true;
    }
    /**
        // SkipOptionalASN1 advances s over an ASN.1 element with the given tag, or
        // else leaves s unchanged. It reports whether the operation was successful.
    **/
    @:keep
    public static function skipOptionalASN1( _s:String_, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        if (!_s.peekASN1Tag(_tag)) {
            return true;
        };
        var _unused:String_ = new String_();
        return _s.readASN1(_unused, _tag);
    }
    /**
        // ReadOptionalASN1 attempts to read the contents of a DER-encoded ASN.1
        // element (not including tag and length bytes) tagged with the given tag into
        // out. It stores whether an element with the tag was found in outPresent,
        // unless outPresent is nil. It reports whether the read was successful.
    **/
    @:keep
    public static function readOptionalASN1( _s:String_, _out:String_, _outPresent:Pointer<Bool>, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _present:Bool = _s.peekASN1Tag(_tag);
        if (_outPresent != null) {
            _outPresent.value = _present;
        };
        if (_present && !_s.readASN1(_out, _tag)) {
            return false;
        };
        return true;
    }
    /**
        // SkipASN1 reads and discards an ASN.1 element with the given tag. It
        // reports whether the operation was successful.
    **/
    @:keep
    public static function skipASN1( _s:String_, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _unused:String_ = new String_();
        return _s.readASN1(_unused, _tag);
    }
    /**
        // PeekASN1Tag reports whether the next ASN.1 value on the string starts with
        // the given tag.
    **/
    @:keep
    public static function peekASN1Tag( _s:String_, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return false;
        };
        return (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) : vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag)) == _tag;
    }
    /**
        // ReadAnyASN1Element reads the contents of a DER-encoded ASN.1 element
        // (including tag and length bytes) into out, sets outTag to is tag, and
        // advances. It reports whether the read was successful.
        //
        // Tags greater than 30 are not supported (i.e. low-tag-number format only).
    **/
    @:keep
    public static function readAnyASN1Element( _s:String_, _out:String_, _outTag:Pointer<vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>):Bool {
        return _s._readASN1(_out, _outTag, false);
    }
    /**
        // ReadAnyASN1 reads the contents of a DER-encoded ASN.1 element (not including
        // tag and length bytes) into out, sets outTag to its tag, and advances.
        // It reports whether the read was successful.
        //
        // Tags greater than 30 are not supported (i.e. low-tag-number format only).
    **/
    @:keep
    public static function readAnyASN1( _s:String_, _out:String_, _outTag:Pointer<vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>):Bool {
        return _s._readASN1(_out, _outTag, true);
    }
    /**
        // ReadASN1Element reads the contents of a DER-encoded ASN.1 element (including
        // tag and length bytes) into out, and advances. The element must match the
        // given tag. It reports whether the read was successful.
        //
        // Tags greater than 30 are not supported (i.e. low-tag-number format only).
    **/
    @:keep
    public static function readASN1Element( _s:String_, _out:String_, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _t:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag();
        if (!_s.readAnyASN1Element(_out, Go.pointer(_t)) || (_t != _tag)) {
            return false;
        };
        return true;
    }
    /**
        // ReadASN1 reads the contents of a DER-encoded ASN.1 element (not including
        // tag and length bytes) into out, and advances. The element must match the
        // given tag. It reports whether the read was successful.
        //
        // Tags greater than 30 are not supported (i.e. low-tag-number format only).
    **/
    @:keep
    public static function readASN1( _s:String_, _out:String_, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _t:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag = new vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag();
        if (!_s.readAnyASN1(_out, Go.pointer(_t)) || (_t != _tag)) {
            return false;
        };
        return true;
    }
    /**
        // ReadASN1Bytes reads the contents of a DER-encoded ASN.1 element (not including
        // tag and length bytes) into out, and advances. The element must match the
        // given tag. It reports whether the read was successful.
    **/
    @:keep
    public static function readASN1Bytes( _s:String_, _out:Slice<GoByte>, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        return _s.readASN1(((_out : String_)), _tag);
    }
    /**
        // ReadASN1BitString decodes an ASN.1 BIT STRING into out and advances. It is
        // an error if the BIT STRING is not a whole number of bytes. It reports
        // whether the read was successful.
    **/
    @:keep
    public static function readASN1BitStringAsBytes( _s:String_, _out:Slice<GoByte>):Bool {
        var _bytes:String_ = new String_();
        if (!_s.readASN1(_bytes, ((3 : GoUInt8))) || ((_bytes != null ? _bytes.length : ((0 : GoInt))) == ((0 : GoInt)))) {
            return false;
        };
        var _paddingBits:GoUInt8 = (((_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt8));
        if (_paddingBits != ((0 : GoUInt8))) {
            return false;
        };
        _out = ((_bytes.__slice__(((1 : GoInt))) : String_));
        return true;
    }
    /**
        // ReadASN1BitString decodes an ASN.1 BIT STRING into out and advances.
        // It reports whether the read was successful.
    **/
    @:keep
    public static function readASN1BitString( _s:String_, _out:stdgo.encoding.asn1.Asn1.BitString):Bool {
        var _bytes:String_ = new String_();
        if ((!_s.readASN1(_bytes, ((3 : GoUInt8))) || ((_bytes != null ? _bytes.length : ((0 : GoInt))) == ((0 : GoInt)))) || ((((_bytes != null ? _bytes.length : ((0 : GoInt))) * ((8 : GoInt))) / ((8 : GoInt))) != (_bytes != null ? _bytes.length : ((0 : GoInt))))) {
            return false;
        };
        var _paddingBits:GoUInt8 = (((_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt8));
        _bytes = ((_bytes.__slice__(((1 : GoInt))) : String_));
        if (((_paddingBits > ((7 : GoUInt8))) || (((_bytes != null ? _bytes.length : ((0 : GoInt))) == ((0 : GoInt))) && (_paddingBits != ((0 : GoUInt8))))) || (((_bytes != null ? _bytes.length : ((0 : GoInt))) > ((0 : GoInt))) && (((_bytes != null ? _bytes[(_bytes != null ? _bytes.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) & ((((1 : GoUInt8)) << _paddingBits) - ((1 : GoUInt8)))) != ((0 : GoUInt8))))) {
            return false;
        };
        _out.bitLength = ((_bytes != null ? _bytes.length : ((0 : GoInt))) * ((8 : GoInt))) - ((_paddingBits : GoInt));
        _out.bytes = _bytes;
        return true;
    }
    /**
        // ReadASN1UTCTime decodes an ASN.1 UTCTime into out and advances.
        // It reports whether the read was successful.
    **/
    @:keep
    public static function readASN1UTCTime( _s:String_, _out:stdgo.time.Time.Time):Bool {
        var _bytes:String_ = new String_();
        if (!_s.readASN1(_bytes, ((23 : GoUInt8)))) {
            return false;
        };
        var _t:GoString = ((_bytes : GoString));
        var _formatStr:GoString = ((("060102150405Z0700" : GoString)));
        var _err:Error = ((null : stdgo.Error));
        var __tmp__ = stdgo.time.Time.parse(_formatStr, _t), _res:stdgo.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _formatStr = ((("0601021504Z0700" : GoString)));
            {
                var __tmp__ = stdgo.time.Time.parse(_formatStr, _t);
                _res = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
                _err = {
                    final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                    __self__;
                };
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
            _res = (_res.addDate(((-100 : GoInt)), ((0 : GoInt)), ((0 : GoInt))) == null ? null : _res.addDate(((-100 : GoInt)), ((0 : GoInt)), ((0 : GoInt))).__copy__());
        };
        {
            var __tmp__ = (_res == null ? null : _res.__copy__());
            _out._wall = __tmp__._wall;
            _out._ext = __tmp__._ext;
            _out._loc = __tmp__._loc;
        };
        return true;
    }
    /**
        // ReadASN1GeneralizedTime decodes an ASN.1 GENERALIZEDTIME into out and
        // advances. It reports whether the read was successful.
    **/
    @:keep
    public static function readASN1GeneralizedTime( _s:String_, _out:stdgo.time.Time.Time):Bool {
        var _bytes:String_ = new String_();
        if (!_s.readASN1(_bytes, ((24 : GoUInt8)))) {
            return false;
        };
        var _t:GoString = ((_bytes : GoString));
        var __tmp__ = stdgo.time.Time.parse(((("20060102150405Z0700" : GoString))), _t), _res:stdgo.time.Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        {
            var _serialized:GoString = _res.format(((("20060102150405Z0700" : GoString))));
            if (_serialized != _t) {
                return false;
            };
        };
        {
            var __tmp__ = (_res == null ? null : _res.__copy__());
            _out._wall = __tmp__._wall;
            _out._ext = __tmp__._ext;
            _out._loc = __tmp__._loc;
        };
        return true;
    }
    /**
        // ReadASN1ObjectIdentifier decodes an ASN.1 OBJECT IDENTIFIER into out and
        // advances. It reports whether the read was successful.
    **/
    @:keep
    public static function readASN1ObjectIdentifier( _s:String_, _out:stdgo.encoding.asn1.Asn1.ObjectIdentifier):Bool {
        var _bytes:String_ = new String_();
        if (!_s.readASN1(_bytes, ((6 : GoUInt8))) || ((_bytes != null ? _bytes.length : ((0 : GoInt))) == ((0 : GoInt)))) {
            return false;
        };
        var _components = new Slice<GoInt>(...[for (i in 0 ... (((_bytes != null ? _bytes.length : ((0 : GoInt))) + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]);
        var _v:GoInt = ((0 : GoInt));
        if (!_bytes._readBase128Int(Go.pointer(_v))) {
            return false;
        };
        if (_v < ((80 : GoInt))) {
            if (_components != null) _components[((0 : GoInt))] = _v / ((40 : GoInt));
            if (_components != null) _components[((1 : GoInt))] = _v % ((40 : GoInt));
        } else {
            if (_components != null) _components[((0 : GoInt))] = ((2 : GoInt));
            if (_components != null) _components[((1 : GoInt))] = _v - ((80 : GoInt));
        };
        var _i:GoInt = ((2 : GoInt));
        Go.cfor((_bytes != null ? _bytes.length : ((0 : GoInt))) > ((0 : GoInt)), _i++, {
            if (!_bytes._readBase128Int(Go.pointer(_v))) {
                return false;
            };
            if (_components != null) _components[_i] = _v;
        });
        _out = ((_components.__slice__(0, _i) : Slice<GoInt>));
        return true;
    }
    @:keep
    public static function _readBase128Int( _s:String_, _out:Pointer<GoInt>):Bool {
        var _ret:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt)), _i++, {
                if (_i == ((5 : GoInt))) {
                    return false;
                };
                if (_ret >= ((16777216 : GoInt))) {
                    return false;
                };
                _ret = _ret << (((7 : GoUnTypedInt)));
                var _b:GoUInt8 = (_s._read(((1 : GoInt))) != null ? _s._read(((1 : GoInt)))[((0 : GoInt))] : ((0 : GoUInt8)));
                _ret = _ret | ((((_b & ((127 : GoUInt8))) : GoInt)));
                if ((_b & ((128 : GoUInt8))) == ((0 : GoUInt8))) {
                    _out.value = _ret;
                    return true;
                };
            });
        };
        return false;
    }
    /**
        // ReadASN1Enum decodes an ASN.1 ENUMERATION into out and advances. It reports
        // whether the read was successful.
    **/
    @:keep
    public static function readASN1Enum( _s:String_, _out:Pointer<GoInt>):Bool {
        var _bytes:String_ = new String_();
        var _i:GoInt64 = ((0 : GoInt64));
        if ((!_s.readASN1(_bytes, ((10 : GoUInt8))) || !_checkASN1Integer(_bytes)) || !_asn1Signed(Go.pointer(_i), _bytes)) {
            return false;
        };
        if (((((_i : GoInt)) : GoInt64)) != _i) {
            return false;
        };
        _out.value = ((_i : GoInt));
        return true;
    }
    /**
        // ReadASN1Int64WithTag decodes an ASN.1 INTEGER with the given tag into out
        // and advances. It reports whether the read was successful and resulted in a
        // value that can be represented in an int64.
    **/
    @:keep
    public static function readASN1Int64WithTag( _s:String_, _out:Pointer<GoInt64>, _tag:vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag):Bool {
        var _bytes:String_ = new String_();
        return (_s.readASN1(_bytes, _tag) && _checkASN1Integer(_bytes)) && _asn1Signed(_out, _bytes);
    }
    @:keep
    public static function _readASN1Uint64( _s:String_, _out:Pointer<GoUInt64>):Bool {
        var _bytes:String_ = new String_();
        if ((!_s.readASN1(_bytes, ((2 : GoUInt8))) || !_checkASN1Integer(_bytes)) || !_asn1Unsigned(_out, _bytes)) {
            return false;
        };
        return true;
    }
    @:keep
    public static function _readASN1Int64( _s:String_, _out:Pointer<GoInt64>):Bool {
        var _bytes:String_ = new String_();
        if ((!_s.readASN1(_bytes, ((2 : GoUInt8))) || !_checkASN1Integer(_bytes)) || !_asn1Signed(_out, _bytes)) {
            return false;
        };
        return true;
    }
    @:keep
    public static function _readASN1BigInt( _s:String_, _out:stdgo.math.big.Big.Int_):Bool {
        var _bytes:String_ = new String_();
        if (!_s.readASN1(_bytes, ((2 : GoUInt8))) || !_checkASN1Integer(_bytes)) {
            return false;
        };
        if (((_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) & ((128 : GoUInt8))) == ((128 : GoUInt8))) {
            var _neg = new Slice<GoUInt8>(...[for (i in 0 ... (((_bytes != null ? _bytes.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            for (_i => _b in _bytes) {
                if (_neg != null) _neg[_i] = (-1 ^ _b);
            };
            _out.setBytes(_neg);
            _out.add(_out, _bigOne);
            _out.neg(_out);
        } else {
            _out.setBytes(_bytes);
        };
        return true;
    }
    /**
        // ReadASN1Integer decodes an ASN.1 INTEGER into out and advances. If out does
        // not point to an integer or to a big.Int, it panics. It reports whether the
        // read was successful.
    **/
    @:keep
    public static function readASN1Integer( _s:String_, _out:AnyInterface):Bool {
        if (stdgo.reflect.Reflect.typeOf(Go.toInterface(_out)).kind() != ((22 : GoUInt))) {
            throw Go.toInterface(((("out is not a pointer" : GoString))));
        };
        if (stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((2 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((3 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((4 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((5 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((6 : GoUInt))) {
            var _i:GoInt64 = ((0 : GoInt64));
            if (!_s._readASN1Int64(Go.pointer(_i)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().overflowInt(_i)) {
                return false;
            };
            stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().setInt(_i);
            return true;
        } else if (stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((7 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((8 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((9 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((10 : GoUInt)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((11 : GoUInt))) {
            var _u:GoUInt64 = ((0 : GoUInt64));
            if (!_s._readASN1Uint64(Go.pointer(_u)) || stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().overflowUint(_u)) {
                return false;
            };
            stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().setUint(_u);
            return true;
        } else if (stdgo.reflect.Reflect.valueOf(Go.toInterface(_out)).elem().kind() == ((25 : GoUInt))) {
            if (stdgo.reflect.Reflect.typeOf(Go.toInterface(_out)).elem() == _bigIntType) {
                return _s._readASN1BigInt(((_out.value : stdgo.math.big.Big.Int_)));
            };
        };
        throw Go.toInterface(((("out does not point to an integer type" : GoString))));
    }
    /**
        // ReadASN1Boolean decodes an ASN.1 BOOLEAN and converts it to a boolean
        // representation into out and advances. It reports whether the read
        // was successful.
    **/
    @:keep
    public static function readASN1Boolean( _s:String_, _out:Pointer<Bool>):Bool {
        var _bytes:String_ = new String_();
        if (!_s.readASN1(_bytes, ((1 : GoUInt8))) || ((_bytes != null ? _bytes.length : ((0 : GoInt))) != ((1 : GoInt)))) {
            return false;
        };
        if ((_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
            _out.value = false;
        } else if ((_bytes != null ? _bytes[((0 : GoInt))] : ((0 : GoUInt8))) == ((255 : GoUInt8))) {
            _out.value = true;
        } else {
            return false;
        };
        return true;
    }
}
class String__wrapper {
    /**
        // Empty reports whether the string does not contain any bytes.
    **/
    @:keep
    public var empty : () -> Bool = null;
    /**
        // CopyBytes copies len(out) bytes into out and advances over them. It reports
        // whether the copy operation was successful
    **/
    @:keep
    public var copyBytes : Slice<GoByte> -> Bool = null;
    /**
        // ReadBytes reads n bytes into out and advances over them. It reports
        // whether the read was successful.
    **/
    @:keep
    public var readBytes : (Slice<GoByte>, GoInt) -> Bool = null;
    /**
        // ReadUint24LengthPrefixed reads the content of a big-endian, 24-bit
        // length-prefixed value into out and advances over it. It reports whether
        // the read was successful.
    **/
    @:keep
    public var readUint24LengthPrefixed : String_ -> Bool = null;
    /**
        // ReadUint16LengthPrefixed reads the content of a big-endian, 16-bit
        // length-prefixed value into out and advances over it. It reports whether the
        // read was successful.
    **/
    @:keep
    public var readUint16LengthPrefixed : String_ -> Bool = null;
    /**
        // ReadUint8LengthPrefixed reads the content of an 8-bit length-prefixed value
        // into out and advances over it. It reports whether the read was successful.
    **/
    @:keep
    public var readUint8LengthPrefixed : String_ -> Bool = null;
    @:keep
    public var _readLengthPrefixed : (GoInt, String_) -> Bool = null;
    @:keep
    public var _readUnsigned : (Pointer<GoUInt32>, GoInt) -> Bool = null;
    /**
        // ReadUint32 decodes a big-endian, 32-bit value into out and advances over it.
        // It reports whether the read was successful.
    **/
    @:keep
    public var readUint32 : Pointer<GoUInt32> -> Bool = null;
    /**
        // ReadUint24 decodes a big-endian, 24-bit value into out and advances over it.
        // It reports whether the read was successful.
    **/
    @:keep
    public var readUint24 : Pointer<GoUInt32> -> Bool = null;
    /**
        // ReadUint16 decodes a big-endian, 16-bit value into out and advances over it.
        // It reports whether the read was successful.
    **/
    @:keep
    public var readUint16 : Pointer<GoUInt16> -> Bool = null;
    /**
        // ReadUint8 decodes an 8-bit value into out and advances over it.
        // It reports whether the read was successful.
    **/
    @:keep
    public var readUint8 : Pointer<GoUInt8> -> Bool = null;
    /**
        // Skip advances the String by n byte and reports whether it was successful.
    **/
    @:keep
    public var skip : GoInt -> Bool = null;
    /**
        // read advances a String by n bytes and returns them. If less than n bytes
        // remain, it returns nil.
    **/
    @:keep
    public var _read : GoInt -> Slice<GoByte> = null;
    @:keep
    public var _readASN1 : (String_, Pointer<vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>, Bool) -> Bool = null;
    /**
        // ReadOptionalASN1Boolean sets *out to the value of the next ASN.1 BOOLEAN or,
        // if the next bytes are not an ASN.1 BOOLEAN, to the value of defaultValue.
        // It reports whether the operation was successful.
    **/
    @:keep
    public var readOptionalASN1Boolean : (Pointer<Bool>, Bool) -> Bool = null;
    /**
        // ReadOptionalASN1OctetString attempts to read an optional ASN.1 OCTET STRING
        // explicitly tagged with tag into out and advances. If no element with a
        // matching tag is present, it sets "out" to nil instead. It reports
        // whether the read was successful.
    **/
    @:keep
    public var readOptionalASN1OctetString : (Slice<GoByte>, Pointer<Bool>, vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag) -> Bool = null;
    /**
        // ReadOptionalASN1Integer attempts to read an optional ASN.1 INTEGER
        // explicitly tagged with tag into out and advances. If no element with a
        // matching tag is present, it writes defaultValue into out instead. If out
        // does not point to an integer or to a big.Int, it panics. It reports
        // whether the read was successful.
    **/
    @:keep
    public var readOptionalASN1Integer : (AnyInterface, vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag, AnyInterface) -> Bool = null;
    /**
        // SkipOptionalASN1 advances s over an ASN.1 element with the given tag, or
        // else leaves s unchanged. It reports whether the operation was successful.
    **/
    @:keep
    public var skipOptionalASN1 : vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag -> Bool = null;
    /**
        // ReadOptionalASN1 attempts to read the contents of a DER-encoded ASN.1
        // element (not including tag and length bytes) tagged with the given tag into
        // out. It stores whether an element with the tag was found in outPresent,
        // unless outPresent is nil. It reports whether the read was successful.
    **/
    @:keep
    public var readOptionalASN1 : (String_, Pointer<Bool>, vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag) -> Bool = null;
    /**
        // SkipASN1 reads and discards an ASN.1 element with the given tag. It
        // reports whether the operation was successful.
    **/
    @:keep
    public var skipASN1 : vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag -> Bool = null;
    /**
        // PeekASN1Tag reports whether the next ASN.1 value on the string starts with
        // the given tag.
    **/
    @:keep
    public var peekASN1Tag : vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag -> Bool = null;
    /**
        // ReadAnyASN1Element reads the contents of a DER-encoded ASN.1 element
        // (including tag and length bytes) into out, sets outTag to is tag, and
        // advances. It reports whether the read was successful.
        //
        // Tags greater than 30 are not supported (i.e. low-tag-number format only).
    **/
    @:keep
    public var readAnyASN1Element : (String_, Pointer<vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>) -> Bool = null;
    /**
        // ReadAnyASN1 reads the contents of a DER-encoded ASN.1 element (not including
        // tag and length bytes) into out, sets outTag to its tag, and advances.
        // It reports whether the read was successful.
        //
        // Tags greater than 30 are not supported (i.e. low-tag-number format only).
    **/
    @:keep
    public var readAnyASN1 : (String_, Pointer<vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag>) -> Bool = null;
    /**
        // ReadASN1Element reads the contents of a DER-encoded ASN.1 element (including
        // tag and length bytes) into out, and advances. The element must match the
        // given tag. It reports whether the read was successful.
        //
        // Tags greater than 30 are not supported (i.e. low-tag-number format only).
    **/
    @:keep
    public var readASN1Element : (String_, vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag) -> Bool = null;
    /**
        // ReadASN1 reads the contents of a DER-encoded ASN.1 element (not including
        // tag and length bytes) into out, and advances. The element must match the
        // given tag. It reports whether the read was successful.
        //
        // Tags greater than 30 are not supported (i.e. low-tag-number format only).
    **/
    @:keep
    public var readASN1 : (String_, vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag) -> Bool = null;
    /**
        // ReadASN1Bytes reads the contents of a DER-encoded ASN.1 element (not including
        // tag and length bytes) into out, and advances. The element must match the
        // given tag. It reports whether the read was successful.
    **/
    @:keep
    public var readASN1Bytes : (Slice<GoByte>, vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag) -> Bool = null;
    /**
        // ReadASN1BitString decodes an ASN.1 BIT STRING into out and advances. It is
        // an error if the BIT STRING is not a whole number of bytes. It reports
        // whether the read was successful.
    **/
    @:keep
    public var readASN1BitStringAsBytes : Slice<GoByte> -> Bool = null;
    /**
        // ReadASN1BitString decodes an ASN.1 BIT STRING into out and advances.
        // It reports whether the read was successful.
    **/
    @:keep
    public var readASN1BitString : stdgo.encoding.asn1.Asn1.BitString -> Bool = null;
    /**
        // ReadASN1UTCTime decodes an ASN.1 UTCTime into out and advances.
        // It reports whether the read was successful.
    **/
    @:keep
    public var readASN1UTCTime : stdgo.time.Time.Time -> Bool = null;
    /**
        // ReadASN1GeneralizedTime decodes an ASN.1 GENERALIZEDTIME into out and
        // advances. It reports whether the read was successful.
    **/
    @:keep
    public var readASN1GeneralizedTime : stdgo.time.Time.Time -> Bool = null;
    /**
        // ReadASN1ObjectIdentifier decodes an ASN.1 OBJECT IDENTIFIER into out and
        // advances. It reports whether the read was successful.
    **/
    @:keep
    public var readASN1ObjectIdentifier : stdgo.encoding.asn1.Asn1.ObjectIdentifier -> Bool = null;
    @:keep
    public var _readBase128Int : Pointer<GoInt> -> Bool = null;
    /**
        // ReadASN1Enum decodes an ASN.1 ENUMERATION into out and advances. It reports
        // whether the read was successful.
    **/
    @:keep
    public var readASN1Enum : Pointer<GoInt> -> Bool = null;
    /**
        // ReadASN1Int64WithTag decodes an ASN.1 INTEGER with the given tag into out
        // and advances. It reports whether the read was successful and resulted in a
        // value that can be represented in an int64.
    **/
    @:keep
    public var readASN1Int64WithTag : (Pointer<GoInt64>, vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag) -> Bool = null;
    @:keep
    public var _readASN1Uint64 : Pointer<GoUInt64> -> Bool = null;
    @:keep
    public var _readASN1Int64 : Pointer<GoInt64> -> Bool = null;
    @:keep
    public var _readASN1BigInt : stdgo.math.big.Big.Int_ -> Bool = null;
    /**
        // ReadASN1Integer decodes an ASN.1 INTEGER into out and advances. If out does
        // not point to an integer or to a big.Int, it panics. It reports whether the
        // read was successful.
    **/
    @:keep
    public var readASN1Integer : AnyInterface -> Bool = null;
    /**
        // ReadASN1Boolean decodes an ASN.1 BOOLEAN and converts it to a boolean
        // representation into out and advances. It reports whether the read
        // was successful.
    **/
    @:keep
    public var readASN1Boolean : Pointer<Bool> -> Bool = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : String_;
}
