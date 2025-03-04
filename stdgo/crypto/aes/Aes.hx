package stdgo.crypto.aes;
final blockSize : haxe.UInt64 = stdgo._internal.crypto.aes.Aes_blocksize.blockSize;
@:dox(hide) class T_gcmAble_static_extension {
    static public function newGCM(t:stdgo._internal.crypto.aes.Aes_t_gcmable.T_gcmAble, _nonceSize:StdTypes.Int, _tagSize:StdTypes.Int):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_aead.AEAD, stdgo.Error> {
        final _nonceSize = (_nonceSize : stdgo.GoInt);
        final _tagSize = (_tagSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.aes.Aes_t_gcmable_static_extension.T_gcmAble_static_extension.newGCM(t, _nonceSize, _tagSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:interface @:dox(hide) @:forward abstract T_gcmAble(stdgo._internal.crypto.aes.Aes_t_gcmable.T_gcmAble) from stdgo._internal.crypto.aes.Aes_t_gcmable.T_gcmAble to stdgo._internal.crypto.aes.Aes_t_gcmable.T_gcmAble {
    @:from
    static function fromHaxeInterface(x:{ function newGCM(_nonceSize:StdTypes.Int, _tagSize:StdTypes.Int):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_aead.AEAD, stdgo.Error>; }):T_gcmAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_gcmAble = { newGCM : (_0, _1) -> {
            final obj = x.newGCM(_0, _1);
            { _0 : obj._0, _1 : obj._1 };
        }, __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_cbcEncAble_static_extension {
    static public function newCBCEncrypter(t:stdgo._internal.crypto.aes.Aes_t_cbcencable.T_cbcEncAble, _iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_t_cbcencable_static_extension.T_cbcEncAble_static_extension.newCBCEncrypter(t, _iv);
    }
}
@:interface @:dox(hide) @:forward abstract T_cbcEncAble(stdgo._internal.crypto.aes.Aes_t_cbcencable.T_cbcEncAble) from stdgo._internal.crypto.aes.Aes_t_cbcencable.T_cbcEncAble to stdgo._internal.crypto.aes.Aes_t_cbcencable.T_cbcEncAble {
    @:from
    static function fromHaxeInterface(x:{ function newCBCEncrypter(_iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode; }):T_cbcEncAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_cbcEncAble = { newCBCEncrypter : _0 -> x.newCBCEncrypter([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_cbcDecAble_static_extension {
    static public function newCBCDecrypter(t:stdgo._internal.crypto.aes.Aes_t_cbcdecable.T_cbcDecAble, _iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_t_cbcdecable_static_extension.T_cbcDecAble_static_extension.newCBCDecrypter(t, _iv);
    }
}
@:interface @:dox(hide) @:forward abstract T_cbcDecAble(stdgo._internal.crypto.aes.Aes_t_cbcdecable.T_cbcDecAble) from stdgo._internal.crypto.aes.Aes_t_cbcdecable.T_cbcDecAble to stdgo._internal.crypto.aes.Aes_t_cbcdecable.T_cbcDecAble {
    @:from
    static function fromHaxeInterface(x:{ function newCBCDecrypter(_iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode; }):T_cbcDecAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_cbcDecAble = { newCBCDecrypter : _0 -> x.newCBCDecrypter([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_ctrAble_static_extension {
    static public function newCTR(t:stdgo._internal.crypto.aes.Aes_t_ctrable.T_ctrAble, _iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_stream.Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_t_ctrable_static_extension.T_ctrAble_static_extension.newCTR(t, _iv);
    }
}
@:interface @:dox(hide) @:forward abstract T_ctrAble(stdgo._internal.crypto.aes.Aes_t_ctrable.T_ctrAble) from stdgo._internal.crypto.aes.Aes_t_ctrable.T_ctrAble to stdgo._internal.crypto.aes.Aes_t_ctrable.T_ctrAble {
    @:from
    static function fromHaxeInterface(x:{ function newCTR(_iv:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_stream.Stream; }):T_ctrAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_ctrAble = { newCTR : _0 -> x.newCTR([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_testInterface_static_extension {
    static public function inAESPackage(t:stdgo._internal.crypto.aes.Aes_t_testinterface.T_testInterface):Bool {
        return stdgo._internal.crypto.aes.Aes_t_testinterface_static_extension.T_testInterface_static_extension.inAESPackage(t);
    }
}
@:interface @:dox(hide) @:forward abstract T_testInterface(stdgo._internal.crypto.aes.Aes_t_testinterface.T_testInterface) from stdgo._internal.crypto.aes.Aes_t_testinterface.T_testInterface to stdgo._internal.crypto.aes.Aes_t_testinterface.T_testInterface {
    @:from
    static function fromHaxeInterface(x:{ function inAESPackage():Bool; }):T_testInterface {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_testInterface = { inAESPackage : () -> x.inAESPackage(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.crypto.aes.Aes.KeyTest_static_extension) abstract KeyTest(stdgo._internal.crypto.aes.Aes_keytest.KeyTest) from stdgo._internal.crypto.aes.Aes_keytest.KeyTest to stdgo._internal.crypto.aes.Aes_keytest.KeyTest {
    public var _key(get, set) : Array<std.UInt>;
    function get__key():Array<std.UInt> return [for (i in this._key) i];
    function set__key(v:Array<std.UInt>):Array<std.UInt> {
        this._key = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
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
    public function new(?_key:Array<std.UInt>, ?_enc:Array<std.UInt>, ?_dec:Array<std.UInt>) this = new stdgo._internal.crypto.aes.Aes_keytest.KeyTest(([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _enc) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dec) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.aes.Aes.CryptTest_static_extension) abstract CryptTest(stdgo._internal.crypto.aes.Aes_crypttest.CryptTest) from stdgo._internal.crypto.aes.Aes_crypttest.CryptTest to stdgo._internal.crypto.aes.Aes_crypttest.CryptTest {
    public var _key(get, set) : Array<std.UInt>;
    function get__key():Array<std.UInt> return [for (i in this._key) i];
    function set__key(v:Array<std.UInt>):Array<std.UInt> {
        this._key = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _in(get, set) : Array<std.UInt>;
    function get__in():Array<std.UInt> return [for (i in this._in) i];
    function set__in(v:Array<std.UInt>):Array<std.UInt> {
        this._in = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_key:Array<std.UInt>, ?_in:Array<std.UInt>, ?_out:Array<std.UInt>) this = new stdgo._internal.crypto.aes.Aes_crypttest.CryptTest(([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.aes.Aes.T_aesCipher_static_extension) @:dox(hide) abstract T_aesCipher(stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher) from stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher to stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher {
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
    public function new(?_enc:Array<std.UInt>, ?_dec:Array<std.UInt>) this = new stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher(([for (i in _enc) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>), ([for (i in _dec) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.aes.Aes.T_testBlock_static_extension) @:dox(hide) abstract T_testBlock(stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock) from stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock to stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock {
    public function new() this = new stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.aes.Aes.T_testAEAD_static_extension) @:dox(hide) abstract T_testAEAD(stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD) from stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD to stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD {
    public function new() this = new stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.aes.Aes.T_testBlockMode_static_extension) @:dox(hide) abstract T_testBlockMode(stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode) from stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode to stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode {
    public function new() this = new stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.aes.Aes.T_testStream_static_extension) @:dox(hide) abstract T_testStream(stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream) from stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream to stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream {
    public function new() this = new stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef KeySizeError = stdgo._internal.crypto.aes.Aes_keysizeerror.KeySizeError;
typedef KeyTestPointer = stdgo._internal.crypto.aes.Aes_keytestpointer.KeyTestPointer;
class KeyTest_static_extension {

}
typedef CryptTestPointer = stdgo._internal.crypto.aes.Aes_crypttestpointer.CryptTestPointer;
class CryptTest_static_extension {

}
@:dox(hide) typedef T_aesCipherPointer = stdgo._internal.crypto.aes.Aes_t_aescipherpointer.T_aesCipherPointer;
@:dox(hide) class T_aesCipher_static_extension {
    static public function decrypt(_c:T_aesCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.aes.Aes_t_aescipher_static_extension.T_aesCipher_static_extension.decrypt(_c, _dst, _src);
    }
    static public function encrypt(_c:T_aesCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.aes.Aes_t_aescipher_static_extension.T_aesCipher_static_extension.encrypt(_c, _dst, _src);
    }
    static public function blockSize(_c:T_aesCipher):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_aescipher.T_aesCipher>);
        return stdgo._internal.crypto.aes.Aes_t_aescipher_static_extension.T_aesCipher_static_extension.blockSize(_c);
    }
}
@:dox(hide) typedef T_testBlockPointer = stdgo._internal.crypto.aes.Aes_t_testblockpointer.T_testBlockPointer;
@:dox(hide) class T_testBlock_static_extension {
    static public function newCTR(_:T_testBlock, _0:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_stream.Stream {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>);
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_t_testblock_static_extension.T_testBlock_static_extension.newCTR(_, _0);
    }
    static public function newCBCDecrypter(_:T_testBlock, _0:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>);
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_t_testblock_static_extension.T_testBlock_static_extension.newCBCDecrypter(_, _0);
    }
    static public function newCBCEncrypter(_:T_testBlock, _0:Array<std.UInt>):stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>);
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.aes.Aes_t_testblock_static_extension.T_testBlock_static_extension.newCBCEncrypter(_, _0);
    }
    static public function newGCM(_:T_testBlock, _0:StdTypes.Int, _1:StdTypes.Int):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_aead.AEAD, stdgo.Error> {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>);
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.aes.Aes_t_testblock_static_extension.T_testBlock_static_extension.newGCM(_, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function decrypt(_:T_testBlock, _a:Array<std.UInt>, _b:Array<std.UInt>):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>);
        final _a = ([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.aes.Aes_t_testblock_static_extension.T_testBlock_static_extension.decrypt(_, _a, _b);
    }
    static public function encrypt(_:T_testBlock, _a:Array<std.UInt>, _b:Array<std.UInt>):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>);
        final _a = ([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.aes.Aes_t_testblock_static_extension.T_testBlock_static_extension.encrypt(_, _a, _b);
    }
    static public function blockSize(_:T_testBlock):StdTypes.Int {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblock.T_testBlock>);
        return stdgo._internal.crypto.aes.Aes_t_testblock_static_extension.T_testBlock_static_extension.blockSize(_);
    }
}
@:dox(hide) typedef T_testAEADPointer = stdgo._internal.crypto.aes.Aes_t_testaeadpointer.T_testAEADPointer;
@:dox(hide) class T_testAEAD_static_extension {
    static public function inAESPackage(_:T_testAEAD):Bool {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD>);
        return stdgo._internal.crypto.aes.Aes_t_testaead_static_extension.T_testAEAD_static_extension.inAESPackage(_);
    }
    static public function open(_:T_testAEAD, _a:Array<std.UInt>, _b:Array<std.UInt>, _c:Array<std.UInt>, _d:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD>);
        final _a = ([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _c = ([for (i in _c) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _d = ([for (i in _d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.aes.Aes_t_testaead_static_extension.T_testAEAD_static_extension.open(_, _a, _b, _c, _d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seal(_:T_testAEAD, _a:Array<std.UInt>, _b:Array<std.UInt>, _c:Array<std.UInt>, _d:Array<std.UInt>):Array<std.UInt> {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD>);
        final _a = ([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _c = ([for (i in _c) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _d = ([for (i in _d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.aes.Aes_t_testaead_static_extension.T_testAEAD_static_extension.seal(_, _a, _b, _c, _d)) i];
    }
    static public function overhead(_:T_testAEAD):StdTypes.Int {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD>);
        return stdgo._internal.crypto.aes.Aes_t_testaead_static_extension.T_testAEAD_static_extension.overhead(_);
    }
    static public function nonceSize(_:T_testAEAD):StdTypes.Int {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testaead.T_testAEAD>);
        return stdgo._internal.crypto.aes.Aes_t_testaead_static_extension.T_testAEAD_static_extension.nonceSize(_);
    }
}
@:dox(hide) typedef T_testBlockModePointer = stdgo._internal.crypto.aes.Aes_t_testblockmodepointer.T_testBlockModePointer;
@:dox(hide) class T_testBlockMode_static_extension {
    static public function inAESPackage(_:T_testBlockMode):Bool {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode>);
        return stdgo._internal.crypto.aes.Aes_t_testblockmode_static_extension.T_testBlockMode_static_extension.inAESPackage(_);
    }
    static public function cryptBlocks(_:T_testBlockMode, _a:Array<std.UInt>, _b:Array<std.UInt>):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode>);
        final _a = ([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.aes.Aes_t_testblockmode_static_extension.T_testBlockMode_static_extension.cryptBlocks(_, _a, _b);
    }
    static public function blockSize(_:T_testBlockMode):StdTypes.Int {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_testblockmode.T_testBlockMode>);
        return stdgo._internal.crypto.aes.Aes_t_testblockmode_static_extension.T_testBlockMode_static_extension.blockSize(_);
    }
}
@:dox(hide) typedef T_testStreamPointer = stdgo._internal.crypto.aes.Aes_t_teststreampointer.T_testStreamPointer;
@:dox(hide) class T_testStream_static_extension {
    static public function inAESPackage(_:T_testStream):Bool {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream>);
        return stdgo._internal.crypto.aes.Aes_t_teststream_static_extension.T_testStream_static_extension.inAESPackage(_);
    }
    static public function xORKeyStream(_:T_testStream, _a:Array<std.UInt>, _b:Array<std.UInt>):Void {
        final _ = (_ : stdgo.Ref<stdgo._internal.crypto.aes.Aes_t_teststream.T_testStream>);
        final _a = ([for (i in _a) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.aes.Aes_t_teststream_static_extension.T_testStream_static_extension.xORKeyStream(_, _a, _b);
    }
}
typedef KeySizeErrorPointer = stdgo._internal.crypto.aes.Aes_keysizeerrorpointer.KeySizeErrorPointer;
class KeySizeError_static_extension {
    static public function error(_k:KeySizeError):String {
        return stdgo._internal.crypto.aes.Aes_keysizeerror_static_extension.KeySizeError_static_extension.error(_k);
    }
}
/**
    * Package aes implements AES encryption (formerly Rijndael), as defined in
    * U.S. Federal Information Processing Standards Publication 197.
    * 
    * The AES operations in this package are not implemented using constant-time algorithms.
    * An exception is when running on systems with enabled hardware support for AES
    * that makes these operations constant-time. Examples include amd64 systems using AES-NI
    * extensions and s390x systems using Message-Security-Assist extensions.
    * On such systems, when the result of NewCipher is passed to cipher.NewGCM,
    * the GHASH operation used by GCM is also constant-time.
**/
class Aes {
    /**
        * Test that powx is initialized correctly.
        * (Can adapt this code to generate it too.)
    **/
    static public inline function testPowx(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testpowx.testPowx(_t);
    }
    /**
        * Test all mul inputs against bit-by-bit n² algorithm.
    **/
    static public inline function testMul(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testmul.testMul(_t);
    }
    /**
        * Check that S-boxes are inverses of each other.
        * They have more structure that we could test,
        * but if this sanity check passes, we'll assume
        * the cut and paste from the FIPS PDF worked.
    **/
    static public inline function testSboxes(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testsboxes.testSboxes(_t);
    }
    /**
        * Test that encryption tables are correct.
        * (Can adapt this code to generate them too.)
    **/
    static public inline function testTe(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testte.testTe(_t);
    }
    /**
        * Test that decryption tables are correct.
        * (Can adapt this code to generate them too.)
    **/
    static public inline function testTd(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testtd.testTd(_t);
    }
    /**
        * Test key expansion against FIPS 197 examples.
    **/
    static public inline function testExpandKey(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testexpandkey.testExpandKey(_t);
    }
    /**
        * Test Cipher Encrypt method against FIPS 197 examples.
    **/
    static public inline function testCipherEncrypt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testcipherencrypt.testCipherEncrypt(_t);
    }
    /**
        * Test Cipher Decrypt against FIPS 197 examples.
    **/
    static public inline function testCipherDecrypt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testcipherdecrypt.testCipherDecrypt(_t);
    }
    /**
        * Test short input/output.
        * Assembly used to not notice.
        * See issue 7928.
    **/
    static public inline function testShortBlocks(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testshortblocks.testShortBlocks(_t);
    }
    static public inline function benchmarkEncrypt(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.aes.Aes_benchmarkencrypt.benchmarkEncrypt(_b);
    }
    static public inline function benchmarkDecrypt(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.aes.Aes_benchmarkdecrypt.benchmarkDecrypt(_b);
    }
    static public inline function benchmarkExpand(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.crypto.aes.Aes_benchmarkexpand.benchmarkExpand(_b);
    }
    /**
        * NewCipher creates and returns a new cipher.Block.
        * The key argument should be the AES key,
        * either 16, 24, or 32 bytes to select
        * AES-128, AES-192, or AES-256.
    **/
    static public inline function newCipher(_key:Array<std.UInt>):stdgo.Tuple<stdgo._internal.crypto.cipher.Cipher_block.Block, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Test the gcmAble interface is detected correctly by the cipher package.
    **/
    static public inline function testGCMAble(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testgcmable.testGCMAble(_t);
    }
    /**
        * Test the cbcEncAble interface is detected correctly by the cipher package.
    **/
    static public inline function testCBCEncAble(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testcbcencable.testCBCEncAble(_t);
    }
    /**
        * Test the cbcDecAble interface is detected correctly by the cipher package.
    **/
    static public inline function testCBCDecAble(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testcbcdecable.testCBCDecAble(_t);
    }
    /**
        * Test the ctrAble interface is detected correctly by the cipher package.
    **/
    static public inline function testCTRAble(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.crypto.aes.Aes_testctrable.testCTRAble(_t);
    }
}
