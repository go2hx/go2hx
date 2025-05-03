package stdgo._internal.crypto.dsa;
function verify(_pub:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L276"
        if ((@:checkr _pub ?? throw "null pointer dereference").parameters.p.sign() == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L277"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L280"
        if (((_r.sign() < (1 : stdgo.GoInt) : Bool) || (_r.cmp((@:checkr _pub ?? throw "null pointer dereference").parameters.q) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L281"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L283"
        if (((_s.sign() < (1 : stdgo.GoInt) : Bool) || (_s.cmp((@:checkr _pub ?? throw "null pointer dereference").parameters.q) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L284"
            return false;
        };
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_s, (@:checkr _pub ?? throw "null pointer dereference").parameters.q);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L288"
        if (({
            final value = _w;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L289"
            return false;
        };
        var _n = ((@:checkr _pub ?? throw "null pointer dereference").parameters.q.bitLen() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L293"
        if ((_n % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L294"
            return false;
        };
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_hash);
        var _u1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_z, _w);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L299"
        _u1.mod(_u1, (@:checkr _pub ?? throw "null pointer dereference").parameters.q);
        var _u2 = _w.mul(_r, _w);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L301"
        _u2.mod(_u2, (@:checkr _pub ?? throw "null pointer dereference").parameters.q);
        var _v = _u1.exp((@:checkr _pub ?? throw "null pointer dereference").parameters.g, _u1, (@:checkr _pub ?? throw "null pointer dereference").parameters.p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L303"
        _u2.exp((@:checkr _pub ?? throw "null pointer dereference").y, _u2, (@:checkr _pub ?? throw "null pointer dereference").parameters.p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L304"
        _v.mul(_v, _u2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L305"
        _v.mod(_v, (@:checkr _pub ?? throw "null pointer dereference").parameters.p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L306"
        _v.mod(_v, (@:checkr _pub ?? throw "null pointer dereference").parameters.q);
        //"file:///home/runner/.go/go1.21.3/src/crypto/dsa/dsa.go#L308"
        return _v.cmp(_r) == ((0 : stdgo.GoInt));
    }
