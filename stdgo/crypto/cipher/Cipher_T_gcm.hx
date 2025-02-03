package stdgo.crypto.cipher;
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_gcm_static_extension) abstract T_gcm(stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm) from stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm to stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm {
    public var _cipher(get, set) : Block;
    function get__cipher():Block return this._cipher;
    function set__cipher(v:Block):Block {
        this._cipher = v;
        return v;
    }
    public var _nonceSize(get, set) : StdTypes.Int;
    function get__nonceSize():StdTypes.Int return this._nonceSize;
    function set__nonceSize(v:StdTypes.Int):StdTypes.Int {
        this._nonceSize = (v : stdgo.GoInt);
        return v;
    }
    public var _tagSize(get, set) : StdTypes.Int;
    function get__tagSize():StdTypes.Int return this._tagSize;
    function set__tagSize(v:StdTypes.Int):StdTypes.Int {
        this._tagSize = (v : stdgo.GoInt);
        return v;
    }
    public var _productTable(get, set) : haxe.ds.Vector<T_gcmFieldElement>;
    function get__productTable():haxe.ds.Vector<T_gcmFieldElement> return haxe.ds.Vector.fromArrayCopy([for (i in this._productTable) i]);
    function set__productTable(v:haxe.ds.Vector<T_gcmFieldElement>):haxe.ds.Vector<T_gcmFieldElement> {
        this._productTable = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>);
        return v;
    }
    public function new(?_cipher:Block, ?_nonceSize:StdTypes.Int, ?_tagSize:StdTypes.Int, ?_productTable:haxe.ds.Vector<T_gcmFieldElement>) this = new stdgo._internal.crypto.cipher.Cipher_T_gcm.T_gcm(_cipher, (_nonceSize : stdgo.GoInt), (_tagSize : stdgo.GoInt), ([for (i in _productTable) i] : stdgo.GoArray<stdgo._internal.crypto.cipher.Cipher_T_gcmFieldElement.T_gcmFieldElement>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
