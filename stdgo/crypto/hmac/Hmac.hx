package stdgo.crypto.hmac;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef T_marshalable = StructType & {
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; };
    public function unmarshalBinary(_0:Slice<GoByte>):Error;
};
@:structInit @:using(stdgo.crypto.hmac.Hmac.T_hmac_static_extension) class T_hmac {
    public var _opad : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _ipad : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _outer : stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
    public var _inner : stdgo.hash.Hash.Hash = ((null : stdgo.hash.Hash.Hash));
    public var _marshaled : Bool = false;
    public function new(?_opad:Slice<GoUInt8>, ?_ipad:Slice<GoUInt8>, ?_outer:stdgo.hash.Hash.Hash, ?_inner:stdgo.hash.Hash.Hash, ?_marshaled:Bool) {
        if (_opad != null) this._opad = _opad;
        if (_ipad != null) this._ipad = _ipad;
        if (_outer != null) this._outer = _outer;
        if (_inner != null) this._inner = _inner;
        if (_marshaled != null) this._marshaled = _marshaled;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_hmac(_opad, _ipad, _outer, _inner, _marshaled);
    }
}
/**
    // New returns a new HMAC hash using the given hash.Hash type and key.
    // New functions like sha256.New from crypto/sha256 can be used as h.
    // h must return a new Hash every time it is called.
    // Note that unlike other hash implementations in the standard library,
    // the returned Hash does not implement encoding.BinaryMarshaler
    // or encoding.BinaryUnmarshaler.
**/
function new_(_h:() -> stdgo.hash.Hash.Hash, _key:Slice<GoByte>):stdgo.hash.Hash.Hash {
        var _hm = new T_hmac();
        _hm._outer = _h();
        _hm._inner = _h();
        var _unique:Bool = true;
        {
            var a = function():Void {
                __deferstack__.unshift(() -> {
                    var a = function():Void {
                        ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        });
                    };
                    a();
                });
                if (_hm._outer == _hm._inner) {
                    _unique = false;
                };
            };
            a();
        };
        if (!_unique) {
            throw Go.toInterface(((("crypto/hmac: hash generation function does not produce unique values" : GoString))));
        };
        var _blocksize:GoInt = _hm._inner.blockSize();
        _hm._ipad = new Slice<GoUInt8>(...[for (i in 0 ... ((_blocksize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _hm._opad = new Slice<GoUInt8>(...[for (i in 0 ... ((_blocksize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        if ((_key != null ? _key.length : ((0 : GoInt))) > _blocksize) {
            _hm._outer.write(_key);
            _key = _hm._outer.sum(((null : Slice<GoUInt8>)));
        };
        Go.copySlice(_hm._ipad, _key);
        Go.copySlice(_hm._opad, _key);
        for (_i => _ in _hm._ipad) {
            if (_hm._ipad != null) (_hm._ipad != null ? _hm._ipad[_i] : ((0 : GoUInt8))) ^ (((54 : GoUInt8)));
        };
        for (_i => _ in _hm._opad) {
            if (_hm._opad != null) (_hm._opad != null ? _hm._opad[_i] : ((0 : GoUInt8))) ^ (((92 : GoUInt8)));
        };
        _hm._inner.write(_hm._ipad);
        return _hm;
    }
/**
    // Equal compares two MACs for equality without leaking timing information.
**/
function equal(_mac1:Slice<GoByte>, _mac2:Slice<GoByte>):Bool {
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(_mac1, _mac2) == ((1 : GoInt));
    }
@:keep class T_hmac_static_extension {
    @:keep
    public static function reset( _h:T_hmac):Void {
        if (_h._marshaled) {
            {
                var _err:stdgo.Error = ((((_h._inner.__underlying__().value : Dynamic)) : T_marshalable)).unmarshalBinary(_h._ipad);
                if (_err != null) {
                    throw Go.toInterface(_err);
                };
            };
            return;
        };
        _h._inner.reset();
        _h._inner.write(_h._ipad);
        var __tmp__ = try {
            { value : ((((_h._inner.__underlying__().value : Dynamic)) : T_marshalable)), ok : true };
        } catch(_) {
            { value : ((null : T_marshalable)), ok : false };
        }, _marshalableInner = __tmp__.value, _innerOK = __tmp__.ok;
        if (!_innerOK) {
            return;
        };
        var __tmp__ = try {
            { value : ((((_h._outer.__underlying__().value : Dynamic)) : T_marshalable)), ok : true };
        } catch(_) {
            { value : ((null : T_marshalable)), ok : false };
        }, _marshalableOuter = __tmp__.value, _outerOK = __tmp__.ok;
        if (!_outerOK) {
            return;
        };
        var __tmp__ = _marshalableInner.marshalBinary(), _imarshal:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return;
        };
        _h._outer.reset();
        _h._outer.write(_h._opad);
        var __tmp__ = _marshalableOuter.marshalBinary(), _omarshal:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return;
        };
        _h._ipad = _imarshal;
        _h._opad = _omarshal;
        _h._marshaled = true;
    }
    @:keep
    public static function blockSize( _h:T_hmac):GoInt {
        return _h._inner.blockSize();
    }
    @:keep
    public static function size( _h:T_hmac):GoInt {
        return _h._outer.size();
    }
    @:keep
    public static function write( _h:T_hmac, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        return _h._inner.write(_p);
    }
    @:keep
    public static function sum( _h:T_hmac, _in:Slice<GoByte>):Slice<GoByte> {
        var _origLen:GoInt = (_in != null ? _in.length : ((0 : GoInt)));
        _in = _h._inner.sum(_in);
        if (_h._marshaled) {
            {
                var _err:stdgo.Error = ((((_h._outer.__underlying__().value : Dynamic)) : T_marshalable)).unmarshalBinary(_h._opad);
                if (_err != null) {
                    throw Go.toInterface(_err);
                };
            };
        } else {
            _h._outer.reset();
            _h._outer.write(_h._opad);
        };
        _h._outer.write(((_in.__slice__(_origLen) : Slice<GoUInt8>)));
        return _h._outer.sum(((_in.__slice__(0, _origLen) : Slice<GoUInt8>)));
    }
}
class T_hmac_wrapper {
    @:keep
    public var reset : () -> Void = null;
    @:keep
    public var blockSize : () -> GoInt = null;
    @:keep
    public var size : () -> GoInt = null;
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var sum : Slice<GoByte> -> Slice<GoByte> = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_hmac;
}
