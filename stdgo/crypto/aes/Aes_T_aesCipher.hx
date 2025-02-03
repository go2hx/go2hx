package stdgo.crypto.aes;
@:structInit @:using(stdgo.crypto.aes.Aes.T_aesCipher_static_extension) abstract T_aesCipher(stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher) from stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher to stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher {
    public var _enc(get, set) : Array<std.UInt>;
    function get__enc():Array<std.UInt> return [for (i in this._enc) i];
    function set__enc(v:Array<std.UInt>):Array<std.UInt> {
        this._enc = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public var _dec(get, set) : Array<std.UInt>;
    function get__dec():Array<std.UInt> return [for (i in this._dec) i];
    function set__dec(v:Array<std.UInt>):Array<std.UInt> {
        this._dec = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?_enc:Array<std.UInt>, ?_dec:Array<std.UInt>) this = new stdgo._internal.crypto.aes.Aes_T_aesCipher.T_aesCipher(([for (i in _enc) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dec) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
