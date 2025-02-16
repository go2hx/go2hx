package stdgo;
@:dox(hide) class T_cbcEncAble_static_extension {
    static public function newCBCEncrypter(t:stdgo._internal.crypto.cipher.Cipher_t_cbcencable.T_cbcEncAble, _iv:Array<std.UInt>):BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_t_cbcencable_static_extension.T_cbcEncAble_static_extension.newCBCEncrypter(t, _iv);
    }
}
@:dox(hide) @:forward abstract T_cbcEncAble(stdgo._internal.crypto.cipher.Cipher_t_cbcencable.T_cbcEncAble) from stdgo._internal.crypto.cipher.Cipher_t_cbcencable.T_cbcEncAble to stdgo._internal.crypto.cipher.Cipher_t_cbcencable.T_cbcEncAble {
    @:from
    static function fromHaxeInterface(x:{ function newCBCEncrypter(_iv:Array<std.UInt>):BlockMode; }):T_cbcEncAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_cbcEncAble = { newCBCEncrypter : _0 -> x.newCBCEncrypter([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_cbcDecAble_static_extension {
    static public function newCBCDecrypter(t:stdgo._internal.crypto.cipher.Cipher_t_cbcdecable.T_cbcDecAble, _iv:Array<std.UInt>):BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_t_cbcdecable_static_extension.T_cbcDecAble_static_extension.newCBCDecrypter(t, _iv);
    }
}
@:dox(hide) @:forward abstract T_cbcDecAble(stdgo._internal.crypto.cipher.Cipher_t_cbcdecable.T_cbcDecAble) from stdgo._internal.crypto.cipher.Cipher_t_cbcdecable.T_cbcDecAble to stdgo._internal.crypto.cipher.Cipher_t_cbcdecable.T_cbcDecAble {
    @:from
    static function fromHaxeInterface(x:{ function newCBCDecrypter(_iv:Array<std.UInt>):BlockMode; }):T_cbcDecAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_cbcDecAble = { newCBCDecrypter : _0 -> x.newCBCDecrypter([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Block_static_extension {
    static public function decrypt(t:stdgo._internal.crypto.cipher.Cipher_block.Block, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_block_static_extension.Block_static_extension.decrypt(t, _dst, _src);
    }
    static public function encrypt(t:stdgo._internal.crypto.cipher.Cipher_block.Block, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_block_static_extension.Block_static_extension.encrypt(t, _dst, _src);
    }
    static public function blockSize(t:stdgo._internal.crypto.cipher.Cipher_block.Block):StdTypes.Int {
        return stdgo._internal.crypto.cipher.Cipher_block_static_extension.Block_static_extension.blockSize(t);
    }
}
@:forward abstract Block(stdgo._internal.crypto.cipher.Cipher_block.Block) from stdgo._internal.crypto.cipher.Cipher_block.Block to stdgo._internal.crypto.cipher.Cipher_block.Block {
    @:from
    static function fromHaxeInterface(x:{ function blockSize():StdTypes.Int; function encrypt(_dst:Array<std.UInt>, _src:Array<std.UInt>):Void; function decrypt(_dst:Array<std.UInt>, _src:Array<std.UInt>):Void; }):Block {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Block = { blockSize : () -> x.blockSize(), encrypt : (_0, _1) -> x.encrypt([for (i in _0) i], [for (i in _1) i]), decrypt : (_0, _1) -> x.decrypt([for (i in _0) i], [for (i in _1) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Stream_static_extension {
    static public function xORKeyStream(t:stdgo._internal.crypto.cipher.Cipher_stream.Stream, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_stream_static_extension.Stream_static_extension.xORKeyStream(t, _dst, _src);
    }
}
@:forward abstract Stream(stdgo._internal.crypto.cipher.Cipher_stream.Stream) from stdgo._internal.crypto.cipher.Cipher_stream.Stream to stdgo._internal.crypto.cipher.Cipher_stream.Stream {
    @:from
    static function fromHaxeInterface(x:{ function xORKeyStream(_dst:Array<std.UInt>, _src:Array<std.UInt>):Void; }):Stream {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Stream = { xORKeyStream : (_0, _1) -> x.xORKeyStream([for (i in _0) i], [for (i in _1) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class BlockMode_static_extension {
    static public function cryptBlocks(t:stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_blockmode_static_extension.BlockMode_static_extension.cryptBlocks(t, _dst, _src);
    }
    static public function blockSize(t:stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode):StdTypes.Int {
        return stdgo._internal.crypto.cipher.Cipher_blockmode_static_extension.BlockMode_static_extension.blockSize(t);
    }
}
@:forward abstract BlockMode(stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode) from stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode to stdgo._internal.crypto.cipher.Cipher_blockmode.BlockMode {
    @:from
    static function fromHaxeInterface(x:{ function blockSize():StdTypes.Int; function cryptBlocks(_dst:Array<std.UInt>, _src:Array<std.UInt>):Void; }):BlockMode {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:BlockMode = { blockSize : () -> x.blockSize(), cryptBlocks : (_0, _1) -> x.cryptBlocks([for (i in _0) i], [for (i in _1) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_ctrAble_static_extension {
    static public function newCTR(t:stdgo._internal.crypto.cipher.Cipher_t_ctrable.T_ctrAble, _iv:Array<std.UInt>):Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_t_ctrable_static_extension.T_ctrAble_static_extension.newCTR(t, _iv);
    }
}
@:dox(hide) @:forward abstract T_ctrAble(stdgo._internal.crypto.cipher.Cipher_t_ctrable.T_ctrAble) from stdgo._internal.crypto.cipher.Cipher_t_ctrable.T_ctrAble to stdgo._internal.crypto.cipher.Cipher_t_ctrable.T_ctrAble {
    @:from
    static function fromHaxeInterface(x:{ function newCTR(_iv:Array<std.UInt>):Stream; }):T_ctrAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_ctrAble = { newCTR : _0 -> x.newCTR([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class AEAD_static_extension {
    static public function open(t:stdgo._internal.crypto.cipher.Cipher_aead.AEAD, _dst:Array<std.UInt>, _nonce:Array<std.UInt>, _ciphertext:Array<std.UInt>, _additionalData:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _additionalData = ([for (i in _additionalData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_aead_static_extension.AEAD_static_extension.open(t, _dst, _nonce, _ciphertext, _additionalData);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seal(t:stdgo._internal.crypto.cipher.Cipher_aead.AEAD, _dst:Array<std.UInt>, _nonce:Array<std.UInt>, _plaintext:Array<std.UInt>, _additionalData:Array<std.UInt>):Array<std.UInt> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _plaintext = ([for (i in _plaintext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _additionalData = ([for (i in _additionalData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.cipher.Cipher_aead_static_extension.AEAD_static_extension.seal(t, _dst, _nonce, _plaintext, _additionalData)) i];
    }
    static public function overhead(t:stdgo._internal.crypto.cipher.Cipher_aead.AEAD):StdTypes.Int {
        return stdgo._internal.crypto.cipher.Cipher_aead_static_extension.AEAD_static_extension.overhead(t);
    }
    static public function nonceSize(t:stdgo._internal.crypto.cipher.Cipher_aead.AEAD):StdTypes.Int {
        return stdgo._internal.crypto.cipher.Cipher_aead_static_extension.AEAD_static_extension.nonceSize(t);
    }
}
@:forward abstract AEAD(stdgo._internal.crypto.cipher.Cipher_aead.AEAD) from stdgo._internal.crypto.cipher.Cipher_aead.AEAD to stdgo._internal.crypto.cipher.Cipher_aead.AEAD {
    @:from
    static function fromHaxeInterface(x:{ function nonceSize():StdTypes.Int; function overhead():StdTypes.Int; function seal(_dst:Array<std.UInt>, _nonce:Array<std.UInt>, _plaintext:Array<std.UInt>, _additionalData:Array<std.UInt>):Array<std.UInt>; function open(_dst:Array<std.UInt>, _nonce:Array<std.UInt>, _ciphertext:Array<std.UInt>, _additionalData:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error>; }):AEAD {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:AEAD = { nonceSize : () -> x.nonceSize(), overhead : () -> x.overhead(), seal : (_0, _1, _2, _3) -> x.seal([for (i in _0) i], [for (i in _1) i], [for (i in _2) i], [for (i in _3) i]), open : (_0, _1, _2, _3) -> x.open([for (i in _0) i], [for (i in _1) i], [for (i in _2) i], [for (i in _3) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_gcmAble_static_extension {
    static public function newGCM(t:stdgo._internal.crypto.cipher.Cipher_t_gcmable.T_gcmAble, _nonceSize:StdTypes.Int, _tagSize:StdTypes.Int):stdgo.Tuple<AEAD, stdgo.Error> {
        final _nonceSize = (_nonceSize : stdgo.GoInt);
        final _tagSize = (_tagSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_t_gcmable_static_extension.T_gcmAble_static_extension.newGCM(t, _nonceSize, _tagSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) @:forward abstract T_gcmAble(stdgo._internal.crypto.cipher.Cipher_t_gcmable.T_gcmAble) from stdgo._internal.crypto.cipher.Cipher_t_gcmable.T_gcmAble to stdgo._internal.crypto.cipher.Cipher_t_gcmable.T_gcmAble {
    @:from
    static function fromHaxeInterface(x:{ function newGCM(_nonceSize:StdTypes.Int, _tagSize:StdTypes.Int):stdgo.Tuple<AEAD, stdgo.Error>; }):T_gcmAble {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_gcmAble = { newGCM : (_0, _1) -> x.newGCM(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_cbc_static_extension) @:dox(hide) abstract T_cbc(stdgo._internal.crypto.cipher.Cipher_t_cbc.T_cbc) from stdgo._internal.crypto.cipher.Cipher_t_cbc.T_cbc to stdgo._internal.crypto.cipher.Cipher_t_cbc.T_cbc {
    public var _b(get, set) : Block;
    function get__b():Block return this._b;
    function set__b(v:Block):Block {
        this._b = v;
        return v;
    }
    public var _blockSize(get, set) : StdTypes.Int;
    function get__blockSize():StdTypes.Int return this._blockSize;
    function set__blockSize(v:StdTypes.Int):StdTypes.Int {
        this._blockSize = (v : stdgo.GoInt);
        return v;
    }
    public var _iv(get, set) : Array<std.UInt>;
    function get__iv():Array<std.UInt> return [for (i in this._iv) i];
    function set__iv(v:Array<std.UInt>):Array<std.UInt> {
        this._iv = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _tmp(get, set) : Array<std.UInt>;
    function get__tmp():Array<std.UInt> return [for (i in this._tmp) i];
    function set__tmp(v:Array<std.UInt>):Array<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_b:Block, ?_blockSize:StdTypes.Int, ?_iv:Array<std.UInt>, ?_tmp:Array<std.UInt>) this = new stdgo._internal.crypto.cipher.Cipher_t_cbc.T_cbc(_b, (_blockSize : stdgo.GoInt), ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_cfb_static_extension) @:dox(hide) abstract T_cfb(stdgo._internal.crypto.cipher.Cipher_t_cfb.T_cfb) from stdgo._internal.crypto.cipher.Cipher_t_cfb.T_cfb to stdgo._internal.crypto.cipher.Cipher_t_cfb.T_cfb {
    public var _b(get, set) : Block;
    function get__b():Block return this._b;
    function set__b(v:Block):Block {
        this._b = v;
        return v;
    }
    public var _next(get, set) : Array<std.UInt>;
    function get__next():Array<std.UInt> return [for (i in this._next) i];
    function set__next(v:Array<std.UInt>):Array<std.UInt> {
        this._next = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outUsed(get, set) : StdTypes.Int;
    function get__outUsed():StdTypes.Int return this._outUsed;
    function set__outUsed(v:StdTypes.Int):StdTypes.Int {
        this._outUsed = (v : stdgo.GoInt);
        return v;
    }
    public var _decrypt(get, set) : Bool;
    function get__decrypt():Bool return this._decrypt;
    function set__decrypt(v:Bool):Bool {
        this._decrypt = v;
        return v;
    }
    public function new(?_b:Block, ?_next:Array<std.UInt>, ?_out:Array<std.UInt>, ?_outUsed:StdTypes.Int, ?_decrypt:Bool) this = new stdgo._internal.crypto.cipher.Cipher_t_cfb.T_cfb(_b, ([for (i in _next) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_outUsed : stdgo.GoInt), _decrypt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_ctr_static_extension) @:dox(hide) abstract T_ctr(stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr) from stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr to stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr {
    public var _b(get, set) : Block;
    function get__b():Block return this._b;
    function set__b(v:Block):Block {
        this._b = v;
        return v;
    }
    public var _ctr(get, set) : Array<std.UInt>;
    function get__ctr():Array<std.UInt> return [for (i in this._ctr) i];
    function set__ctr(v:Array<std.UInt>):Array<std.UInt> {
        this._ctr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outUsed(get, set) : StdTypes.Int;
    function get__outUsed():StdTypes.Int return this._outUsed;
    function set__outUsed(v:StdTypes.Int):StdTypes.Int {
        this._outUsed = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_b:Block, ?_ctr:Array<std.UInt>, ?_out:Array<std.UInt>, ?_outUsed:StdTypes.Int) this = new stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr(_b, ([for (i in _ctr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_outUsed : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_gcmFieldElement_static_extension) @:dox(hide) abstract T_gcmFieldElement(stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement) from stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement to stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement {
    public var _low(get, set) : haxe.UInt64;
    function get__low():haxe.UInt64 return this._low;
    function set__low(v:haxe.UInt64):haxe.UInt64 {
        this._low = (v : stdgo.GoUInt64);
        return v;
    }
    public var _high(get, set) : haxe.UInt64;
    function get__high():haxe.UInt64 return this._high;
    function set__high(v:haxe.UInt64):haxe.UInt64 {
        this._high = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_low:haxe.UInt64, ?_high:haxe.UInt64) this = new stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement((_low : stdgo.GoUInt64), (_high : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_gcm_static_extension) @:dox(hide) abstract T_gcm(stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm) from stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm to stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm {
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
        this._productTable = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>);
        return v;
    }
    public function new(?_cipher:Block, ?_nonceSize:StdTypes.Int, ?_tagSize:StdTypes.Int, ?_productTable:haxe.ds.Vector<T_gcmFieldElement>) this = new stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm(_cipher, (_nonceSize : stdgo.GoInt), (_tagSize : stdgo.GoInt), ([for (i in _productTable) i] : stdgo.GoArray<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.StreamReader_static_extension) abstract StreamReader(stdgo._internal.crypto.cipher.Cipher_streamreader.StreamReader) from stdgo._internal.crypto.cipher.Cipher_streamreader.StreamReader to stdgo._internal.crypto.cipher.Cipher_streamreader.StreamReader {
    public var s(get, set) : Stream;
    function get_s():Stream return this.s;
    function set_s(v:Stream):Stream {
        this.s = v;
        return v;
    }
    public var r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get_r():stdgo._internal.io.Io_reader.Reader return this.r;
    function set_r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this.r = v;
        return v;
    }
    public function new(?s:Stream, ?r:stdgo._internal.io.Io_reader.Reader) this = new stdgo._internal.crypto.cipher.Cipher_streamreader.StreamReader(s, r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.StreamWriter_static_extension) abstract StreamWriter(stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter) from stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter to stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter {
    public var s(get, set) : Stream;
    function get_s():Stream return this.s;
    function set_s(v:Stream):Stream {
        this.s = v;
        return v;
    }
    public var w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get_w():stdgo._internal.io.Io_writer.Writer return this.w;
    function set_w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this.w = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?s:Stream, ?w:stdgo._internal.io.Io_writer.Writer, ?err:stdgo.Error) this = new stdgo._internal.crypto.cipher.Cipher_streamwriter.StreamWriter(s, w, (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.cipher.Cipher.T_ofb_static_extension) @:dox(hide) abstract T_ofb(stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb) from stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb to stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb {
    public var _b(get, set) : Block;
    function get__b():Block return this._b;
    function set__b(v:Block):Block {
        this._b = v;
        return v;
    }
    public var _cipher(get, set) : Array<std.UInt>;
    function get__cipher():Array<std.UInt> return [for (i in this._cipher) i];
    function set__cipher(v:Array<std.UInt>):Array<std.UInt> {
        this._cipher = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _out(get, set) : Array<std.UInt>;
    function get__out():Array<std.UInt> return [for (i in this._out) i];
    function set__out(v:Array<std.UInt>):Array<std.UInt> {
        this._out = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _outUsed(get, set) : StdTypes.Int;
    function get__outUsed():StdTypes.Int return this._outUsed;
    function set__outUsed(v:StdTypes.Int):StdTypes.Int {
        this._outUsed = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_b:Block, ?_cipher:Array<std.UInt>, ?_out:Array<std.UInt>, ?_outUsed:StdTypes.Int) this = new stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb(_b, ([for (i in _cipher) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_outUsed : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_cbcEncrypter = stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter;
@:dox(hide) typedef T_cbcDecrypter = stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter;
@:dox(hide) typedef T_cbcPointer = stdgo._internal.crypto.cipher.Cipher_t_cbcpointer.T_cbcPointer;
@:dox(hide) class T_cbc_static_extension {

}
@:dox(hide) typedef T_cfbPointer = stdgo._internal.crypto.cipher.Cipher_t_cfbpointer.T_cfbPointer;
@:dox(hide) class T_cfb_static_extension {
    static public function xORKeyStream(_x:T_cfb, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cfb.T_cfb>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_t_cfb_static_extension.T_cfb_static_extension.xORKeyStream(_x, _dst, _src);
    }
}
@:dox(hide) typedef T_ctrPointer = stdgo._internal.crypto.cipher.Cipher_t_ctrpointer.T_ctrPointer;
@:dox(hide) class T_ctr_static_extension {
    static public function xORKeyStream(_x:T_ctr, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_t_ctr_static_extension.T_ctr_static_extension.xORKeyStream(_x, _dst, _src);
    }
    static public function _refill(_x:T_ctr):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr>);
        stdgo._internal.crypto.cipher.Cipher_t_ctr_static_extension.T_ctr_static_extension._refill(_x);
    }
}
@:dox(hide) typedef T_gcmFieldElementPointer = stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelementpointer.T_gcmFieldElementPointer;
@:dox(hide) class T_gcmFieldElement_static_extension {

}
@:dox(hide) typedef T_gcmPointer = stdgo._internal.crypto.cipher.Cipher_t_gcmpointer.T_gcmPointer;
@:dox(hide) class T_gcm_static_extension {
    static public function _auth(_g:T_gcm, _out:Array<std.UInt>, _ciphertext:Array<std.UInt>, _additionalData:Array<std.UInt>, _tagMask:haxe.ds.Vector<std.UInt>):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        final _out = ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _additionalData = ([for (i in _additionalData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _tagMask = (_tagMask : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension._auth(_g, _out, _ciphertext, _additionalData, _tagMask);
    }
    static public function _deriveCounter(_g:T_gcm, _counter:haxe.ds.Vector<std.UInt>, _nonce:Array<std.UInt>):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        final _counter = (_counter : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension._deriveCounter(_g, _counter, _nonce);
    }
    static public function _counterCrypt(_g:T_gcm, _out:Array<std.UInt>, _in:Array<std.UInt>, _counter:haxe.ds.Vector<std.UInt>):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        final _out = ([for (i in _out) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _counter = (_counter : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension._counterCrypt(_g, _out, _in, _counter);
    }
    static public function _update(_g:T_gcm, _y:T_gcmFieldElement, _data:Array<std.UInt>):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension._update(_g, _y, _data);
    }
    static public function _updateBlocks(_g:T_gcm, _y:T_gcmFieldElement, _blocks:Array<std.UInt>):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>);
        final _blocks = ([for (i in _blocks) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension._updateBlocks(_g, _y, _blocks);
    }
    static public function _mul(_g:T_gcm, _y:T_gcmFieldElement):Void {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        final _y = (_y : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>);
        stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension._mul(_g, _y);
    }
    static public function open(_g:T_gcm, _dst:Array<std.UInt>, _nonce:Array<std.UInt>, _ciphertext:Array<std.UInt>, _data:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ciphertext = ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension.open(_g, _dst, _nonce, _ciphertext, _data);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seal(_g:T_gcm, _dst:Array<std.UInt>, _nonce:Array<std.UInt>, _plaintext:Array<std.UInt>, _data:Array<std.UInt>):Array<std.UInt> {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _nonce = ([for (i in _nonce) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _plaintext = ([for (i in _plaintext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension.seal(_g, _dst, _nonce, _plaintext, _data)) i];
    }
    static public function overhead(_g:T_gcm):StdTypes.Int {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        return stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension.overhead(_g);
    }
    static public function nonceSize(_g:T_gcm):StdTypes.Int {
        final _g = (_g : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>);
        return stdgo._internal.crypto.cipher.Cipher_t_gcm_static_extension.T_gcm_static_extension.nonceSize(_g);
    }
}
typedef StreamReaderPointer = stdgo._internal.crypto.cipher.Cipher_streamreaderpointer.StreamReaderPointer;
class StreamReader_static_extension {
    static public function read(_r:StreamReader, _dst:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_streamreader_static_extension.StreamReader_static_extension.read(_r, _dst);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef StreamWriterPointer = stdgo._internal.crypto.cipher.Cipher_streamwriterpointer.StreamWriterPointer;
class StreamWriter_static_extension {
    static public function close(_w:StreamWriter):stdgo.Error {
        return stdgo._internal.crypto.cipher.Cipher_streamwriter_static_extension.StreamWriter_static_extension.close(_w);
    }
    static public function write(_w:StreamWriter, _src:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_streamwriter_static_extension.StreamWriter_static_extension.write(_w, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_ofbPointer = stdgo._internal.crypto.cipher.Cipher_t_ofbpointer.T_ofbPointer;
@:dox(hide) class T_ofb_static_extension {
    static public function xORKeyStream(_x:T_ofb, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_t_ofb_static_extension.T_ofb_static_extension.xORKeyStream(_x, _dst, _src);
    }
    static public function _refill(_x:T_ofb):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ofb.T_ofb>);
        stdgo._internal.crypto.cipher.Cipher_t_ofb_static_extension.T_ofb_static_extension._refill(_x);
    }
}
@:dox(hide) typedef T_cbcEncrypterPointer = stdgo._internal.crypto.cipher.Cipher_t_cbcencrypterpointer.T_cbcEncrypterPointer;
@:dox(hide) class T_cbcEncrypter_static_extension {
    static public function setIV(_x:T_cbcEncrypter, _iv:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter>);
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter_static_extension.T_cbcEncrypter_static_extension.setIV(_x, _iv);
    }
    static public function cryptBlocks(_x:T_cbcEncrypter, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter_static_extension.T_cbcEncrypter_static_extension.cryptBlocks(_x, _dst, _src);
    }
    static public function blockSize(_x:T_cbcEncrypter):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter.T_cbcEncrypter>);
        return stdgo._internal.crypto.cipher.Cipher_t_cbcencrypter_static_extension.T_cbcEncrypter_static_extension.blockSize(_x);
    }
}
@:dox(hide) typedef T_cbcDecrypterPointer = stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypterpointer.T_cbcDecrypterPointer;
@:dox(hide) class T_cbcDecrypter_static_extension {
    static public function setIV(_x:T_cbcDecrypter, _iv:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter>);
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter_static_extension.T_cbcDecrypter_static_extension.setIV(_x, _iv);
    }
    static public function cryptBlocks(_x:T_cbcDecrypter, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter_static_extension.T_cbcDecrypter_static_extension.cryptBlocks(_x, _dst, _src);
    }
    static public function blockSize(_x:T_cbcDecrypter):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter.T_cbcDecrypter>);
        return stdgo._internal.crypto.cipher.Cipher_t_cbcdecrypter_static_extension.T_cbcDecrypter_static_extension.blockSize(_x);
    }
}
/**
    * Package cipher implements standard block cipher modes that can be wrapped
    * around low-level block cipher implementations.
    * See https://csrc.nist.gov/groups/ST/toolkit/BCM/current_modes.html
    * and NIST Special Publication 800-38A.
**/
class Cipher {
    /**
        * NewCBCEncrypter returns a BlockMode which encrypts in cipher block chaining
        * mode, using the given Block. The length of iv must be the same as the
        * Block's block size.
    **/
    static public inline function newCBCEncrypter(_b:Block, _iv:Array<std.UInt>):BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newcbcencrypter.newCBCEncrypter(_b, _iv);
    }
    /**
        * NewCBCDecrypter returns a BlockMode which decrypts in cipher block chaining
        * mode, using the given Block. The length of iv must be the same as the
        * Block's block size and must match the iv used to encrypt the data.
    **/
    static public inline function newCBCDecrypter(_b:Block, _iv:Array<std.UInt>):BlockMode {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newcbcdecrypter.newCBCDecrypter(_b, _iv);
    }
    /**
        * NewCFBEncrypter returns a Stream which encrypts with cipher feedback mode,
        * using the given Block. The iv must be the same length as the Block's block
        * size.
    **/
    static public inline function newCFBEncrypter(_block:Block, _iv:Array<std.UInt>):Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newcfbencrypter.newCFBEncrypter(_block, _iv);
    }
    /**
        * NewCFBDecrypter returns a Stream which decrypts with cipher feedback mode,
        * using the given Block. The iv must be the same length as the Block's block
        * size.
    **/
    static public inline function newCFBDecrypter(_block:Block, _iv:Array<std.UInt>):Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newcfbdecrypter.newCFBDecrypter(_block, _iv);
    }
    /**
        * NewCTR returns a Stream which encrypts/decrypts using the given Block in
        * counter mode. The length of iv must be the same as the Block's block size.
    **/
    static public inline function newCTR(_block:Block, _iv:Array<std.UInt>):Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newctr.newCTR(_block, _iv);
    }
    /**
        * NewGCM returns the given 128-bit, block cipher wrapped in Galois Counter Mode
        * with the standard nonce length.
        * 
        * In general, the GHASH operation performed by this implementation of GCM is not constant-time.
        * An exception is when the underlying Block was created by aes.NewCipher
        * on systems with hardware support for AES. See the crypto/aes package documentation for details.
    **/
    static public inline function newGCM(_cipher:Block):stdgo.Tuple<AEAD, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_newgcm.newGCM(_cipher);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewGCMWithNonceSize returns the given 128-bit, block cipher wrapped in Galois
        * Counter Mode, which accepts nonces of the given length. The length must not
        * be zero.
        * 
        * Only use this function if you require compatibility with an existing
        * cryptosystem that uses non-standard nonce lengths. All other users should use
        * NewGCM, which is faster and more resistant to misuse.
    **/
    static public inline function newGCMWithNonceSize(_cipher:Block, _size:StdTypes.Int):stdgo.Tuple<AEAD, stdgo.Error> {
        final _size = (_size : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_newgcmwithnoncesize.newGCMWithNonceSize(_cipher, _size);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewGCMWithTagSize returns the given 128-bit, block cipher wrapped in Galois
        * Counter Mode, which generates tags with the given length.
        * 
        * Tag sizes between 12 and 16 bytes are allowed.
        * 
        * Only use this function if you require compatibility with an existing
        * cryptosystem that uses non-standard tag lengths. All other users should use
        * NewGCM, which is more resistant to misuse.
    **/
    static public inline function newGCMWithTagSize(_cipher:Block, _tagSize:StdTypes.Int):stdgo.Tuple<AEAD, stdgo.Error> {
        final _tagSize = (_tagSize : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.cipher.Cipher_newgcmwithtagsize.newGCMWithTagSize(_cipher, _tagSize);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewOFB returns a Stream that encrypts or decrypts using the block cipher b
        * in output feedback mode. The initialization vector iv's length must be equal
        * to b's block size.
    **/
    static public inline function newOFB(_b:Block, _iv:Array<std.UInt>):Stream {
        final _iv = ([for (i in _iv) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.cipher.Cipher_newofb.newOFB(_b, _iv);
    }
}
