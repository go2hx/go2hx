package stdgo._internal.crypto.dsa;
function sign(_rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } {
        var _r = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _s = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L206"
        stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_rand);
        var _n = ((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q.bitLen() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L211"
        if (((((((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q.sign() <= (0 : stdgo.GoInt) : Bool) || ((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.p.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || ((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.g.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || ((@:checkr _priv ?? throw "null pointer dereference").x.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || ((_n % (8 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            _err = stdgo._internal.crypto.dsa.Dsa_errinvalidpublickey.errInvalidPublicKey;
            //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L213"
            return { _0 : _r, _1 : _s, _2 : _err };
        };
        _n = (_n >> ((3i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        var _attempts:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L218"
        {
            _attempts = (10 : stdgo.GoInt);
            while ((_attempts > (0 : stdgo.GoInt) : Bool)) {
                var _k = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
//"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L221"
                while (true) {
                    {
                        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _buf);
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L223"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L224"
                        return { _0 : _r, _1 : _s, _2 : _err };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L226"
                    _k.setBytes(_buf);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L231"
                    if (((_k.sign() > (0 : stdgo.GoInt) : Bool) && (_k.cmp((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L232"
                        break;
                    };
                };
var _kInv = stdgo._internal.crypto.dsa.Dsa__fermatinverse._fermatInverse(_k, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q);
_r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).exp((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.g, _k, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.p);
//"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L239"
                _r.mod(_r, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q);
//"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L241"
                if (_r.sign() == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L242"
                    {
                        _attempts--;
                        continue;
                    };
                };
var _z = _k.setBytes(_hash);
_s = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul((@:checkr _priv ?? throw "null pointer dereference").x, _r);
//"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L248"
                _s.add(_s, _z);
//"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L249"
                _s.mod(_s, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q);
//"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L250"
                _s.mul(_s, _kInv);
//"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L251"
                _s.mod(_s, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q);
//"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L253"
                if (_s.sign() != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L254"
                    break;
                };
                _attempts--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L260"
        if (_attempts == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L261"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } = { _0 : null, _1 : null, _2 : stdgo._internal.crypto.dsa.Dsa_errinvalidpublickey.errInvalidPublicKey };
                _r = __tmp__._0;
                _s = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L264"
        return { _0 : _r, _1 : _s, _2 : _err };
    }
