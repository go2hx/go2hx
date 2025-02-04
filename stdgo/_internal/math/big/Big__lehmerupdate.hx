package stdgo._internal.math.big;
function _lehmerUpdate(a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _q:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _t:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _u0:stdgo._internal.math.big.Big_word.Word, _u1:stdgo._internal.math.big.Big_word.Word, _v0:stdgo._internal.math.big.Big_word.Word, _v1:stdgo._internal.math.big.Big_word.Word, _even:Bool):Void {
        (@:checkr _t ?? throw "null pointer dereference")._abs = (@:checkr _t ?? throw "null pointer dereference")._abs._setWord(_u0);
        (@:checkr _s ?? throw "null pointer dereference")._abs = (@:checkr _s ?? throw "null pointer dereference")._abs._setWord(_v0);
        (@:checkr _t ?? throw "null pointer dereference")._neg = !_even;
        (@:checkr _s ?? throw "null pointer dereference")._neg = _even;
        @:check2r _t.mul(a, _t);
        @:check2r _s.mul(b, _s);
        (@:checkr _r ?? throw "null pointer dereference")._abs = (@:checkr _r ?? throw "null pointer dereference")._abs._setWord(_u1);
        (@:checkr _q ?? throw "null pointer dereference")._abs = (@:checkr _q ?? throw "null pointer dereference")._abs._setWord(_v1);
        (@:checkr _r ?? throw "null pointer dereference")._neg = _even;
        (@:checkr _q ?? throw "null pointer dereference")._neg = !_even;
        @:check2r _r.mul(a, _r);
        @:check2r _q.mul(b, _q);
        @:check2r a.add(_t, _s);
        @:check2r b.add(_r, _q);
    }
