package stdgo._internal.crypto.dsa;
function verify(_pub:stdgo.Ref<stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey>, _hash:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        if (@:check2r (@:checkr _pub ?? throw "null pointer dereference").parameters.p.sign() == ((0 : stdgo.GoInt))) {
            return false;
        };
        if (((@:check2r _r.sign() < (1 : stdgo.GoInt) : Bool) || (@:check2r _r.cmp((@:checkr _pub ?? throw "null pointer dereference").parameters.q) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        if (((@:check2r _s.sign() < (1 : stdgo.GoInt) : Bool) || (@:check2r _s.cmp((@:checkr _pub ?? throw "null pointer dereference").parameters.q) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        var _w = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_s, (@:checkr _pub ?? throw "null pointer dereference").parameters.q);
        if ((_w == null || (_w : Dynamic).__nil__)) {
            return false;
        };
        var _n = (@:check2r (@:checkr _pub ?? throw "null pointer dereference").parameters.q.bitLen() : stdgo.GoInt);
        if ((_n % (8 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            return false;
        };
        var _z = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_hash);
        var _u1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_z, _w);
        @:check2r _u1.mod(_u1, (@:checkr _pub ?? throw "null pointer dereference").parameters.q);
        var _u2 = @:check2r _w.mul(_r, _w);
        @:check2r _u2.mod(_u2, (@:checkr _pub ?? throw "null pointer dereference").parameters.q);
        var _v = @:check2r _u1.exp((@:checkr _pub ?? throw "null pointer dereference").parameters.g, _u1, (@:checkr _pub ?? throw "null pointer dereference").parameters.p);
        @:check2r _u2.exp((@:checkr _pub ?? throw "null pointer dereference").y, _u2, (@:checkr _pub ?? throw "null pointer dereference").parameters.p);
        @:check2r _v.mul(_v, _u2);
        @:check2r _v.mod(_v, (@:checkr _pub ?? throw "null pointer dereference").parameters.p);
        @:check2r _v.mod(_v, (@:checkr _pub ?? throw "null pointer dereference").parameters.q);
        return @:check2r _v.cmp(_r) == ((0 : stdgo.GoInt));
    }
