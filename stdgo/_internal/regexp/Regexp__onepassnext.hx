package stdgo._internal.regexp;
function _onePassNext(_i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>, _r:stdgo.GoInt32):stdgo.GoUInt32 {
        var _next = (@:check2r _i.matchRunePos(_r) : stdgo.GoInt);
        if ((_next >= (0 : stdgo.GoInt) : Bool)) {
            return (@:checkr _i ?? throw "null pointer dereference").next[(_next : stdgo.GoInt)];
        };
        if ((@:checkr _i ?? throw "null pointer dereference").inst.op == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
            return (@:checkr _i ?? throw "null pointer dereference").inst.out;
        };
        return (0u32 : stdgo.GoUInt32);
    }
