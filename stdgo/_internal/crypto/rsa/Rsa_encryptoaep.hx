package stdgo._internal.crypto.rsa;
function encryptOAEP(_hash:stdgo._internal.hash.Hash_hash.Hash, _random:stdgo._internal.io.Io_reader.Reader, _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _msg:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L523"
        {
            var _err = (stdgo._internal.crypto.rsa.Rsa__checkpub._checkPub(_pub) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L524"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L526"
        _hash.reset();
        var _k = (_pub.size() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L528"
        if (((_msg.length) > ((_k - ((2 : stdgo.GoInt) * _hash.size() : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L529"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L532"
        if ((false && (stdgo.Go.toInterface(_random) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringpublickey._boringPublicKey(_pub), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L534"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L535"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L537"
            return stdgo._internal.crypto.internal.boring.Boring_encryptrsaoaep.encryptRSAOAEP(_hash, _hash, _bkey, _msg, _label);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L539"
        stdgo._internal.crypto.internal.boring.Boring_unreachableexcepttests.unreachableExceptTests();
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L541"
        _hash.write(_label);
        var _lHash = _hash.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L543"
        _hash.reset();
        var _em = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _seed = (_em.__slice__((1 : stdgo.GoInt), ((1 : stdgo.GoInt) + _hash.size() : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _db = (_em.__slice__(((1 : stdgo.GoInt) + _hash.size() : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L549"
        (_db.__slice__((0 : stdgo.GoInt), _hash.size()) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_lHash);
        _db[(((_db.length) - (_msg.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L551"
        (_db.__slice__(((_db.length) - (_msg.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_msg);
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_random, _seed), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L554"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L555"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L558"
        stdgo._internal.crypto.rsa.Rsa__mgf1xor._mgf1XOR(_db, _hash, _seed);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L559"
        stdgo._internal.crypto.rsa.Rsa__mgf1xor._mgf1XOR(_seed, _hash, _db);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L561"
        if (false) {
            var _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>);
            {
                var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringpublickey._boringPublicKey(_pub);
                _bkey = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L564"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L565"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L567"
            return stdgo._internal.crypto.internal.boring.Boring_encryptrsanopadding.encryptRSANoPadding(_bkey, _em);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rsa/rsa.go#L570"
        return stdgo._internal.crypto.rsa.Rsa__encrypt._encrypt(_pub, _em);
    }
