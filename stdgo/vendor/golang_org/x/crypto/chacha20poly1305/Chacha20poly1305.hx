package stdgo.vendor.golang_org.x.crypto.chacha20poly1305;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_chacha20poly1305 {
    public function _open(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._openGeneric(_dst, _nonce, _ciphertext, _additionalData);
    }
    public function _seal(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _c.value._sealGeneric(_dst, _nonce, _plaintext, _additionalData);
    }
    public function _openGeneric(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _tag:Slice<GoUInt8> = _ciphertext.__slice__(_ciphertext.length - ((16 : GoInt)));
        _ciphertext = _ciphertext.__slice__(0, _ciphertext.length - ((16 : GoInt)));
        var _polyKey:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        var __tmp__ = golang_org.x.crypto.chacha20.Chacha20.newUnauthenticatedCipher(_c.value._key.__slice__(0), _nonce), _s:Pointer<vendor.golang_org.x.crypto.chacha20.Chacha20.Cipher> = __tmp__._0, _:stdgo.Error = __tmp__._1;
        _s.value.xorkeyStream(_polyKey.__slice__(0), _polyKey.__slice__(0));
        _s.value.setCounter(((1 : GoUInt32)));
        var _p:Pointer<vendor.golang_org.x.crypto.poly1305.Poly1305.MAC> = golang_org.x.crypto.poly1305.Poly1305.new_(Go.pointer(_polyKey));
        _writeWithPadding(_p, _additionalData);
        _writeWithPadding(_p, _ciphertext);
        _writeUint64(_p, _additionalData.length);
        _writeUint64(_p, _ciphertext.length);
        var __tmp__ = _sliceForAppend(_dst, _ciphertext.length), _ret:Slice<GoUInt8> = __tmp__._0, _out:Slice<GoUInt8> = __tmp__._1;
        if (golang_org.x.crypto.internal.subtle.Subtle.inexactOverlap(_out, _ciphertext)) {
            throw "chacha20poly1305: invalid buffer overlap";
        };
        if (!_p.value.verify(_tag)) {
            {
                var _i;
                for (_obj in _out.keyValueIterator()) {
                    _i = _obj.key;
                    _out[_i] = ((0 : GoUInt8));
                };
            };
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errOpen };
        };
        _s.value.xorkeyStream(_out, _ciphertext);
        return { _0 : _ret, _1 : ((null : stdgo.Error)) };
    }
    public function _sealGeneric(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _sliceForAppend(_dst, _plaintext.length + golang_org.x.crypto.poly1305.Poly1305.tagSize), _ret:Slice<GoUInt8> = __tmp__._0, _out:Slice<GoUInt8> = __tmp__._1;
        var _ciphertext:Slice<GoUInt8> = _out.__slice__(0, _plaintext.length), _tag:Slice<GoUInt8> = _out.__slice__(_plaintext.length);
        if (golang_org.x.crypto.internal.subtle.Subtle.inexactOverlap(_out, _plaintext)) {
            throw "chacha20poly1305: invalid buffer overlap";
        };
        var _polyKey:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        var __tmp__ = golang_org.x.crypto.chacha20.Chacha20.newUnauthenticatedCipher(_c.value._key.__slice__(0), _nonce), _s:Pointer<vendor.golang_org.x.crypto.chacha20.Chacha20.Cipher> = __tmp__._0, _:stdgo.Error = __tmp__._1;
        _s.value.xorkeyStream(_polyKey.__slice__(0), _polyKey.__slice__(0));
        _s.value.setCounter(((1 : GoUInt32)));
        _s.value.xorkeyStream(_ciphertext, _plaintext);
        var _p:Pointer<vendor.golang_org.x.crypto.poly1305.Poly1305.MAC> = golang_org.x.crypto.poly1305.Poly1305.new_(Go.pointer(_polyKey));
        _writeWithPadding(_p, _additionalData);
        _writeWithPadding(_p, _ciphertext);
        _writeUint64(_p, _additionalData.length);
        _writeUint64(_p, _plaintext.length);
        _p.value.sum(_tag.__slice__(0, ((0 : GoInt))));
        return _ret;
    }
    public function open(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_nonce.length != Chacha20poly1305.nonceSize) {
            throw "chacha20poly1305: bad nonce length passed to Open";
        };
        if (_ciphertext.length < ((16 : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errOpen };
        };
        if (((_ciphertext.length : GoUInt64)) > ((((1 : GoUnTypedInt)) << ((38 : GoUnTypedInt)))) - ((48 : GoUnTypedInt))) {
            throw "chacha20poly1305: ciphertext too large";
        };
        return _c.value._open(_dst, _nonce, _ciphertext, _additionalData);
    }
    public function seal(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_nonce.length != Chacha20poly1305.nonceSize) {
            throw "chacha20poly1305: bad nonce length passed to Seal";
        };
        if (((_plaintext.length : GoUInt64)) > ((((1 : GoUnTypedInt)) << ((38 : GoUnTypedInt)))) - ((64 : GoUnTypedInt))) {
            throw "chacha20poly1305: plaintext too large";
        };
        return _c.value._seal(_dst, _nonce, _plaintext, _additionalData);
    }
    public function overhead():GoInt {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((16 : GoInt));
    }
    public function nonceSize():GoInt {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return Chacha20poly1305.nonceSize;
    }
    public var _key : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
    public function new(?_key:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_key) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_chacha20poly1305(_key);
    }
    public function __set__(__tmp__) {
        this._key = __tmp__._key;
        return this;
    }
}
@:structInit class T_xchacha20poly1305 {
    public function open(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_nonce.length != nonceSizeX) {
            throw "chacha20poly1305: bad nonce length passed to Open";
        };
        if (_ciphertext.length < ((16 : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _errOpen };
        };
        if (((_ciphertext.length : GoUInt64)) > ((((1 : GoUnTypedInt)) << ((38 : GoUnTypedInt)))) - ((48 : GoUnTypedInt))) {
            throw "chacha20poly1305: ciphertext too large";
        };
        var _c:Pointer<T_chacha20poly1305> = Go.pointer(new T_chacha20poly1305());
        var __tmp__ = golang_org.x.crypto.chacha20.Chacha20.hchaCha20(_x.value._key.__slice__(0), _nonce.__slice__(((0 : GoInt)), ((16 : GoInt)))), _hKey:Slice<GoUInt8> = __tmp__._0, _:stdgo.Error = __tmp__._1;
        Go.copy(_c.value._key.__slice__(0), _hKey);
        var _cNonce:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((Chacha20poly1305.nonceSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_cNonce.__slice__(((4 : GoInt)), ((12 : GoInt))), _nonce.__slice__(((16 : GoInt)), ((24 : GoInt))));
        return _c.value._open(_dst, _cNonce.__slice__(0), _ciphertext, _additionalData);
    }
    public function seal(_dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> {
        var _x = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_nonce.length != nonceSizeX) {
            throw "chacha20poly1305: bad nonce length passed to Seal";
        };
        if (((_plaintext.length : GoUInt64)) > ((((1 : GoUnTypedInt)) << ((38 : GoUnTypedInt)))) - ((64 : GoUnTypedInt))) {
            throw "chacha20poly1305: plaintext too large";
        };
        var _c:Pointer<T_chacha20poly1305> = Go.pointer(new T_chacha20poly1305());
        var __tmp__ = golang_org.x.crypto.chacha20.Chacha20.hchaCha20(_x.value._key.__slice__(0), _nonce.__slice__(((0 : GoInt)), ((16 : GoInt)))), _hKey:Slice<GoUInt8> = __tmp__._0, _:stdgo.Error = __tmp__._1;
        Go.copy(_c.value._key.__slice__(0), _hKey);
        var _cNonce:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((Chacha20poly1305.nonceSize : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_cNonce.__slice__(((4 : GoInt)), ((12 : GoInt))), _nonce.__slice__(((16 : GoInt)), ((24 : GoInt))));
        return _c.value._seal(_dst, _cNonce.__slice__(0), _plaintext, _additionalData);
    }
    public function overhead():GoInt {
        return ((16 : GoInt));
    }
    public function nonceSize():GoInt {
        return nonceSizeX;
    }
    public var _key : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
    public function new(?_key:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_key) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_xchacha20poly1305(_key);
    }
    public function __set__(__tmp__) {
        this._key = __tmp__._key;
        return this;
    }
}
final keySize : GoInt64 = ((32 : GoUnTypedInt));
final nonceSize : GoInt64 = ((12 : GoUnTypedInt));
final nonceSizeX : GoInt64 = ((24 : GoUnTypedInt));
var _errOpen : stdgo.Error = stdgo.errors.Errors.new_("chacha20poly1305: message authentication failed");
/**
    // New returns a ChaCha20-Poly1305 AEAD that uses the given 256-bit key.
**/
function new_(_key:Slice<GoByte>):{ var _0 : stdgo.crypto.cipher.Cipher.AEAD; var _1 : Error; } {
        if (_key.length != keySize) {
            return { _0 : ((null : stdgo.crypto.cipher.Cipher.AEAD)), _1 : stdgo.errors.Errors.new_("chacha20poly1305: bad key length") };
        };
        var _ret:Pointer<T_chacha20poly1305> = Go.pointer(new T_chacha20poly1305());
        Go.copy(_ret.value._key.__slice__(0), _key);
        return { _0 : _ret.value, _1 : ((null : stdgo.Error)) };
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
function _writeWithPadding(_p:Pointer<golang_org.x.crypto.poly1305.Poly1305.MAC>, _b:Slice<GoByte>):Void {
        _p.value.write(_b);
        {
            var _rem:GoInt = _b.length % ((16 : GoInt));
            if (_rem != ((0 : GoInt))) {
                var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
                var _padLen:GoInt = ((16 : GoInt)) - _rem;
                _p.value.write(_buf.__slice__(0, _padLen));
            };
        };
    }
function _writeUint64(_p:Pointer<golang_org.x.crypto.poly1305.Poly1305.MAC>, _n:GoInt):Void {
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.littleEndian.putUint64(_buf.__slice__(0), ((_n : GoUInt64)));
        _p.value.write(_buf.__slice__(0));
    }
/**
    // NewX returns a XChaCha20-Poly1305 AEAD that uses the given 256-bit key.
    //
    // XChaCha20-Poly1305 is a ChaCha20-Poly1305 variant that takes a longer nonce,
    // suitable to be generated randomly without risk of collisions. It should be
    // preferred when nonce uniqueness cannot be trivially ensured, or whenever
    // nonces are randomly generated.
**/
function newX(_key:Slice<GoByte>):{ var _0 : stdgo.crypto.cipher.Cipher.AEAD; var _1 : Error; } {
        if (_key.length != keySize) {
            return { _0 : ((null : stdgo.crypto.cipher.Cipher.AEAD)), _1 : stdgo.errors.Errors.new_("chacha20poly1305: bad key length") };
        };
        var _ret:Pointer<T_xchacha20poly1305> = Go.pointer(new T_xchacha20poly1305());
        Go.copy(_ret.value._key.__slice__(0), _key);
        return { _0 : _ret.value, _1 : ((null : stdgo.Error)) };
    }
class T_chacha20poly1305_extension_fields {
    public function nonceSize(__tmp__):GoInt return __tmp__.nonceSize();
    public function overhead(__tmp__):GoInt return __tmp__.overhead();
    public function seal(__tmp__, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> return __tmp__.seal(_dst, _nonce, _plaintext, _additionalData);
    public function open(__tmp__, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.open(_dst, _nonce, _ciphertext, _additionalData);
    public function _sealGeneric(__tmp__, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> return __tmp__._sealGeneric(_dst, _nonce, _plaintext, _additionalData);
    public function _openGeneric(__tmp__, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._openGeneric(_dst, _nonce, _ciphertext, _additionalData);
    public function _seal(__tmp__, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> return __tmp__._seal(_dst, _nonce, _plaintext, _additionalData);
    public function _open(__tmp__, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__._open(_dst, _nonce, _ciphertext, _additionalData);
}
class T_xchacha20poly1305_extension_fields {
    public function nonceSize(__tmp__):GoInt return __tmp__.nonceSize();
    public function overhead(__tmp__):GoInt return __tmp__.overhead();
    public function seal(__tmp__, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _plaintext:Slice<GoByte>, _additionalData:Slice<GoByte>):Slice<GoByte> return __tmp__.seal(_dst, _nonce, _plaintext, _additionalData);
    public function open(__tmp__, _dst:Slice<GoByte>, _nonce:Slice<GoByte>, _ciphertext:Slice<GoByte>, _additionalData:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.open(_dst, _nonce, _ciphertext, _additionalData);
}
