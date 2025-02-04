package stdgo._internal.crypto.rsa;
function encryptPKCS1v15(_random:stdgo._internal.io.Io_reader.Reader, _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_random);
        {
            var _err = (stdgo._internal.crypto.rsa.Rsa__checkpub._checkPub(_pub) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        var _k = (@:check2r _pub.size() : stdgo.GoInt);
        if (((_msg.length) > (_k - (11 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong };
        };
        if ((false && (stdgo.Go.toInterface(_random) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringpublickey._boringPublicKey(_pub), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return stdgo._internal.crypto.internal.boring.Boring_encryptrsapkcs1.encryptRSAPKCS1(_bkey, _msg);
        };
        stdgo._internal.crypto.internal.boring.Boring_unreachableexcepttests.unreachableExceptTests();
        var _em = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _em[(1 : stdgo.GoInt)] = (2 : stdgo.GoUInt8);
        var __0 = (_em.__slice__((2 : stdgo.GoInt), (((_em.length) - (_msg.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), __1 = (_em.__slice__(((_em.length) - (_msg.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _mm = __1, _ps = __0;
        var _err = (stdgo._internal.crypto.rsa.Rsa__nonzerorandombytes._nonZeroRandomBytes(_ps, _random) : stdgo.Error);
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        _em[(((_em.length) - (_msg.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        _mm.__copyTo__(_msg);
        if (false) {
            var _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>);
            {
                var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringpublickey._boringPublicKey(_pub);
                _bkey = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return stdgo._internal.crypto.internal.boring.Boring_encryptrsanopadding.encryptRSANoPadding(_bkey, _em);
        };
        return stdgo._internal.crypto.rsa.Rsa__encrypt._encrypt(_pub, _em);
    }
