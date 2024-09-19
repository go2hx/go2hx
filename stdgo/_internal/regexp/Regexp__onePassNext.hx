package stdgo._internal.regexp;
function _onePassNext(_i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>, _r:stdgo.GoInt32):stdgo.GoUInt32 {
        var _next = (_i.matchRunePos(_r) : stdgo.GoInt);
        if ((_next >= (0 : stdgo.GoInt) : Bool)) {
            return _i.next[(_next : stdgo.GoInt)];
        };
        if (_i.inst.op == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
            return _i.inst.out;
        };
        return (0u32 : stdgo.GoUInt32);
    }
