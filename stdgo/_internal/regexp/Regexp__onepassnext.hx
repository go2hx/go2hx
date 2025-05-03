package stdgo._internal.regexp;
function _onePassNext(_i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>, _r:stdgo.GoInt32):stdgo.GoUInt32 {
        var _next = (_i.matchRunePos(_r) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L77"
        if ((_next >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L78"
            return (@:checkr _i ?? throw "null pointer dereference").next[(_next : stdgo.GoInt)];
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L80"
        if ((@:checkr _i ?? throw "null pointer dereference").inst.op == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L81"
            return (@:checkr _i ?? throw "null pointer dereference").inst.out;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L83"
        return (0u32 : stdgo.GoUInt32);
    }
