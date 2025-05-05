package stdgo._internal.regexp;
function _compileOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg> {
        var _p = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L467"
        if ((@:checkr _prog ?? throw "null pointer dereference").start == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L468"
            return _p = null;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L471"
        if ((((@:checkr _prog ?? throw "null pointer dereference").inst[((@:checkr _prog ?? throw "null pointer dereference").start : stdgo.GoInt)].op != (3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((((@:checkr _prog ?? throw "null pointer dereference").inst[((@:checkr _prog ?? throw "null pointer dereference").start : stdgo.GoInt)].arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L473"
            return _p = null;
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L476"
        for (__0 => _inst in (@:checkr _prog ?? throw "null pointer dereference").inst) {
            var _opOut = ((@:checkr _prog ?? throw "null pointer dereference").inst[(_inst.out : stdgo.GoInt)].op : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L478"
            {
                final __value__ = _inst.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L484"
                    if (((_opOut == (4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((@:checkr _prog ?? throw "null pointer dereference").inst[(_inst.arg : stdgo.GoInt)].op == (4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L485"
                        return _p = null;
                    };
                } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L488"
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L489"
                        if (((_inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) & (8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) == ((8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L490"
                            continue;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L492"
                        return _p = null;
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L480"
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L481"
                        return _p = null;
                    };
                };
            };
        };
        _p = stdgo._internal.regexp.Regexp__onepasscopy._onePassCopy(_prog);
        _p = stdgo._internal.regexp.Regexp__makeonepass._makeOnePass(_p);
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L503"
        if (({
            final value = _p;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L504"
            stdgo._internal.regexp.Regexp__cleanuponepass._cleanupOnePass(_p, _prog);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass.go#L506"
        return _p;
    }
