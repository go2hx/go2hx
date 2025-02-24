package stdgo;
@:dox(hide) class T_marshalable_static_extension {
    static public function unmarshalBinary(t:stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.hmac.Hmac_t_marshalable_static_extension.T_marshalable_static_extension.unmarshalBinary(t, _0);
    }
    static public function marshalBinary(t:stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.hmac.Hmac_t_marshalable_static_extension.T_marshalable_static_extension.marshalBinary(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) @:forward abstract T_marshalable(stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable) from stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable to stdgo._internal.crypto.hmac.Hmac_t_marshalable.T_marshalable {
    @:from
    static function fromHaxeInterface(x:{ function marshalBinary():stdgo.Tuple<Array<std.UInt>, stdgo.Error>; function unmarshalBinary(_0:Array<std.UInt>):stdgo.Error; }):T_marshalable {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_marshalable = { marshalBinary : () -> x.marshalBinary(), unmarshalBinary : _0 -> x.unmarshalBinary([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.crypto.hmac.Hmac.T_hmac_static_extension) @:dox(hide) abstract T_hmac(stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac) from stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac to stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac {
    public var _opad(get, set) : Array<std.UInt>;
    function get__opad():Array<std.UInt> return [for (i in this._opad) i];
    function set__opad(v:Array<std.UInt>):Array<std.UInt> {
        this._opad = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _ipad(get, set) : Array<std.UInt>;
    function get__ipad():Array<std.UInt> return [for (i in this._ipad) i];
    function set__ipad(v:Array<std.UInt>):Array<std.UInt> {
        this._ipad = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outer(get, set) : stdgo._internal.hash.Hash_hash.Hash;
    function get__outer():stdgo._internal.hash.Hash_hash.Hash return this._outer;
    function set__outer(v:stdgo._internal.hash.Hash_hash.Hash):stdgo._internal.hash.Hash_hash.Hash {
        this._outer = v;
        return v;
    }
    public var _inner(get, set) : stdgo._internal.hash.Hash_hash.Hash;
    function get__inner():stdgo._internal.hash.Hash_hash.Hash return this._inner;
    function set__inner(v:stdgo._internal.hash.Hash_hash.Hash):stdgo._internal.hash.Hash_hash.Hash {
        this._inner = v;
        return v;
    }
    public var _marshaled(get, set) : Bool;
    function get__marshaled():Bool return this._marshaled;
    function set__marshaled(v:Bool):Bool {
        this._marshaled = v;
        return v;
    }
    public function new(?_opad:Array<std.UInt>, ?_ipad:Array<std.UInt>, ?_outer:stdgo._internal.hash.Hash_hash.Hash, ?_inner:stdgo._internal.hash.Hash_hash.Hash, ?_marshaled:Bool) this = new stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac(([for (i in _opad) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _ipad) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _outer, _inner, _marshaled);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_hmacPointer = stdgo._internal.crypto.hmac.Hmac_t_hmacpointer.T_hmacPointer;
@:dox(hide) class T_hmac_static_extension {
    static public function reset(_h:T_hmac):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>);
        stdgo._internal.crypto.hmac.Hmac_t_hmac_static_extension.T_hmac_static_extension.reset(_h);
    }
    static public function blockSize(_h:T_hmac):StdTypes.Int {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>);
        return stdgo._internal.crypto.hmac.Hmac_t_hmac_static_extension.T_hmac_static_extension.blockSize(_h);
    }
    static public function size(_h:T_hmac):StdTypes.Int {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>);
        return stdgo._internal.crypto.hmac.Hmac_t_hmac_static_extension.T_hmac_static_extension.size(_h);
    }
    static public function write(_h:T_hmac, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.hmac.Hmac_t_hmac_static_extension.T_hmac_static_extension.write(_h, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sum(_h:T_hmac, _in:Array<std.UInt>):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_t_hmac.T_hmac>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.hmac.Hmac_t_hmac_static_extension.T_hmac_static_extension.sum(_h, _in)) i];
    }
}
/**
    * 
    * Package hmac implements the Keyed-Hash Message Authentication Code (HMAC) as
    * defined in U.S. Federal Information Processing Standards Publication 198.
    * An HMAC is a cryptographic hash that uses a key to sign a message.
    * The receiver verifies the hash by recomputing it using the same key.
    * 
    * Receivers should be careful to use Equal to compare MACs in order to avoid
    * timing side-channels:
    * 
    * 	// ValidMAC reports whether messageMAC is a valid HMAC tag for message.
    * 	func ValidMAC(message, messageMAC, key []byte) bool {
    * 		mac := hmac.New(sha256.New, key)
    * 		mac.Write(message)
    * 		expectedMAC := mac.Sum(nil)
    * 		return hmac.Equal(messageMAC, expectedMAC)
    * 	}
    * 
**/
class Hmac {
    /**
        * New returns a new HMAC hash using the given hash.Hash type and key.
        * New functions like sha256.New from crypto/sha256 can be used as h.
        * h must return a new Hash every time it is called.
        * Note that unlike other hash implementations in the standard library,
        * the returned Hash does not implement encoding.BinaryMarshaler
        * or encoding.BinaryUnmarshaler.
    **/
    static public inline function new_(_h:() -> stdgo._internal.hash.Hash_hash.Hash, _key:Array<std.UInt>):stdgo._internal.hash.Hash_hash.Hash {
        final _h = _h;
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.hmac.Hmac_new_.new_(_h, _key);
    }
    /**
        * Equal compares two MACs for equality without leaking timing information.
    **/
    static public inline function equal(_mac1:Array<std.UInt>, _mac2:Array<std.UInt>):Bool {
        final _mac1 = ([for (i in _mac1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _mac2 = ([for (i in _mac2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.hmac.Hmac_equal.equal(_mac1, _mac2);
    }
}
