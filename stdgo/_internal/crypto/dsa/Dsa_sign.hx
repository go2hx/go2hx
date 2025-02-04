package stdgo._internal.crypto.dsa;
function sign(_rand:stdgo._internal.io.Io_reader.Reader, _priv:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey>, _hash:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } {
        var _r = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _s = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _err = (null : stdgo.Error);
        stdgo._internal.crypto.internal.randutil.Randutil_maybereadbyte.maybeReadByte(_rand);
        var _n = (@:check2r (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q.bitLen() : stdgo.GoInt);
        if ((((((@:check2r (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q.sign() <= (0 : stdgo.GoInt) : Bool) || (@:check2r (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.p.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (@:check2r (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.g.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || (@:check2r (@:checkr _priv ?? throw "null pointer dereference").x.sign() <= (0 : stdgo.GoInt) : Bool) : Bool) || ((_n % (8 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            _err = stdgo._internal.crypto.dsa.Dsa_errinvalidpublickey.errInvalidPublicKey;
            return { _0 : _r, _1 : _s, _2 : _err };
        };
        _n = (_n >> ((3i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        var _attempts:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _attempts = (10 : stdgo.GoInt);
            while ((_attempts > (0 : stdgo.GoInt) : Bool)) {
                var _k = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
while (true) {
                    {
                        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _buf);
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : _r, _1 : _s, _2 : _err };
                    };
                    @:check2r _k.setBytes(_buf);
                    if (((@:check2r _k.sign() > (0 : stdgo.GoInt) : Bool) && (@:check2r _k.cmp((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                        break;
                    };
                };
var _kInv = stdgo._internal.crypto.dsa.Dsa__fermatinverse._fermatInverse(_k, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q);
_r = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).exp((@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.g, _k, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.p);
@:check2r _r.mod(_r, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q);
if (@:check2r _r.sign() == ((0 : stdgo.GoInt))) {
                    {
                        _attempts--;
                        continue;
                    };
                };
var _z = @:check2r _k.setBytes(_hash);
_s = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul((@:checkr _priv ?? throw "null pointer dereference").x, _r);
@:check2r _s.add(_s, _z);
@:check2r _s.mod(_s, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q);
@:check2r _s.mul(_s, _kInv);
@:check2r _s.mod(_s, (@:checkr _priv ?? throw "null pointer dereference").publicKey.parameters.q);
if (@:check2r _s.sign() != ((0 : stdgo.GoInt))) {
                    break;
                };
                _attempts--;
            };
        };
        if (_attempts == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; } = { _0 : null, _1 : null, _2 : stdgo._internal.crypto.dsa.Dsa_errinvalidpublickey.errInvalidPublicKey };
                _r = __tmp__._0;
                _s = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        return { _0 : _r, _1 : _s, _2 : _err };
    }
