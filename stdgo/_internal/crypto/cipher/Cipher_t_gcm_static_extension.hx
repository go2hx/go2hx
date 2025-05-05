package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_gcm_asInterface) class T_gcm_static_extension {
    @:keep
    @:tdfield
    static public function _auth( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _out:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>, _tagMask:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        var _y:stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement = ({} : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L415"
        _g._update((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>), _additionalData);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L416"
        _g._update((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>), _ciphertext);
        _y._low = (_y._low ^ (((_additionalData.length : stdgo.GoUInt64) * (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _y._high = (_y._high ^ (((_ciphertext.length : stdgo.GoUInt64) * (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L421"
        _g._mul((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L423"
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64(_out, _y._low);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L424"
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_out.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _y._high);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L426"
        stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes(_out, _out, (_tagMask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _deriveCounter( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _counter:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _nonce:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L398"
        if ((_nonce.length) == ((12 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L399"
            (_counter.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_nonce);
            _counter[(15 : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        } else {
            var _y:stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement = ({} : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L403"
            _g._update((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>), _nonce);
            _y._high = (_y._high ^ (((_nonce.length : stdgo.GoUInt64) * (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L405"
            _g._mul((stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>));
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L406"
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_counter.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _y._low);
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L407"
            stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_counter.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _y._high);
        };
    }
    @:keep
    @:tdfield
    static public function _counterCrypt( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _out:stdgo.Slice<stdgo.GoUInt8>, _in:stdgo.Slice<stdgo.GoUInt8>, _counter:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        var _mask:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L372"
        while (((_in.length) >= (16 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L373"
            (@:checkr _g ?? throw "null pointer dereference")._cipher.encrypt((_mask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_counter.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L374"
            stdgo._internal.crypto.cipher.Cipher__gcminc32._gcmInc32(_counter);
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L376"
            stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes(_out, _in, (_mask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            _out = (_out.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _in = (_in.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L381"
        if (((_in.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L382"
            (@:checkr _g ?? throw "null pointer dereference")._cipher.encrypt((_mask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_counter.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L383"
            stdgo._internal.crypto.cipher.Cipher__gcminc32._gcmInc32(_counter);
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L384"
            stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes(_out, _in, (_mask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
    @:keep
    @:tdfield
    static public function _update( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>, _data:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        var _fullBlocks = ((((_data.length) >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) << (4i64 : stdgo.GoUInt64) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L337"
        _g._updateBlocks(_y, (_data.__slice__(0, _fullBlocks) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L339"
        if ((_data.length) != (_fullBlocks)) {
            var _partialBlock:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L341"
            (_partialBlock.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_data.__slice__(_fullBlocks) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L342"
            _g._updateBlocks(_y, (_partialBlock.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
    @:keep
    @:tdfield
    static public function _updateBlocks( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>, _blocks:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L325"
        while (((_blocks.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _y ?? throw "null pointer dereference")._low = ((@:checkr _y ?? throw "null pointer dereference")._low ^ (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_blocks)) : stdgo.GoUInt64);
            (@:checkr _y ?? throw "null pointer dereference")._high = ((@:checkr _y ?? throw "null pointer dereference")._high ^ (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64((_blocks.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L328"
            _g._mul(_y);
            _blocks = (_blocks.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
    @:keep
    @:tdfield
    static public function _mul( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _y:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement>):Void {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        var _z:stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement = ({} : stdgo._internal.crypto.cipher.Cipher_t_gcmfieldelement.T_gcmFieldElement);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L293"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                var _word = ((@:checkr _y ?? throw "null pointer dereference")._high : stdgo.GoUInt64);
//"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L295"
                if (_i == ((1 : stdgo.GoInt))) {
                    _word = (@:checkr _y ?? throw "null pointer dereference")._low;
                };
//"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L301"
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
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L199"
        if ((_nonce.length) != ((@:checkr _g ?? throw "null pointer dereference")._nonceSize)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L200"
            throw stdgo.Go.toInterface(("crypto/cipher: incorrect nonce length given to GCM" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L204"
        if (((@:checkr _g ?? throw "null pointer dereference")._tagSize < (12 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L205"
            throw stdgo.Go.toInterface(("crypto/cipher: incorrect GCM tag size" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L208"
        if (((_ciphertext.length) < (@:checkr _g ?? throw "null pointer dereference")._tagSize : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L209"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.cipher.Cipher__erropen._errOpen };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L211"
        if (((_ciphertext.length : stdgo.GoUInt64) > (((4294967294i64 : stdgo.GoUInt64) * ((@:checkr _g ?? throw "null pointer dereference")._cipher.blockSize() : stdgo.GoUInt64) : stdgo.GoUInt64) + ((@:checkr _g ?? throw "null pointer dereference")._tagSize : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L212"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.cipher.Cipher__erropen._errOpen };
        };
        var _tag = (_ciphertext.__slice__(((_ciphertext.length) - (@:checkr _g ?? throw "null pointer dereference")._tagSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _ciphertext = (_ciphertext.__slice__(0, ((_ciphertext.length) - (@:checkr _g ?? throw "null pointer dereference")._tagSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _counter:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__(), _tagMask:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L219"
        _g._deriveCounter((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>), _nonce);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L221"
        (@:checkr _g ?? throw "null pointer dereference")._cipher.encrypt((_tagMask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_counter.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L222"
        stdgo._internal.crypto.cipher.Cipher__gcminc32._gcmInc32((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        var _expectedTag:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L225"
        _g._auth((_expectedTag.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _ciphertext, _data, (stdgo.Go.setRef(_tagMask) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        var __tmp__ = stdgo._internal.crypto.cipher.Cipher__sliceforappend._sliceForAppend(_dst, (_ciphertext.length)), _ret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L228"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap(_out, _ciphertext)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L229"
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L232"
        if (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare((_expectedTag.__slice__(0, (@:checkr _g ?? throw "null pointer dereference")._tagSize) : stdgo.Slice<stdgo.GoUInt8>), _tag) != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L237"
            for (_i => _ in _out) {
                _out[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L240"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.cipher.Cipher__erropen._errOpen };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L243"
        _g._counterCrypt(_out, _ciphertext, (stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L245"
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function seal( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L169"
        if ((_nonce.length) != ((@:checkr _g ?? throw "null pointer dereference")._nonceSize)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L170"
            throw stdgo.Go.toInterface(("crypto/cipher: incorrect nonce length given to GCM" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L172"
        if (((_plaintext.length : stdgo.GoUInt64) > ((4294967294i64 : stdgo.GoUInt64) * ((@:checkr _g ?? throw "null pointer dereference")._cipher.blockSize() : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L173"
            throw stdgo.Go.toInterface(("crypto/cipher: message too large for GCM" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.crypto.cipher.Cipher__sliceforappend._sliceForAppend(_dst, ((_plaintext.length) + (@:checkr _g ?? throw "null pointer dereference")._tagSize : stdgo.GoInt)), _ret:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L177"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap(_out, _plaintext)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L178"
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        var _counter:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__(), _tagMask:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L182"
        _g._deriveCounter((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>), _nonce);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L184"
        (@:checkr _g ?? throw "null pointer dereference")._cipher.encrypt((_tagMask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_counter.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L185"
        stdgo._internal.crypto.cipher.Cipher__gcminc32._gcmInc32((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L187"
        _g._counterCrypt(_out, _plaintext, (stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        var _tag:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L190"
        _g._auth((_tag.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_out.__slice__(0, (_plaintext.length)) : stdgo.Slice<stdgo.GoUInt8>), _data, (stdgo.Go.setRef(_tagMask) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L191"
        (_out.__slice__((_plaintext.length)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_tag.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L193"
        return _ret;
    }
    @:keep
    @:tdfield
    static public function overhead( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>):stdgo.GoInt {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L165"
        return (@:checkr _g ?? throw "null pointer dereference")._tagSize;
    }
    @:keep
    @:tdfield
    static public function nonceSize( _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm>):stdgo.GoInt {
        @:recv var _g:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_gcm.T_gcm> = _g;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/gcm.go#L161"
        return (@:checkr _g ?? throw "null pointer dereference")._nonceSize;
    }
}
