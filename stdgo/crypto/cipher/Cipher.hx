package stdgo.crypto.cipher;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef T_cbcEncAble = StructType & {
    public function newCBCEncrypter(_iv:Slice<GoByte>):BlockMode;
};
typedef T_cbcDecAble = StructType & {
    public function newCBCDecrypter(_iv:Slice<GoByte>):BlockMode;
};
typedef Block = StructType & {
    public function blockSize():GoInt;
    public function encrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void;
    public function decrypt(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void;
};
typedef Stream = StructType & {
    public function xorkeyStream(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void;
};
typedef BlockMode = StructType & {
    public function blockSize():GoInt;
    public function cryptBlocks(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void;
};
typedef T_ctrAble = StructType & {
    public function newCTR(_iv:Slice<GoByte>):Stream;
};
typedef AEAD = StructType & {
    public function nonceSize():GoInt;
    public function overhead():GoInt;
    public function seal(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte>;
    public function open(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; };
};
typedef T_gcmAble = StructType & {
    public function newGCM(_nonceSize:GoInt, _tagSize:GoInt):{ var _0 : AEAD; var _1 : Error; };
};
@:structInit class T_cbc {
    public var _b : Block = ((null : Block));
    public var _blockSize : GoInt = ((0 : GoInt));
    public var _iv : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _tmp : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?_b:Block, ?_blockSize:GoInt, ?_iv:Slice<GoUInt8>, ?_tmp:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_b) + " " + Go.string(_blockSize) + " " + Go.string(_iv) + " " + Go.string(_tmp) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_cbc(_b, _blockSize, _iv, _tmp);
    }
    public function __set__(__tmp__) {
        this._b = __tmp__._b;
        this._blockSize = __tmp__._blockSize;
        this._iv = __tmp__._iv;
        this._tmp = __tmp__._tmp;
        return this;
    }
}
@:named @:structInit class T_cbcEncrypter extends T_cbc {
    public function setIV(_iv:Slice<GoByte>):Void {
        var _x = new Pointer(() -> new T_cbcEncrypter(this.__t__), __tmp__ -> new T_cbcEncrypter(this.__t__ = __tmp__.__t__));
        if (_iv.length != _x.value._iv.length) {
            throw "cipher: incorrect length IV";
        };
        Go.copy(_x.value._iv, _iv);
    }
    public function cryptBlocks(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _x = new Pointer(() -> new T_cbcEncrypter(this.__t__), __tmp__ -> new T_cbcEncrypter(this.__t__ = __tmp__.__t__));
        if (_src.length % _x.value._blockSize != ((0 : GoInt))) {
            throw "crypto/cipher: input not full blocks";
        };
        if (_dst.length < _src.length) {
            throw "crypto/cipher: output smaller than input";
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(_dst.__slice__(0, _src.length), _src)) {
            throw "crypto/cipher: invalid buffer overlap";
        };
        var _iv:Slice<GoUInt8> = _x.value._iv;
        while (_src.length > ((0 : GoInt))) {
            _xorBytes(_dst.__slice__(0, _x.value._blockSize), _src.__slice__(0, _x.value._blockSize), _iv);
            _x.value._b.encrypt(_dst.__slice__(0, _x.value._blockSize), _dst.__slice__(0, _x.value._blockSize));
            _iv = _dst.__slice__(0, _x.value._blockSize);
            _src = _src.__slice__(_x.value._blockSize);
            _dst = _dst.__slice__(_x.value._blockSize);
        };
        Go.copy(_x.value._iv, _iv);
    }
    public function blockSize():GoInt {
        var _x = new Pointer(() -> new T_cbcEncrypter(this.__t__), __tmp__ -> new T_cbcEncrypter(this.__t__ = __tmp__.__t__));
        return _x.value._blockSize;
    }
    public function new(?_b, ?_blockSize, ?_iv, ?_tmp) super(_b, _blockSize, _iv, _tmp);
    public override function __copy__() return new T_cbcEncrypter(_b, _blockSize, _iv, _tmp);
}
@:named @:structInit class T_cbcDecrypter extends T_cbc {
    public function setIV(_iv:Slice<GoByte>):Void {
        var _x = new Pointer(() -> new T_cbcDecrypter(this.__t__), __tmp__ -> new T_cbcDecrypter(this.__t__ = __tmp__.__t__));
        if (_iv.length != _x.value._iv.length) {
            throw "cipher: incorrect length IV";
        };
        Go.copy(_x.value._iv, _iv);
    }
    public function cryptBlocks(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _x = new Pointer(() -> new T_cbcDecrypter(this.__t__), __tmp__ -> new T_cbcDecrypter(this.__t__ = __tmp__.__t__));
        if (_src.length % _x.value._blockSize != ((0 : GoInt))) {
            throw "crypto/cipher: input not full blocks";
        };
        if (_dst.length < _src.length) {
            throw "crypto/cipher: output smaller than input";
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(_dst.__slice__(0, _src.length), _src)) {
            throw "crypto/cipher: invalid buffer overlap";
        };
        if (_src.length == ((0 : GoInt))) {
            return;
        };
        var _end:GoInt = _src.length;
        var _start:GoInt = _end - _x.value._blockSize;
        var _prev:GoInt = _start - _x.value._blockSize;
        Go.copy(_x.value._tmp, _src.__slice__(_start, _end));
        while (_start > ((0 : GoInt))) {
            _x.value._b.decrypt(_dst.__slice__(_start, _end), _src.__slice__(_start, _end));
            _xorBytes(_dst.__slice__(_start, _end), _dst.__slice__(_start, _end), _src.__slice__(_prev, _start));
            _end = _start;
            _start = _prev;
            _prev = _prev - (_x.value._blockSize);
        };
        _x.value._b.decrypt(_dst.__slice__(_start, _end), _src.__slice__(_start, _end));
        _xorBytes(_dst.__slice__(_start, _end), _dst.__slice__(_start, _end), _x.value._iv);
        {
            final __tmp__0 = _x.value._tmp;
            final __tmp__1 = _x.value._iv;
            _x.value._iv = __tmp__0;
            _x.value._tmp = __tmp__1;
        };
    }
    public function blockSize():GoInt {
        var _x = new Pointer(() -> new T_cbcDecrypter(this.__t__), __tmp__ -> new T_cbcDecrypter(this.__t__ = __tmp__.__t__));
        return _x.value._blockSize;
    }
    public function new(?_b, ?_blockSize, ?_iv, ?_tmp) super(_b, _blockSize, _iv, _tmp);
    public override function __copy__() return new T_cbcDecrypter(_b, _blockSize, _iv, _tmp);
}
@:structInit class T_cfb {
    public function xorkeyStream(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_dst.length < _src.length) {
            throw "crypto/cipher: output smaller than input";
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(_dst.__slice__(0, _src.length), _src)) {
            throw "crypto/cipher: invalid buffer overlap";
        };
        while (_src.length > ((0 : GoInt))) {
            if (_x.value._outUsed == _x.value._out.length) {
                _x.value._b.encrypt(_x.value._out, _x.value._next);
                _x.value._outUsed = ((0 : GoInt));
            };
            if (_x.value._decrypt) {
                Go.copy(_x.value._next.__slice__(_x.value._outUsed), _src);
            };
            var _n:GoInt = _xorBytes(_dst, _src, _x.value._out.__slice__(_x.value._outUsed));
            if (!_x.value._decrypt) {
                Go.copy(_x.value._next.__slice__(_x.value._outUsed), _dst);
            };
            _dst = _dst.__slice__(_n);
            _src = _src.__slice__(_n);
            _x.value._outUsed = _x.value._outUsed + (_n);
        };
    }
    public var _b : Block = ((null : Block));
    public var _next : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _out : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _outUsed : GoInt = ((0 : GoInt));
    public var _decrypt : Bool = false;
    public function new(?_b:Block, ?_next:Slice<GoUInt8>, ?_out:Slice<GoUInt8>, ?_outUsed:GoInt, ?_decrypt:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_b) + " " + Go.string(_next) + " " + Go.string(_out) + " " + Go.string(_outUsed) + " " + Go.string(_decrypt) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_cfb(_b, _next, _out, _outUsed, _decrypt);
    }
    public function __set__(__tmp__) {
        this._b = __tmp__._b;
        this._next = __tmp__._next;
        this._out = __tmp__._out;
        this._outUsed = __tmp__._outUsed;
        this._decrypt = __tmp__._decrypt;
        return this;
    }
}
@:structInit class T_ctr {
    public function xorkeyStream(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_dst.length < _src.length) {
            throw "crypto/cipher: output smaller than input";
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(_dst.__slice__(0, _src.length), _src)) {
            throw "crypto/cipher: invalid buffer overlap";
        };
        while (_src.length > ((0 : GoInt))) {
            if (_x.value._outUsed >= _x.value._out.length - _x.value._b.blockSize()) {
                _x.value._refill();
            };
            var _n:GoInt = _xorBytes(_dst, _src, _x.value._out.__slice__(_x.value._outUsed));
            _dst = _dst.__slice__(_n);
            _src = _src.__slice__(_n);
            _x.value._outUsed = _x.value._outUsed + (_n);
        };
    }
    public function _refill():Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _remain:GoInt = _x.value._out.length - _x.value._outUsed;
        Go.copy(_x.value._out, _x.value._out.__slice__(_x.value._outUsed));
        _x.value._out = _x.value._out.__slice__(0, _x.value._out.cap());
        var _bs:GoInt = _x.value._b.blockSize();
        while (_remain <= _x.value._out.length - _bs) {
            _x.value._b.encrypt(_x.value._out.__slice__(_remain), _x.value._ctr);
            _remain = _remain + (_bs);
            {
                var _i:GoInt = _x.value._ctr.length - ((1 : GoInt));
                Go.cfor(_i >= ((0 : GoInt)), _i--, {
                    _x.value._ctr[_i]++;
                    if (_x.value._ctr[_i] != ((0 : GoUInt8))) {
                        break;
                    };
                });
            };
        };
        _x.value._out = _x.value._out.__slice__(0, _remain);
        _x.value._outUsed = ((0 : GoInt));
    }
    public var _b : Block = ((null : Block));
    public var _ctr : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _out : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _outUsed : GoInt = ((0 : GoInt));
    public function new(?_b:Block, ?_ctr:Slice<GoUInt8>, ?_out:Slice<GoUInt8>, ?_outUsed:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_b) + " " + Go.string(_ctr) + " " + Go.string(_out) + " " + Go.string(_outUsed) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ctr(_b, _ctr, _out, _outUsed);
    }
    public function __set__(__tmp__) {
        this._b = __tmp__._b;
        this._ctr = __tmp__._ctr;
        this._out = __tmp__._out;
        this._outUsed = __tmp__._outUsed;
        return this;
    }
}
@:structInit class T_gcmFieldElement {
    public var _low : GoUInt64 = ((0 : GoUInt64));
    public var _high : GoUInt64 = ((0 : GoUInt64));
    public function new(?_low:GoUInt64, ?_high:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_low) + " " + Go.string(_high) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_gcmFieldElement(_low, _high);
    }
    public function __set__(__tmp__) {
        this._low = __tmp__._low;
        this._high = __tmp__._high;
        return this;
    }
}
@:structInit class T_gcm {
    public function _auth(_out:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>, _tagMask:Pointer<GoArray<GoByte>>):Void {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _y:T_gcmFieldElement = new T_gcmFieldElement();
        _g.value._update(Go.pointer(_y), _additionalData);
        _g.value._update(Go.pointer(_y), _ciphertext);
        _y._low = _y._low ^ (((_additionalData.length : GoUInt64)) * ((8 : GoUInt64)));
        _y._high = _y._high ^ (((_ciphertext.length : GoUInt64)) * ((8 : GoUInt64)));
        _g.value._mul(Go.pointer(_y));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_out, _y._low);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_out.__slice__(((8 : GoInt))), _y._high);
        _xorWords(_out, _out, _tagMask.value.__slice__(0));
    }
    public function _deriveCounter(_counter:Pointer<GoArray<GoByte>>, _nonce:Slice<GoByte>):Void {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_nonce.length == _gcmStandardNonceSize) {
            Go.copy(_counter.value.__slice__(0), _nonce);
            _counter.value[_gcmBlockSize - ((1 : GoUnTypedInt))] = ((1 : GoUInt8));
        } else {
            var _y:T_gcmFieldElement = new T_gcmFieldElement();
            _g.value._update(Go.pointer(_y), _nonce);
            _y._high = _y._high ^ (((_nonce.length : GoUInt64)) * ((8 : GoUInt64)));
            _g.value._mul(Go.pointer(_y));
            stdgo.encoding.binary.Binary.bigEndian.putUint64(_counter.value.__slice__(0, ((8 : GoInt))), _y._low);
            stdgo.encoding.binary.Binary.bigEndian.putUint64(_counter.value.__slice__(((8 : GoInt))), _y._high);
        };
    }
    public function _counterCrypt(_out:Slice<GoByte>, _in:Slice<GoByte>, _counter:Pointer<GoArray<GoByte>>):Void {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _mask:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        while (_in.length >= _gcmBlockSize) {
            _g.value._cipher.encrypt(_mask.__slice__(0), _counter.value.__slice__(0));
            _gcmInc32(_counter);
            _xorWords(_out, _in, _mask.__slice__(0));
            _out = _out.__slice__(_gcmBlockSize);
            _in = _in.__slice__(_gcmBlockSize);
        };
        if (_in.length > ((0 : GoInt))) {
            _g.value._cipher.encrypt(_mask.__slice__(0), _counter.value.__slice__(0));
            _gcmInc32(_counter);
            _xorBytes(_out, _in, _mask.__slice__(0));
        };
    }
    public function _update(_y:Pointer<T_gcmFieldElement>, _data:Slice<GoByte>):Void {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _fullBlocks:GoInt = (((_data.length >> ((4 : GoUnTypedInt)))) << ((4 : GoUnTypedInt)));
        _g.value._updateBlocks(_y, _data.__slice__(0, _fullBlocks));
        if (_data.length != _fullBlocks) {
            var _partialBlock:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
            Go.copy(_partialBlock.__slice__(0), _data.__slice__(_fullBlocks));
            _g.value._updateBlocks(_y, _partialBlock.__slice__(0));
        };
    }
    public function _updateBlocks(_y:Pointer<T_gcmFieldElement>, _blocks:Slice<GoByte>):Void {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (_blocks.length > ((0 : GoInt))) {
            _y.value._low = _y.value._low ^ (stdgo.encoding.binary.Binary.bigEndian.uint64(_blocks));
            _y.value._high = _y.value._high ^ (stdgo.encoding.binary.Binary.bigEndian.uint64(_blocks.__slice__(((8 : GoInt)))));
            _g.value._mul(_y);
            _blocks = _blocks.__slice__(_gcmBlockSize);
        };
    }
    public function _mul(_y:Pointer<T_gcmFieldElement>):Void {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _z:T_gcmFieldElement = new T_gcmFieldElement();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((2 : GoInt)), _i++, {
                var _word:GoUInt64 = _y.value._high;
                if (_i == ((1 : GoInt))) {
                    _word = _y.value._low;
                };
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((64 : GoInt)), _j = _j + (((4 : GoInt))), {
                        var _msw:GoUInt64 = _z._high & ((15 : GoUInt64));
                        _z._high = (_z._high >> (((4 : GoUnTypedInt))));
                        _z._high = _z._high | ((_z._low << ((60 : GoUnTypedInt))));
                        _z._low = (_z._low >> (((4 : GoUnTypedInt))));
                        _z._low = _z._low ^ ((((_gcmReductionTable[_msw] : GoUInt64)) << ((48 : GoUnTypedInt))));
                        var _t:Pointer<T_gcmFieldElement> = Go.pointer(_g.value._productTable[_word & ((15 : GoUInt64))]);
                        _z._low = _z._low ^ (_t.value._low);
                        _z._high = _z._high ^ (_t.value._high);
                        _word = (_word >> (((4 : GoUnTypedInt))));
                    });
                };
            });
        };
        _y.value = _z.__copy__();
    }
    public function open(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _data:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_nonce.length != _g.value._nonceSize) {
            throw "crypto/cipher: incorrect nonce length given to GCM";
        };
        if (_g.value._tagSize < _gcmMinimumTagSize) {
            throw "crypto/cipher: incorrect GCM tag size";
        };
        if (_ciphertext.length < _g.value._tagSize) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errOpen };
        };
        if (((_ciphertext.length : GoUInt64)) > (((((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt)))) - ((2 : GoUnTypedInt))) * ((_g.value._cipher.blockSize() : GoUInt64)) + ((_g.value._tagSize : GoUInt64))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errOpen };
        };
        var _tag:Slice<GoUInt8> = _ciphertext.__slice__(_ciphertext.length - _g.value._tagSize);
        _ciphertext = _ciphertext.__slice__(0, _ciphertext.length - _g.value._tagSize);
        var _counter:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]), _tagMask:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _g.value._deriveCounter(Go.pointer(_counter), _nonce);
        _g.value._cipher.encrypt(_tagMask.__slice__(0), _counter.__slice__(0));
        _gcmInc32(Go.pointer(_counter));
        var _expectedTag:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _g.value._auth(_expectedTag.__slice__(0), _ciphertext, _data, Go.pointer(_tagMask));
        var __tmp__ = _sliceForAppend(_dst, _ciphertext.length), _ret:Slice<GoUInt8> = __tmp__._0, _out:Slice<GoUInt8> = __tmp__._1;
        if (crypto.internal.subtle.Subtle.inexactOverlap(_out, _ciphertext)) {
            throw "crypto/cipher: invalid buffer overlap";
        };
        if (crypto.internal.subtle.Subtle.constantTimeCompare(_expectedTag.__slice__(0, _g.value._tagSize), _tag) != ((1 : GoInt))) {
            for (_i => _ in _out) {
                _out[_i] = ((0 : GoUInt8));
            };
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errOpen };
        };
        _g.value._counterCrypt(_out, _ciphertext, Go.pointer(_counter));
        return { _0 : _ret, _1 : ((null : stdgo.Error)) };
    }
    public function seal(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _data:Slice<GoByte>):Slice<GoByte> {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_nonce.length != _g.value._nonceSize) {
            throw "crypto/cipher: incorrect nonce length given to GCM";
        };
        if (((_plaintext.length : GoUInt64)) > (((((1 : GoUnTypedInt)) << ((32 : GoUnTypedInt)))) - ((2 : GoUnTypedInt))) * ((_g.value._cipher.blockSize() : GoUInt64))) {
            throw "crypto/cipher: message too large for GCM";
        };
        var __tmp__ = _sliceForAppend(_dst, _plaintext.length + _g.value._tagSize), _ret:Slice<GoUInt8> = __tmp__._0, _out:Slice<GoUInt8> = __tmp__._1;
        if (crypto.internal.subtle.Subtle.inexactOverlap(_out, _plaintext)) {
            throw "crypto/cipher: invalid buffer overlap";
        };
        var _counter:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]), _tagMask:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _g.value._deriveCounter(Go.pointer(_counter), _nonce);
        _g.value._cipher.encrypt(_tagMask.__slice__(0), _counter.__slice__(0));
        _gcmInc32(Go.pointer(_counter));
        _g.value._counterCrypt(_out, _plaintext, Go.pointer(_counter));
        var _tag:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _g.value._auth(_tag.__slice__(0), _out.__slice__(0, _plaintext.length), _data, Go.pointer(_tagMask));
        Go.copy(_out.__slice__(_plaintext.length), _tag.__slice__(0));
        return _ret;
    }
    public function overhead():GoInt {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _g.value._tagSize;
    }
    public function nonceSize():GoInt {
        var _g = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _g.value._nonceSize;
    }
    public var _cipher : Block = ((null : Block));
    public var _nonceSize : GoInt = ((0 : GoInt));
    public var _tagSize : GoInt = ((0 : GoInt));
    public var _productTable : GoArray<T_gcmFieldElement> = new GoArray<T_gcmFieldElement>(...[for (i in 0 ... 16) new T_gcmFieldElement()]);
    public function new(?_cipher:Block, ?_nonceSize:GoInt, ?_tagSize:GoInt, ?_productTable:GoArray<T_gcmFieldElement>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_cipher) + " " + Go.string(_nonceSize) + " " + Go.string(_tagSize) + " " + Go.string(_productTable) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_gcm(_cipher, _nonceSize, _tagSize, _productTable);
    }
    public function __set__(__tmp__) {
        this._cipher = __tmp__._cipher;
        this._nonceSize = __tmp__._nonceSize;
        this._tagSize = __tmp__._tagSize;
        this._productTable = __tmp__._productTable;
        return this;
    }
}
@:structInit class StreamReader {
    public function read(_dst:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _r = this.__copy__();
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _r.r.read(_dst);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _r.s.xorkeyStream(_dst.__slice__(0, _n), _dst.__slice__(0, _n));
        return { _0 : _n, _1 : _err };
    }
    public var s : Stream = ((null : Stream));
    public var r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?s:Stream, ?r:stdgo.io.Io.Reader) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(s) + " " + Go.string(r) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new StreamReader(s, r);
    }
    public function __set__(__tmp__) {
        this.s = __tmp__.s;
        this.r = __tmp__.r;
        return this;
    }
}
@:structInit class StreamWriter {
    public function close():Error {
        var _w = this.__copy__();
        {
            var __tmp__ = try {
                { value : ((_w.w.__underlying__().value : stdgo.io.Io.Closer)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.Closer)), ok : false };
            }, _c = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _c.close();
            };
        };
        return ((null : stdgo.Error));
    }
    public function write(_src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _w = this.__copy__();
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        var _c:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_src.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _w.s.xorkeyStream(_c, _src);
        {
            var __tmp__ = _w.w.write(_c);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != _src.length && _err == null) {
            _err = stdgo.io.Io.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
    public var s : Stream = ((null : Stream));
    public var w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var err : stdgo.Error = ((null : stdgo.Error));
    public function new(?s:Stream, ?w:stdgo.io.Io.Writer, ?err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(s) + " " + Go.string(w) + " " + Go.string(err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new StreamWriter(s, w, err);
    }
    public function __set__(__tmp__) {
        this.s = __tmp__.s;
        this.w = __tmp__.w;
        this.err = __tmp__.err;
        return this;
    }
}
@:structInit class T_ofb {
    public function xorkeyStream(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_dst.length < _src.length) {
            throw "crypto/cipher: output smaller than input";
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(_dst.__slice__(0, _src.length), _src)) {
            throw "crypto/cipher: invalid buffer overlap";
        };
        while (_src.length > ((0 : GoInt))) {
            if (_x.value._outUsed >= _x.value._out.length - _x.value._b.blockSize()) {
                _x.value._refill();
            };
            var _n:GoInt = _xorBytes(_dst, _src, _x.value._out.__slice__(_x.value._outUsed));
            _dst = _dst.__slice__(_n);
            _src = _src.__slice__(_n);
            _x.value._outUsed = _x.value._outUsed + (_n);
        };
    }
    public function _refill():Void {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _bs:GoInt = _x.value._b.blockSize();
        var _remain:GoInt = _x.value._out.length - _x.value._outUsed;
        if (_remain > _x.value._outUsed) {
            return;
        };
        Go.copy(_x.value._out, _x.value._out.__slice__(_x.value._outUsed));
        _x.value._out = _x.value._out.__slice__(0, _x.value._out.cap());
        while (_remain < _x.value._out.length - _bs) {
            _x.value._b.encrypt(_x.value._cipher, _x.value._cipher);
            Go.copy(_x.value._out.__slice__(_remain), _x.value._cipher);
            _remain = _remain + (_bs);
        };
        _x.value._out = _x.value._out.__slice__(0, _remain);
        _x.value._outUsed = ((0 : GoInt));
    }
    public var _b : Block = ((null : Block));
    public var _cipher : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _out : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _outUsed : GoInt = ((0 : GoInt));
    public function new(?_b:Block, ?_cipher:Slice<GoUInt8>, ?_out:Slice<GoUInt8>, ?_outUsed:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_b) + " " + Go.string(_cipher) + " " + Go.string(_out) + " " + Go.string(_outUsed) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ofb(_b, _cipher, _out, _outUsed);
    }
    public function __set__(__tmp__) {
        this._b = __tmp__._b;
        this._cipher = __tmp__._cipher;
        this._out = __tmp__._out;
        this._outUsed = __tmp__._outUsed;
        return this;
    }
}
final _wordSize : GoInt = ((stdgo.unsafe.Unsafe.sizeof(Go.toInterface(((((0 : GoUIntptr)) : GoUIntptr)))) : GoInt));
var _gcmReductionTable : Slice<GoUInt16> = new Slice<GoUInt16>(
((0 : GoUInt16)),
((7200 : GoUInt16)),
((14400 : GoUInt16)),
((9312 : GoUInt16)),
((28800 : GoUInt16)),
((27808 : GoUInt16)),
((18624 : GoUInt16)),
((21728 : GoUInt16)),
((57600 : GoUInt16)),
((64800 : GoUInt16)),
((55616 : GoUInt16)),
((50528 : GoUInt16)),
((37248 : GoUInt16)),
((36256 : GoUInt16)),
((43456 : GoUInt16)),
((46560 : GoUInt16)));
final _gcmStandardNonceSize : GoInt64 = ((12 : GoUnTypedInt));
final _supportsUnaligned : Bool = stdgo.runtime.Runtime.goarch == (("386" : GoString)) || stdgo.runtime.Runtime.goarch == (("ppc64" : GoString)) || stdgo.runtime.Runtime.goarch == (("ppc64le" : GoString)) || stdgo.runtime.Runtime.goarch == (("s390x" : GoString));
final _gcmBlockSize : GoInt64 = ((16 : GoUnTypedInt));
final _streamBufferSize : GoInt64 = ((512 : GoUnTypedInt));
final _gcmMinimumTagSize : GoInt64 = ((12 : GoUnTypedInt));
var _errOpen : stdgo.Error = stdgo.errors.Errors.new_("cipher: message authentication failed");
final _gcmTagSize : GoInt64 = ((16 : GoUnTypedInt));
function _newCBC(_b:Block, _iv:Slice<GoByte>):Pointer<T_cbc> {
        return Go.pointer((({ _b : _b, _blockSize : _b.blockSize(), _iv : _dup(_iv), _tmp : new Slice<GoUInt8>(...[for (i in 0 ... ((_b.blockSize() : GoInt)).toBasic()) ((0 : GoUInt8))]) } : T_cbc)));
    }
/**
    // NewCBCEncrypter returns a BlockMode which encrypts in cipher block chaining
    // mode, using the given Block. The length of iv must be the same as the
    // Block's block size.
**/
function newCBCEncrypter(_b:Block, _iv:Slice<GoByte>):BlockMode {
        if (_iv.length != _b.blockSize()) {
            throw "cipher.NewCBCEncrypter: IV length must equal block size";
        };
        {
            var __tmp__ = try {
                { value : ((_b.__underlying__().value : T_cbcEncAble)), ok : true };
            } catch(_) {
                { value : ((null : T_cbcEncAble)), ok : false };
            }, _cbc = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _cbc.newCBCEncrypter(_iv);
            };
        };
        return {
            var p = new Pointer<T_cbcEncrypter>(() -> new T_cbcEncrypter(_newCBC(_b, _iv).value._b, _newCBC(_b, _iv).value._blockSize, _newCBC(_b, _iv).value._iv, _newCBC(_b, _iv).value._tmp), null, false, _newCBC(_b, _iv));
            p.convert = v -> new T_cbc(v._b, v._blockSize, v._iv, v._tmp);
            p;
        }.value;
    }
/**
    // NewCBCDecrypter returns a BlockMode which decrypts in cipher block chaining
    // mode, using the given Block. The length of iv must be the same as the
    // Block's block size and must match the iv used to encrypt the data.
**/
function newCBCDecrypter(_b:Block, _iv:Slice<GoByte>):BlockMode {
        if (_iv.length != _b.blockSize()) {
            throw "cipher.NewCBCDecrypter: IV length must equal block size";
        };
        {
            var __tmp__ = try {
                { value : ((_b.__underlying__().value : T_cbcDecAble)), ok : true };
            } catch(_) {
                { value : ((null : T_cbcDecAble)), ok : false };
            }, _cbc = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _cbc.newCBCDecrypter(_iv);
            };
        };
        return {
            var p = new Pointer<T_cbcDecrypter>(() -> new T_cbcDecrypter(_newCBC(_b, _iv).value._b, _newCBC(_b, _iv).value._blockSize, _newCBC(_b, _iv).value._iv, _newCBC(_b, _iv).value._tmp), null, false, _newCBC(_b, _iv));
            p.convert = v -> new T_cbc(v._b, v._blockSize, v._iv, v._tmp);
            p;
        }.value;
    }
/**
    // NewCFBEncrypter returns a Stream which encrypts with cipher feedback mode,
    // using the given Block. The iv must be the same length as the Block's block
    // size.
**/
function newCFBEncrypter(_block:Block, _iv:Slice<GoByte>):Stream {
        return _newCFB(_block, _iv, false);
    }
/**
    // NewCFBDecrypter returns a Stream which decrypts with cipher feedback mode,
    // using the given Block. The iv must be the same length as the Block's block
    // size.
**/
function newCFBDecrypter(_block:Block, _iv:Slice<GoByte>):Stream {
        return _newCFB(_block, _iv, true);
    }
function _newCFB(_block:Block, _iv:Slice<GoByte>, _decrypt:Bool):Stream {
        var _blockSize:GoInt = _block.blockSize();
        if (_iv.length != _blockSize) {
            throw "cipher.newCFB: IV length must equal block size";
        };
        var _x:Pointer<T_cfb> = Go.pointer((({ _b : _block, _out : new Slice<GoUInt8>(...[for (i in 0 ... ((_blockSize : GoInt)).toBasic()) ((0 : GoUInt8))]), _next : new Slice<GoUInt8>(...[for (i in 0 ... ((_blockSize : GoInt)).toBasic()) ((0 : GoUInt8))]), _outUsed : _blockSize, _decrypt : _decrypt } : T_cfb)));
        Go.copy(_x.value._next, _iv);
        return _x.value;
    }
function _dup(_p:Slice<GoByte>):Slice<GoByte> {
        var _q:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_p.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_q, _p);
        return _q;
    }
/**
    // NewCTR returns a Stream which encrypts/decrypts using the given Block in
    // counter mode. The length of iv must be the same as the Block's block size.
**/
function newCTR(_block:Block, _iv:Slice<GoByte>):Stream {
        {
            var __tmp__ = try {
                { value : ((_block.__underlying__().value : T_ctrAble)), ok : true };
            } catch(_) {
                { value : ((null : T_ctrAble)), ok : false };
            }, _ctr = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _ctr.newCTR(_iv);
            };
        };
        if (_iv.length != _block.blockSize()) {
            throw "cipher.NewCTR: IV length must equal block size";
        };
        var _bufSize:GoInt = _streamBufferSize;
        if (_bufSize < _block.blockSize()) {
            _bufSize = _block.blockSize();
        };
        return Go.pointer((({ _b : _block, _ctr : _dup(_iv), _out : new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_bufSize : GoInt)).toBasic()), _outUsed : ((0 : GoInt)) } : T_ctr))).value;
    }
/**
    // NewGCM returns the given 128-bit, block cipher wrapped in Galois Counter Mode
    // with the standard nonce length.
    //
    // In general, the GHASH operation performed by this implementation of GCM is not constant-time.
    // An exception is when the underlying Block was created by aes.NewCipher
    // on systems with hardware support for AES. See the crypto/aes package documentation for details.
**/
function newGCM(_cipher:Block):{ var _0 : AEAD; var _1 : Error; } {
        return _newGCMWithNonceAndTagSize(_cipher, _gcmStandardNonceSize, _gcmTagSize);
    }
/**
    // NewGCMWithNonceSize returns the given 128-bit, block cipher wrapped in Galois
    // Counter Mode, which accepts nonces of the given length. The length must not
    // be zero.
    //
    // Only use this function if you require compatibility with an existing
    // cryptosystem that uses non-standard nonce lengths. All other users should use
    // NewGCM, which is faster and more resistant to misuse.
**/
function newGCMWithNonceSize(_cipher:Block, _size:GoInt):{ var _0 : AEAD; var _1 : Error; } {
        return _newGCMWithNonceAndTagSize(_cipher, _size, _gcmTagSize);
    }
/**
    // NewGCMWithTagSize returns the given 128-bit, block cipher wrapped in Galois
    // Counter Mode, which generates tags with the given length.
    //
    // Tag sizes between 12 and 16 bytes are allowed.
    //
    // Only use this function if you require compatibility with an existing
    // cryptosystem that uses non-standard tag lengths. All other users should use
    // NewGCM, which is more resistant to misuse.
**/
function newGCMWithTagSize(_cipher:Block, _tagSize:GoInt):{ var _0 : AEAD; var _1 : Error; } {
        return _newGCMWithNonceAndTagSize(_cipher, _gcmStandardNonceSize, _tagSize);
    }
function _newGCMWithNonceAndTagSize(_cipher:Block, _nonceSize:GoInt, _tagSize:GoInt):{ var _0 : AEAD; var _1 : Error; } {
        if (_tagSize < _gcmMinimumTagSize || _tagSize > _gcmBlockSize) {
            return { _0 : ((null : AEAD)), _1 : stdgo.errors.Errors.new_("cipher: incorrect tag size given to GCM") };
        };
        if (_nonceSize <= ((0 : GoInt))) {
            return { _0 : ((null : AEAD)), _1 : stdgo.errors.Errors.new_("cipher: the nonce can\'t have zero length, or the security of the key will be immediately compromised") };
        };
        {
            var __tmp__ = try {
                { value : ((_cipher.__underlying__().value : T_gcmAble)), ok : true };
            } catch(_) {
                { value : ((null : T_gcmAble)), ok : false };
            }, _cipher = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _cipher.newGCM(_nonceSize, _tagSize);
            };
        };
        if (_cipher.blockSize() != _gcmBlockSize) {
            return { _0 : ((null : AEAD)), _1 : stdgo.errors.Errors.new_("cipher: NewGCM requires 128-bit block cipher") };
        };
        var _key:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _cipher.encrypt(_key.__slice__(0), _key.__slice__(0));
        var _g:Pointer<T_gcm> = Go.pointer((({ _cipher : _cipher, _nonceSize : _nonceSize, _tagSize : _tagSize, _productTable : new GoArray<T_gcmFieldElement>(...[for (i in 0 ... 16) new T_gcmFieldElement()]) } : T_gcm)));
        var _x:T_gcmFieldElement = new T_gcmFieldElement(stdgo.encoding.binary.Binary.bigEndian.uint64(_key.__slice__(0, ((8 : GoInt)))), stdgo.encoding.binary.Binary.bigEndian.uint64(_key.__slice__(((8 : GoInt))))).__copy__();
        _g.value._productTable[_reverseBits(((1 : GoInt)))] = _x.__copy__();
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i = _i + (((2 : GoInt))), {
                _g.value._productTable[_reverseBits(_i)] = _gcmDouble(Go.pointer(_g.value._productTable[_reverseBits(_i / ((2 : GoInt)))])).__copy__();
                _g.value._productTable[_reverseBits(_i + ((1 : GoInt)))] = _gcmAdd(Go.pointer(_g.value._productTable[_reverseBits(_i)]), Go.pointer(_x)).__copy__();
            });
        };
        return { _0 : _g.value, _1 : ((null : stdgo.Error)) };
    }
/**
    // reverseBits reverses the order of the bits of 4-bit number in i.
**/
function _reverseBits(_i:GoInt):GoInt {
        _i = (((_i << ((2 : GoUnTypedInt)))) & ((12 : GoInt))) | (((_i >> ((2 : GoUnTypedInt)))) & ((3 : GoInt)));
        _i = (((_i << ((1 : GoUnTypedInt)))) & ((10 : GoInt))) | (((_i >> ((1 : GoUnTypedInt)))) & ((5 : GoInt)));
        return _i;
    }
/**
    // gcmAdd adds two elements of GF(2¹²⁸) and returns the sum.
**/
function _gcmAdd(_x:Pointer<T_gcmFieldElement>, _y:Pointer<T_gcmFieldElement>):T_gcmFieldElement {
        return new T_gcmFieldElement(_x.value._low ^ _y.value._low, _x.value._high ^ _y.value._high).__copy__();
    }
/**
    // gcmDouble returns the result of doubling an element of GF(2¹²⁸).
**/
function _gcmDouble(_x:Pointer<T_gcmFieldElement>):T_gcmFieldElement {
        var _double:T_gcmFieldElement = new T_gcmFieldElement();
        var _msbSet:Bool = _x.value._high & ((1 : GoUInt64)) == ((1 : GoUInt64));
        _double._high = (_x.value._high >> ((1 : GoUnTypedInt)));
        _double._high = _double._high | ((_x.value._low << ((63 : GoUnTypedInt))));
        _double._low = (_x.value._low >> ((1 : GoUnTypedInt)));
        if (_msbSet) {
            _double._low = _double._low ^ ((("16212958658533785600" : GoUInt64)));
        };
        return _double;
    }
/**
    // gcmInc32 treats the final four bytes of counterBlock as a big-endian value
    // and increments it.
**/
function _gcmInc32(_counterBlock:Pointer<GoArray<GoByte>>):Void {
        var _ctr:Slice<GoUInt8> = _counterBlock.value.__slice__(_counterBlock.length - ((4 : GoInt)));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_ctr, stdgo.encoding.binary.Binary.bigEndian.uint32(_ctr) + ((1 : GoUInt32)));
    }
/**
    // sliceForAppend takes a slice and a requested number of bytes. It returns a
    // slice with the contents of the given slice followed by that many bytes and a
    // second slice that aliases into it and contains only the extra bytes. If the
    // original slice has sufficient capacity then no allocation is performed.
**/
function _sliceForAppend(_in:Slice<GoByte>, _n:GoInt):{ var _0 : Slice<GoByte>; var _1 : Slice<GoByte>; } {
        var _head:Slice<GoByte> = new Slice<GoUInt8>().nil(), _tail:Slice<GoByte> = new Slice<GoUInt8>().nil();
        {
            var _total:GoInt = _in.length + _n;
            if (_in.cap() >= _total) {
                _head = _in.__slice__(0, _total);
            } else {
                _head = new Slice<GoUInt8>(...[for (i in 0 ... ((_total : GoInt)).toBasic()) ((0 : GoUInt8))]);
                Go.copy(_head, _in);
            };
        };
        _tail = _head.__slice__(_in.length);
        return { _0 : _head, _1 : _tail };
    }
/**
    // NewOFB returns a Stream that encrypts or decrypts using the block cipher b
    // in output feedback mode. The initialization vector iv's length must be equal
    // to b's block size.
**/
function newOFB(_b:Block, _iv:Slice<GoByte>):Stream {
        var _blockSize:GoInt = _b.blockSize();
        if (_iv.length != _blockSize) {
            throw "cipher.NewOFB: IV length must equal block size";
        };
        var _bufSize:GoInt = _streamBufferSize;
        if (_bufSize < _blockSize) {
            _bufSize = _blockSize;
        };
        var _x:Pointer<T_ofb> = Go.pointer((({ _b : _b, _cipher : new Slice<GoUInt8>(...[for (i in 0 ... ((_blockSize : GoInt)).toBasic()) ((0 : GoUInt8))]), _out : new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_bufSize : GoInt)).toBasic()), _outUsed : ((0 : GoInt)) } : T_ofb)));
        Go.copy(_x.value._cipher, _iv);
        return _x.value;
    }
/**
    // xorBytes xors the bytes in a and b. The destination should have enough
    // space, otherwise xorBytes will panic. Returns the number of bytes xor'd.
**/
function _xorBytes(_dst:Slice<GoByte>, _a:Slice<GoByte>, _b:Slice<GoByte>):GoInt {
        var _n:GoInt = _a.length;
        if (_b.length < _n) {
            _n = _b.length;
        };
        if (_n == ((0 : GoInt))) {
            return ((0 : GoInt));
        };
        if (_supportsUnaligned) {
            _fastXORBytes(_dst, _a, _b, _n);
        } else {
            _safeXORBytes(_dst, _a, _b, _n);
        };
        return _n;
    }
/**
    // fastXORBytes xors in bulk. It only works on architectures that
    // support unaligned read/writes.
    // n needs to be smaller or equal than the length of a and b.
**/
function _fastXORBytes(_dst:Slice<GoByte>, _a:Slice<GoByte>, _b:Slice<GoByte>, _n:GoInt):Void {
        _dst[_n - ((1 : GoInt))];
        var _w:GoInt = _n / _wordSize;
        if (_w > ((0 : GoInt))) {
            var _dw:Slice<GoUIntptr> = ((((Go.pointer(_dst) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<Slice<GoUIntptr>>)).value;
            var _aw:Slice<GoUIntptr> = ((((Go.pointer(_a) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<Slice<GoUIntptr>>)).value;
            var _bw:Slice<GoUIntptr> = ((((Go.pointer(_b) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<Slice<GoUIntptr>>)).value;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _w, _i++, {
                    _dw[_i] = _aw[_i] ^ _bw[_i];
                });
            };
        };
        {
            var _i:GoInt = (_n - _n % _wordSize);
            Go.cfor(_i < _n, _i++, {
                _dst[_i] = _a[_i] ^ _b[_i];
            });
        };
    }
/**
    // n needs to be smaller or equal than the length of a and b.
**/
function _safeXORBytes(_dst:Slice<GoByte>, _a:Slice<GoByte>, _b:Slice<GoByte>, _n:GoInt):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _dst[_i] = _a[_i] ^ _b[_i];
            });
        };
    }
/**
    // fastXORWords XORs multiples of 4 or 8 bytes (depending on architecture.)
    // The arguments are assumed to be of equal length.
**/
function _fastXORWords(_dst:Slice<GoByte>, _a:Slice<GoByte>, _b:Slice<GoByte>):Void {
        var _dw:Slice<GoUIntptr> = ((((Go.pointer(_dst) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<Slice<GoUIntptr>>)).value;
        var _aw:Slice<GoUIntptr> = ((((Go.pointer(_a) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<Slice<GoUIntptr>>)).value;
        var _bw:Slice<GoUIntptr> = ((((Go.pointer(_b) : stdgo.unsafe.Unsafe.Pointer_)) : Pointer<Slice<GoUIntptr>>)).value;
        var _n:GoInt = _b.length / _wordSize;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _dw[_i] = _aw[_i] ^ _bw[_i];
            });
        };
    }
/**
    // fastXORWords XORs multiples of 4 or 8 bytes (depending on architecture.)
    // The slice arguments a and b are assumed to be of equal length.
**/
function _xorWords(_dst:Slice<GoByte>, _a:Slice<GoByte>, _b:Slice<GoByte>):Void {
        if (_supportsUnaligned) {
            _fastXORWords(_dst, _a, _b);
        } else {
            _safeXORBytes(_dst, _a, _b, _b.length);
        };
    }
class T_cbcEncrypter_extension_fields {
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function cryptBlocks(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void __tmp__.cryptBlocks(_dst, _src);
    public function setIV(__tmp__, _iv:Slice<GoByte>):Void __tmp__.setIV(_iv);
}
class T_cbcDecrypter_extension_fields {
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function cryptBlocks(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void __tmp__.cryptBlocks(_dst, _src);
    public function setIV(__tmp__, _iv:Slice<GoByte>):Void __tmp__.setIV(_iv);
}
class T_cfb_extension_fields {
    public function xorkeyStream(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void __tmp__.xorkeyStream(_dst, _src);
}
class T_ctr_extension_fields {
    public function _refill(__tmp__):Void __tmp__._refill();
    public function xorkeyStream(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void __tmp__.xorkeyStream(_dst, _src);
}
class T_gcm_extension_fields {
    public function nonceSize(__tmp__):GoInt return __tmp__.nonceSize();
    public function overhead(__tmp__):GoInt return __tmp__.overhead();
    public function seal(__tmp__, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _data:Slice<GoByte>):Slice<GoByte> return __tmp__.seal(_dst, _nonce, _plaintext, _data);
    public function open(__tmp__, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _data:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.open(_dst, _nonce, _ciphertext, _data);
    public function _mul(__tmp__, _y:Pointer<T_gcmFieldElement>):Void __tmp__._mul(_y);
    public function _updateBlocks(__tmp__, _y:Pointer<T_gcmFieldElement>, _blocks:Slice<GoByte>):Void __tmp__._updateBlocks(_y, _blocks);
    public function _update(__tmp__, _y:Pointer<T_gcmFieldElement>, _data:Slice<GoByte>):Void __tmp__._update(_y, _data);
    public function _counterCrypt(__tmp__, _out:Slice<GoByte>, _in:Slice<GoByte>, _counter:Pointer<GoArray<GoByte>>):Void __tmp__._counterCrypt(_out, _in, _counter);
    public function _deriveCounter(__tmp__, _counter:Pointer<GoArray<GoByte>>, _nonce:Slice<GoByte>):Void __tmp__._deriveCounter(_counter, _nonce);
    public function _auth(__tmp__, _out:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>, _tagMask:Pointer<GoArray<GoByte>>):Void __tmp__._auth(_out, _ciphertext, _additionalData, _tagMask);
}
class StreamReader_extension_fields {
    public function read(__tmp__, _dst:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_dst);
}
class StreamWriter_extension_fields {
    public function write(__tmp__, _src:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_src);
    public function close(__tmp__):Error return __tmp__.close();
}
class T_ofb_extension_fields {
    public function _refill(__tmp__):Void __tmp__._refill();
    public function xorkeyStream(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void __tmp__.xorkeyStream(_dst, _src);
}
