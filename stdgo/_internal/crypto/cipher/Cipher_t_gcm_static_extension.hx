package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_gcm_asInterface) class T_gcm_static_extension {
    @:keep
    @:tdfield
    static public function _auth( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _out:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>, _tagMask:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        var _y:stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement = ({} : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
        @:check2r _g._update((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>), _additionalData);
        @:check2r _g._update((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>), _ciphertext);
        _y._low = (_y._low ^ (((_additionalData.length : stdgo.GoUInt64) * (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _y._high = (_y._high ^ (((_ciphertext.length : stdgo.GoUInt64) * (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        @:check2r _g._mul((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>));
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64(_out, _y._low);
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_out.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _y._high);
        stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes(_out, _out, (_tagMask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _deriveCounter( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _counter:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _nonce:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        if ((_nonce.length) == ((12 : stdgo.GoInt))) {
            (_counter.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_nonce);
            _counter[(15 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        } else {
            var _y:stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement = ({} : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
            @:check2r _g._update((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>), _nonce);
            _y._high = (_y._high ^ (((_nonce.length : stdgo.GoUInt64) * (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            @:check2r _g._mul((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>));
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_counter.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _y._low);
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_counter.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _y._high);
        };
    }
    @:keep
    @:tdfield
    static public function _counterCrypt( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _out:stdgo.Slice<stdgo.GoUInt8>, _in:stdgo.Slice<stdgo.GoUInt8>, _counter:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        var _mask:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        while (((_in.length) >= (16 : stdgo.GoInt) : Bool)) {
            (@:checkr _g ?? throw "null pointer dereference")._cipher.encrypt((_mask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_counter.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            stdgo._internal.crypto.cipher.Cipher__gcminc32._gcmInc32(_counter);
            stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes(_out, _in, (_mask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            _out = (_out.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _in = (_in.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (((_in.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _g ?? throw "null pointer dereference")._cipher.encrypt((_mask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_counter.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            stdgo._internal.crypto.cipher.Cipher__gcminc32._gcmInc32(_counter);
            stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes(_out, _in, (_mask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
    @:keep
    @:tdfield
    static public function _update( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>, _data:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        var _fullBlocks = ((((_data.length) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt);
        @:check2r _g._updateBlocks(_y, (_data.__slice__(0, _fullBlocks) : stdgo.Slice<stdgo.GoUInt8>));
        if ((_data.length) != (_fullBlocks)) {
            var _partialBlock:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
            (_partialBlock.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_data.__slice__(_fullBlocks) : stdgo.Slice<stdgo.GoUInt8>));
            @:check2r _g._updateBlocks(_y, (_partialBlock.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
    @:keep
    @:tdfield
    static public function _updateBlocks( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>, _blocks:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        while (((_blocks.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _y ?? throw "null pointer dereference")._low = ((@:checkr _y ?? throw "null pointer dereference")._low ^ (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_blocks)) : stdgo.GoUInt64);
            (@:checkr _y ?? throw "null pointer dereference")._high = ((@:checkr _y ?? throw "null pointer dereference")._high ^ (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64((_blocks.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoUInt64);
            @:check2r _g._mul(_y);
            _blocks = (_blocks.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
    @:keep
    @:tdfield
    static public function _mul( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        var _z:stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement = ({} : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                var _word = ((@:checkr _y ?? throw "null pointer dereference")._high : stdgo.GoUInt64);
if (_i == ((1 : stdgo.GoInt))) {
                    _word = (@:checkr _y ?? throw "null pointer dereference")._low;
                };
{
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (64 : stdgo.GoInt) : Bool)) {
                        var _msw = (_z._high & (15i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
_z._high = (_z._high >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
_z._high = (_z._high | ((_z._low << (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
_z._low = (_z._low >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
_z._low = (_z._low ^ (((stdgo._internal.crypto.cipher.Cipher__gcmreductiontable._gcmReductionTable[(_msw : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
var _t = (stdgo.Go.setRef((@:checkr _g ?? throw "null pointer dereference")._productTable[((_word & (15i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>);
_z._low = (_z._low ^ ((@:checkr _t ?? throw "null pointer dereference")._low) : stdgo.GoUInt64);
_z._high = (_z._high ^ ((@:checkr _t ?? throw "null pointer dereference")._high) : stdgo.GoUInt64);
_word = (_word >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        _j = (_j + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                _i++;
            };
        };
        {
            var __tmp__ = _z?.__copy__();
            var x = (_y : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
            x._low = __tmp__?._low;
            x._high = __tmp__?._high;
        };
    }
    @:keep
    @:tdfield
    static public function open( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        if ((_nonce.length) != ((@:checkr _g ?? throw "null pointer dereference")._nonceSize)) {
            throw stdgo.Go.toInterface(("crypto/cipher: incorrect nonce length given to GCM" : stdgo.GoString));
        };
        if (((@:checkr _g ?? throw "null pointer dereference")._tagSize < (12 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/cipher: incorrect GCM tag size" : stdgo.GoString));
        };
        if (((_ciphertext.length) < (@:checkr _g ?? throw "null pointer dereference")._tagSize : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.cipher.Cipher__erropen._errOpen };
        };
        if (((_ciphertext.length : stdgo.GoUInt64) > (((4294967294i64 : stdgo.GoUInt64) * ((@:checkr _g ?? throw "null pointer dereference")._cipher.blockSize() : stdgo.GoUInt64) : stdgo.GoUInt64) + ((@:checkr _g ?? throw "null pointer dereference")._tagSize : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.cipher.Cipher__erropen._errOpen };
        };
        var _tag = (_ciphertext.__slice__(((_ciphertext.length) - (@:checkr _g ?? throw "null pointer dereference")._tagSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _ciphertext = (_ciphertext.__slice__(0, ((_ciphertext.length) - (@:checkr _g ?? throw "null pointer dereference")._tagSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __0:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__(), __1:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
var _tagMask = __1, _counter = __0;
        @:check2r _g._deriveCounter((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>), _nonce);
        (@:checkr _g ?? throw "null pointer dereference")._cipher.encrypt((_tagMask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_counter.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.crypto.cipher.Cipher__gcminc32._gcmInc32((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        var _expectedTag:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        @:check2r _g._auth((_expectedTag.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _ciphertext, _data, (stdgo.Go.setRef(_tagMask) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        var __tmp__ = stdgo._internal.crypto.cipher.Cipher__sliceforappend._sliceForAppend(_dst, (_ciphertext.length)), _ret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap(_out, _ciphertext)) {
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare((_expectedTag.__slice__(0, (@:checkr _g ?? throw "null pointer dereference")._tagSize) : stdgo.Slice<stdgo.GoUInt8>), _tag) != ((1 : stdgo.GoInt))) {
            for (_i => _ in _out) {
                _out[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.cipher.Cipher__erropen._errOpen };
        };
        @:check2r _g._counterCrypt(_out, _ciphertext, (stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function seal( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        if ((_nonce.length) != ((@:checkr _g ?? throw "null pointer dereference")._nonceSize)) {
            throw stdgo.Go.toInterface(("crypto/cipher: incorrect nonce length given to GCM" : stdgo.GoString));
        };
        if (((_plaintext.length : stdgo.GoUInt64) > ((4294967294i64 : stdgo.GoUInt64) * ((@:checkr _g ?? throw "null pointer dereference")._cipher.blockSize() : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/cipher: message too large for GCM" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.crypto.cipher.Cipher__sliceforappend._sliceForAppend(_dst, ((_plaintext.length) + (@:checkr _g ?? throw "null pointer dereference")._tagSize : stdgo.GoInt)), _ret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap(_out, _plaintext)) {
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        var __0:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__(), __1:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
var _tagMask = __1, _counter = __0;
        @:check2r _g._deriveCounter((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>), _nonce);
        (@:checkr _g ?? throw "null pointer dereference")._cipher.encrypt((_tagMask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_counter.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.crypto.cipher.Cipher__gcminc32._gcmInc32((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        @:check2r _g._counterCrypt(_out, _plaintext, (stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        var _tag:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        @:check2r _g._auth((_tag.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_out.__slice__(0, (_plaintext.length)) : stdgo.Slice<stdgo.GoUInt8>), _data, (stdgo.Go.setRef(_tagMask) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        (_out.__slice__((_plaintext.length)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_tag.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        return _ret;
    }
    @:keep
    @:tdfield
    static public function overhead( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>):stdgo.GoInt {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        return (@:checkr _g ?? throw "null pointer dereference")._tagSize;
    }
    @:keep
    @:tdfield
    static public function nonceSize( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>):stdgo.GoInt {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        return (@:checkr _g ?? throw "null pointer dereference")._nonceSize;
    }
}
