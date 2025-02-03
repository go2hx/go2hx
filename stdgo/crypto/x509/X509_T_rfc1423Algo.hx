package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_rfc1423Algo_static_extension) abstract T_rfc1423Algo(stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo) from stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo to stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo {
    public var _cipher(get, set) : PEMCipher;
    function get__cipher():PEMCipher return this._cipher;
    function set__cipher(v:PEMCipher):PEMCipher {
        this._cipher = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _cipherFunc(get, set) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; };
    function get__cipherFunc():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; } return _0 -> this._cipherFunc([for (i in _0) i]);
    function set__cipherFunc(v:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; }):stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; } {
        this._cipherFunc = v;
        return v;
    }
    public var _keySize(get, set) : StdTypes.Int;
    function get__keySize():StdTypes.Int return this._keySize;
    function set__keySize(v:StdTypes.Int):StdTypes.Int {
        this._keySize = (v : stdgo.GoInt);
        return v;
    }
    public var _blockSize(get, set) : StdTypes.Int;
    function get__blockSize():StdTypes.Int return this._blockSize;
    function set__blockSize(v:StdTypes.Int):StdTypes.Int {
        this._blockSize = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_cipher:PEMCipher, ?_name:String, ?_cipherFunc:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo._internal.crypto.cipher.Cipher_Block.Block; var _1 : stdgo.Error; }, ?_keySize:StdTypes.Int, ?_blockSize:StdTypes.Int) this = new stdgo._internal.crypto.x509.X509_T_rfc1423Algo.T_rfc1423Algo(_cipher, (_name : stdgo.GoString), _cipherFunc, (_keySize : stdgo.GoInt), (_blockSize : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
