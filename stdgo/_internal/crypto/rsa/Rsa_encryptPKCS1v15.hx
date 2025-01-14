package stdgo._internal.crypto.rsa;
function encryptPKCS1v15(_random:stdgo._internal.io.Io_Reader.Reader, _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>, _msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.crypto.internal.randutil.Randutil_maybeReadByte.maybeReadByte(_random);
        {
            var _err = (stdgo._internal.crypto.rsa.Rsa__checkPub._checkPub(_pub) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _k = (@:check2r _pub.size() : stdgo.GoInt);
        if (((_msg.length) > (_k - (11 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errMessageTooLong.errMessageTooLong };
        };
        if ((false && (stdgo.Go.toInterface(_random) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_T_randReader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringPublicKey._boringPublicKey(_pub), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return stdgo._internal.crypto.internal.boring.Boring_encryptRSAPKCS1.encryptRSAPKCS1(_bkey, _msg);
        };
        stdgo._internal.crypto.internal.boring.Boring_unreachableExceptTests.unreachableExceptTests();
        var _em = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _em[(1 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
        var __0 = (_em.__slice__((2 : stdgo.GoInt), (((_em.length) - (_msg.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), __1 = (_em.__slice__(((_em.length) - (_msg.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _mm = __1, _ps = __0;
        var _err = (stdgo._internal.crypto.rsa.Rsa__nonZeroRandomBytes._nonZeroRandomBytes(_ps, _random) : stdgo.Error);
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        _em[(((_em.length) - (_msg.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        _mm.__copyTo__(_msg);
        if (false) {
            var _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PublicKeyRSA.PublicKeyRSA>);
            {
                var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringPublicKey._boringPublicKey(_pub);
                _bkey = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return stdgo._internal.crypto.internal.boring.Boring_encryptRSANoPadding.encryptRSANoPadding(_bkey, _em);
        };
        return stdgo._internal.crypto.rsa.Rsa__encrypt._encrypt(_pub, _em);
    }
