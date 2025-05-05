package stdgo._internal.crypto.ecdh;
@:keep @:allow(stdgo._internal.crypto.ecdh.Ecdh.T_nistCurve_asInterface) class T_nistCurve_static_extension {
    @:keep
    @:tdfield
    static public function _ecdh( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>, _local:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>, _remote:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L199"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L200"
            return stdgo._internal.crypto.internal.boring.Boring_ecdh.eCDH((@:checkr _local ?? throw "null pointer dereference")._boring, (@:checkr _remote ?? throw "null pointer dereference")._boring);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L203"
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        var __tmp__ = (@:checkr _c ?? throw "null pointer dereference")._newPoint().setBytes((@:checkr _remote ?? throw "null pointer dereference")._publicKey), _p:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L205"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L206"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L208"
        {
            var __tmp__ = _p.scalarMult(_p, (@:checkr _local ?? throw "null pointer dereference")._privateKey), __0:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L209"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L211"
        return _p.bytesX();
    }
    @:keep
    @:tdfield
    static public function newPublicKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L169"
        if (((_key.length == (0 : stdgo.GoInt)) || (_key[(0 : stdgo.GoInt)] != (4 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L170"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: invalid public key" : stdgo.GoString)) };
        };
        var _k = (stdgo.Go.setRef(({ _curve : stdgo.Go.asInterface(_c), _publicKey : ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_key : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L176"
        if (false) {
            var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_newpublickeyecdh.newPublicKeyECDH((@:checkr _c ?? throw "null pointer dereference")._name?.__copy__(), (@:checkr _k ?? throw "null pointer dereference")._publicKey), _bk:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L178"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L179"
                return { _0 : null, _1 : _err };
            };
            (@:checkr _k ?? throw "null pointer dereference")._boring = _bk;
        } else {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L184"
            {
                var __tmp__ = (@:checkr _c ?? throw "null pointer dereference")._newPoint().setBytes(_key), __0:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L185"
                    return { _0 : null, _1 : _err };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L188"
        return { _0 : _k, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _privateKeyToPublicKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>, _key:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>):stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L106"
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L107"
        if (stdgo.Go.toInterface((@:checkr _key ?? throw "null pointer dereference")._curve) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_c)))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L108"
            throw stdgo.Go.toInterface(("crypto/ecdh: internal error: converting the wrong key type" : stdgo.GoString));
        };
        var __tmp__ = (@:checkr _c ?? throw "null pointer dereference")._newPoint().scalarBaseMult((@:checkr _key ?? throw "null pointer dereference")._privateKey), _p:Dynamic = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L111"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L114"
            throw stdgo.Go.toInterface(("crypto/ecdh: internal error: nistec ScalarBaseMult failed for a fixed-size input" : stdgo.GoString));
        };
        var _publicKey = _p.bytes();
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L117"
        if ((_publicKey.length) == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L121"
            throw stdgo.Go.toInterface(("crypto/ecdh: internal error: nistec ScalarBaseMult returned the identity" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L123"
        return (stdgo.Go.setRef(({ _curve : (@:checkr _key ?? throw "null pointer dereference")._curve, _publicKey : _publicKey } : stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
    }
    @:keep
    @:tdfield
    static public function newPrivateKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L76"
        if ((_key.length) != (((@:checkr _c ?? throw "null pointer dereference")._scalarOrder.length))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L77"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/ecdh: invalid private key size" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L79"
        if ((stdgo._internal.crypto.ecdh.Ecdh__iszero._isZero(_key) || !stdgo._internal.crypto.ecdh.Ecdh__isless._isLess(_key, (@:checkr _c ?? throw "null pointer dereference")._scalarOrder) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L80"
            return { _0 : null, _1 : stdgo._internal.crypto.ecdh.Ecdh__errinvalidprivatekey._errInvalidPrivateKey };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L82"
        if (false) {
            var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_newprivatekeyecdh.newPrivateKeyECDH((@:checkr _c ?? throw "null pointer dereference")._name?.__copy__(), _key), _bk:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L84"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L85"
                return { _0 : null, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L87"
            return stdgo._internal.crypto.ecdh.Ecdh__newboringprivatekey._newBoringPrivateKey(stdgo.Go.asInterface(_c), _bk, _key);
        };
        var _k = (stdgo.Go.setRef(({ _curve : stdgo.Go.asInterface(_c), _privateKey : ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_key : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L93"
        return { _0 : _k, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function generateKey( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>, _rand:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L39"
        if ((false && (stdgo.Go.toInterface(_rand) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_generatekeyecdh.generateKeyECDH((@:checkr _c ?? throw "null pointer dereference")._name?.__copy__()), _key:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH> = __tmp__._0, _bytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L41"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L42"
                return { _0 : null, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L44"
            return stdgo._internal.crypto.ecdh.Ecdh__newboringprivatekey._newBoringPrivateKey(stdgo.Go.asInterface(_c), _key, _bytes);
        };
        var _key = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _c ?? throw "null pointer dereference")._scalarOrder.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L48"
        stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_rand);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L49"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L50"
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _key), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L51"
                    return { _0 : null, _1 : _err };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L58"
            if (stdgo.Go.pointer((@:checkr _c ?? throw "null pointer dereference")._scalarOrder[(0 : stdgo.GoInt)]) == (stdgo.Go.pointer(stdgo._internal.crypto.ecdh.Ecdh__p521order._p521Order[(0 : stdgo.GoInt)]))) {
                _key[(0 : stdgo.GoInt)] = (_key[(0 : stdgo.GoInt)] & ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            _key[(1 : stdgo.GoInt)] = (_key[(1 : stdgo.GoInt)] ^ ((66 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            var __tmp__ = _c.newPrivateKey(_key), _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_privatekey.PrivateKey> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L68"
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.crypto.ecdh.Ecdh__errinvalidprivatekey._errInvalidPrivateKey))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L69"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L71"
            return { _0 : _k, _1 : _err };
        };
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_t_nistcurve.T_nistCurve<Dynamic>> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/nist.go#L33"
        return (@:checkr _c ?? throw "null pointer dereference")._name?.__copy__();
    }
}
