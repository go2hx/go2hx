package stdgo._internal.crypto.dsa;
function verify(_pub:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_PublicKey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool {
        if (_pub.parameters.p.sign() == ((0 : stdgo.GoInt))) {
            return false;
        };
        if (((_r.sign() < (1 : stdgo.GoInt) : Bool) || (_r.cmp(_pub.parameters.q) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        if (((_s.sign() < (1 : stdgo.GoInt) : Bool) || (_s.cmp(_pub.parameters.q) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse(_s, _pub.parameters.q);
        if ((_w == null || (_w : Dynamic).__nil__)) {
            return false;
        };
        var _n = (_pub.parameters.q.bitLen() : stdgo.GoInt);
        if ((_n % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return false;
        };
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(_hash);
        var _u1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_z, _w);
        _u1.mod(_u1, _pub.parameters.q);
        var _u2 = _w.mul(_r, _w);
        _u2.mod(_u2, _pub.parameters.q);
        var _v = _u1.exp(_pub.parameters.g, _u1, _pub.parameters.p);
        _u2.exp(_pub.y, _u2, _pub.parameters.p);
        _v.mul(_v, _u2);
        _v.mod(_v, _pub.parameters.p);
        _v.mod(_v, _pub.parameters.q);
        return _v.cmp(_r) == ((0 : stdgo.GoInt));
    }
