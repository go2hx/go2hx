package stdgo._internal.crypto.dsa;
function sign(_rand:stdgo._internal.io.Io_Reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_PrivateKey.PrivateKey>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _2 : stdgo.Error; } {
        var _r = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _s = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _err = (null : stdgo.Error);
        stdgo._internal.crypto.internal.randutil.Randutil_maybeReadByte.maybeReadByte(_rand);
        var _n = (_priv.publicKey.parameters.q.bitLen() : stdgo.GoInt);
        if ((((((_priv.publicKey.parameters.q.sign() <= (0 : stdgo.GoInt) : Bool) || (_priv.publicKey.parameters.p.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (_priv.publicKey.parameters.g.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (_priv.x.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || ((_n % (8 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            _err = stdgo._internal.crypto.dsa.Dsa_errInvalidPublicKey.errInvalidPublicKey;
            return { _0 : _r, _1 : _s, _2 : _err };
        };
        _n = (_n >> ((3i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        var _attempts:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _attempts = (10 : stdgo.GoInt);
            stdgo.Go.cfor((_attempts > (0 : stdgo.GoInt) : Bool), _attempts--, {
                var _k = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                while (true) {
                    {
                        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(_rand, _buf);
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : _r, _1 : _s, _2 : _err };
                    };
                    _k.setBytes(_buf);
                    if (((_k.sign() > (0 : stdgo.GoInt) : Bool) && (_k.cmp(_priv.publicKey.parameters.q) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                        break;
                    };
                };
                var _kInv = stdgo._internal.crypto.dsa.Dsa__fermatInverse._fermatInverse(_k, _priv.publicKey.parameters.q);
                _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).exp(_priv.publicKey.parameters.g, _k, _priv.publicKey.parameters.p);
                _r.mod(_r, _priv.publicKey.parameters.q);
                if (_r.sign() == ((0 : stdgo.GoInt))) {
                    continue;
                };
                var _z = _k.setBytes(_hash);
                _s = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_priv.x, _r);
                _s.add(_s, _z);
                _s.mod(_s, _priv.publicKey.parameters.q);
                _s.mul(_s, _kInv);
                _s.mod(_s, _priv.publicKey.parameters.q);
                if (_s.sign() != ((0 : stdgo.GoInt))) {
                    break;
                };
            });
        };
        if (_attempts == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : null, _2 : stdgo._internal.crypto.dsa.Dsa_errInvalidPublicKey.errInvalidPublicKey };
        };
        return { _0 : _r, _1 : _s, _2 : _err };
    }
