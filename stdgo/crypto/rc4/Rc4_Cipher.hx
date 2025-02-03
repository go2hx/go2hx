package stdgo.crypto.rc4;
@:structInit @:using(stdgo.crypto.rc4.Rc4.Cipher_static_extension) abstract Cipher(stdgo._internal.crypto.rc4.Rc4_Cipher.Cipher) from stdgo._internal.crypto.rc4.Rc4_Cipher.Cipher to stdgo._internal.crypto.rc4.Rc4_Cipher.Cipher {
    public var _s(get, set) : haxe.ds.Vector<std.UInt>;
    function get__s():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._s) i]);
    function set__s(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._s = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>);
        return v;
    }
    public var _i(get, set) : std.UInt;
    function get__i():std.UInt return this._i;
    function set__i(v:std.UInt):std.UInt {
        this._i = (v : stdgo.GoUInt8);
        return v;
    }
    public var _j(get, set) : std.UInt;
    function get__j():std.UInt return this._j;
    function set__j(v:std.UInt):std.UInt {
        this._j = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_s:haxe.ds.Vector<std.UInt>, ?_i:std.UInt, ?_j:std.UInt) this = new stdgo._internal.crypto.rc4.Rc4_Cipher.Cipher(([for (i in _s) (i : stdgo.GoUInt32)] : stdgo.GoArray<stdgo.GoUInt32>), (_i : stdgo.GoUInt8), (_j : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
