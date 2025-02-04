package stdgo._internal.crypto.rsa;
function encryptOAEP(_hash:stdgo._internal.hash.Hash_hash.Hash, _random:stdgo._internal.io.Io_reader.Reader, _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _msg:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        {
            var _err = (stdgo._internal.crypto.rsa.Rsa__checkpub._checkPub(_pub) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
        };
        _hash.reset();
        var _k = (@:check2r _pub.size() : stdgo.GoInt);
        if (((_msg.length) > ((_k - ((2 : stdgo.GoInt) * _hash.size() : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong };
        };
        if ((false && (stdgo.Go.toInterface(_random) == stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.crypto.internal.boring.Boring_t_randreader.T_randReader)))) : Bool)) {
            var __tmp__ = stdgo._internal.crypto.rsa.Rsa__boringpublickey._boringPublicKey(_pub), _bkey:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return stdgo._internal.crypto.internal.boring.Boring_encryptrsaoaep.encryptRSAOAEP(_hash, _hash, _bkey, _msg, _label);
        };
        stdgo._internal.crypto.internal.boring.Boring_unreachableexcepttests.unreachableExceptTests();
        _hash.write(_label);
        var _lHash = _hash.sum((null : stdgo.Slice<stdgo.GoUInt8>));
        _hash.reset();
        var _em = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _seed = (_em.__slice__((1 : stdgo.GoInt), ((1 : stdgo.GoInt) + _hash.size() : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _db = (_em.__slice__(((1 : stdgo.GoInt) + _hash.size() : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (_db.__slice__((0 : stdgo.GoInt), _hash.size()) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_lHash);
        _db[(((_db.length) - (_msg.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        (_db.__slice__(((_db.length) - (_msg.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_msg);
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_random, _seed), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
        };
        stdgo._internal.crypto.rsa.Rsa__mgf1xor._mgf1XOR(_db, _hash, _seed);
        stdgo._internal.crypto.rsa.Rsa__mgf1xor._mgf1XOR(_seed, _hash, _db);
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
