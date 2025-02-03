package stdgo.crypto.des;
@:structInit @:using(stdgo.crypto.des.Des.T_desCipher_static_extension) abstract T_desCipher(stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher) from stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher to stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher {
    public var _subkeys(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get__subkeys():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this._subkeys) i]);
    function set__subkeys(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this._subkeys = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public function new(?_subkeys:haxe.ds.Vector<haxe.UInt64>) this = new stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher(([for (i in _subkeys) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
