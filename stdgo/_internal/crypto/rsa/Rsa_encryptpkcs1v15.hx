package stdgo._internal.crypto.rsa;
function encryptPKCS1v15(_random:stdgo._internal.io.Io_reader.Reader, _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L42"
        stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_random);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L44"
        {
            var _err = (stdgo._internal.crypto.rsa.Rsa__checkpub._checkPub(_pub) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L45"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _k = (_pub.size() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L48"
        if (((_msg.length) > (_k - (11 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L49"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L52"
        if ((false && (stdgo.Go.toInterface(_random) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringpublickey._boringPublicKey(_pub), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L54"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L55"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L57"
            return stdgo._internal.crypto.internal.boring.Boring_encryptrsapkcs1.encryptRSAPKCS1(_bkey, _msg);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L59"
        stdgo._internal.crypto.internal.boring.Boring_unreachableexcepttests.unreachableExceptTests();
        var _em = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _em[(1 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
        var __0 = (_em.__slice__((2 : stdgo.GoInt), (((_em.length) - (_msg.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), __1 = (_em.__slice__(((_em.length) - (_msg.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _mm = __1, _ps = __0;
        var _err = (stdgo._internal.crypto.rsa.Rsa__nonzerorandombytes._nonZeroRandomBytes(_ps, _random) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L66"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L67"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        _em[(((_em.length) - (_msg.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L70"
        _mm.__copyTo__(_msg);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L72"
        if (false) {
            var _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>);
            {
                var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringpublickey._boringPublicKey(_pub);
                _bkey = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L75"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L76"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L78"
            return stdgo._internal.crypto.internal.boring.Boring_encryptrsanopadding.encryptRSANoPadding(_bkey, _em);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/pkcs1v15.go#L81"
        return stdgo._internal.crypto.rsa.Rsa__encrypt._encrypt(_pub, _em);
    }
