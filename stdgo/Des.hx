package stdgo;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.des.Des_blocksize.blockSize;
@:structInit @:using(stdgo.crypto.des.Des.T_desCipher_static_extension) @:dox(hide) abstract T_desCipher(stdgo._internal.crypto.des.Des_t_descipher.T_desCipher) from stdgo._internal.crypto.des.Des_t_descipher.T_desCipher to stdgo._internal.crypto.des.Des_t_descipher.T_desCipher {
    public var _subkeys(get, set) : haxe.ds.Vector<haxe.UInt64>;
    function get__subkeys():haxe.ds.Vector<haxe.UInt64> return haxe.ds.Vector.fromArrayCopy([for (i in this._subkeys) i]);
    function set__subkeys(v:haxe.ds.Vector<haxe.UInt64>):haxe.ds.Vector<haxe.UInt64> {
        this._subkeys = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>);
        return v;
    }
    public function new(?_subkeys:haxe.ds.Vector<haxe.UInt64>) this = new stdgo._internal.crypto.des.Des_t_descipher.T_desCipher(([for (i in _subkeys) (i : stdgo.GoUInt64)] : stdgo.GoArray<stdgo.GoUInt64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.des.Des.T_tripleDESCipher_static_extension) @:dox(hide) abstract T_tripleDESCipher(stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher) from stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher to stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher {
    public var _cipher1(get, set) : T_desCipher;
    function get__cipher1():T_desCipher return this._cipher1;
    function set__cipher1(v:T_desCipher):T_desCipher {
        this._cipher1 = v;
        return v;
    }
    public var _cipher2(get, set) : T_desCipher;
    function get__cipher2():T_desCipher return this._cipher2;
    function set__cipher2(v:T_desCipher):T_desCipher {
        this._cipher2 = v;
        return v;
    }
    public var _cipher3(get, set) : T_desCipher;
    function get__cipher3():T_desCipher return this._cipher3;
    function set__cipher3(v:T_desCipher):T_desCipher {
        this._cipher3 = v;
        return v;
    }
    public function new(?_cipher1:T_desCipher, ?_cipher2:T_desCipher, ?_cipher3:T_desCipher) this = new stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher(_cipher1, _cipher2, _cipher3);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef KeySizeError = stdgo._internal.crypto.des.Des_keysizeerror.KeySizeError;
@:dox(hide) typedef T_desCipherPointer = stdgo._internal.crypto.des.Des_t_descipherpointer.T_desCipherPointer;
@:dox(hide) class T_desCipher_static_extension {
    static public function decrypt(_c:T_desCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.des.Des_t_descipher_static_extension.T_desCipher_static_extension.decrypt(_c, _dst, _src);
    }
    static public function encrypt(_c:T_desCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.des.Des_t_descipher_static_extension.T_desCipher_static_extension.encrypt(_c, _dst, _src);
    }
    static public function blockSize(_c:T_desCipher):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>);
        return stdgo._internal.crypto.des.Des_t_descipher_static_extension.T_desCipher_static_extension.blockSize(_c);
    }
    static public function _generateSubkeys(_c:T_desCipher, _keyBytes:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>);
        final _keyBytes = ([for (i in _keyBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.des.Des_t_descipher_static_extension.T_desCipher_static_extension._generateSubkeys(_c, _keyBytes);
    }
}
@:dox(hide) typedef T_tripleDESCipherPointer = stdgo._internal.crypto.des.Des_t_tripledescipherpointer.T_tripleDESCipherPointer;
@:dox(hide) class T_tripleDESCipher_static_extension {
    static public function decrypt(_c:T_tripleDESCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.des.Des_t_tripledescipher_static_extension.T_tripleDESCipher_static_extension.decrypt(_c, _dst, _src);
    }
    static public function encrypt(_c:T_tripleDESCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.des.Des_t_tripledescipher_static_extension.T_tripleDESCipher_static_extension.encrypt(_c, _dst, _src);
    }
    static public function blockSize(_c:T_tripleDESCipher):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher>);
        return stdgo._internal.crypto.des.Des_t_tripledescipher_static_extension.T_tripleDESCipher_static_extension.blockSize(_c);
    }
}
typedef KeySizeErrorPointer = stdgo._internal.crypto.des.Des_keysizeerrorpointer.KeySizeErrorPointer;
class KeySizeError_static_extension {
    static public function error(_k:KeySizeError):String {
        return stdgo._internal.crypto.des.Des_keysizeerror_static_extension.KeySizeError_static_extension.error(_k);
    }
}
/**
    * Package des implements the Data Encryption Standard (DES) and the
    * Triple Data Encryption Algorithm (TDEA) as defined
    * in U.S. Federal Information Processing Standards Publication 46-3.
    * 
    * DES is cryptographically broken and should not be used for secure
    * applications.
**/
class Des {
    /**
        * NewCipher creates and returns a new cipher.Block.
    **/
    static public inline function newCipher(_key:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.des.Des_newcipher.newCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewTripleDESCipher creates and returns a new cipher.Block.
    **/
    static public inline function newTripleDESCipher(_key:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.des.Des_newtripledescipher.newTripleDESCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
