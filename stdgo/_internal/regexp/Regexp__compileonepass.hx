package stdgo._internal.regexp;
function _compileOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg> {
        var _p = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg>);
        if ((@:checkr _prog ?? throw "null pointer dereference").start == ((0 : stdgo.GoInt))) {
            return _p = null;
        };
        if ((((@:checkr _prog ?? throw "null pointer dereference").inst[((@:checkr _prog ?? throw "null pointer dereference").start : stdgo.GoInt)].op != (3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((((@:checkr _prog ?? throw "null pointer dereference").inst[((@:checkr _prog ?? throw "null pointer dereference").start : stdgo.GoInt)].arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : Bool)) {
            return _p = null;
        };
        for (__0 => _inst in (@:checkr _prog ?? throw "null pointer dereference").inst) {
            var _opOut = ((@:checkr _prog ?? throw "null pointer dereference").inst[(_inst.out : stdgo.GoInt)].op : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
            {
                final __value__ = _inst.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                    if (((_opOut == (4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((@:checkr _prog ?? throw "null pointer dereference").inst[(_inst.arg : stdgo.GoInt)].op == (4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool)) {
                        return _p = null;
                    };
                } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        if (((_inst.arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) & (8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) == ((8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                            continue;
                        };
                        return _p = null;
                    };
                } else {
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                        return _p = null;
                    };
                };
            };
        };
        _p = stdgo._internal.regexp.Regexp__onepasscopy._onePassCopy(_prog);
        _p = stdgo._internal.regexp.Regexp__makeonepass._makeOnePass(_p);
        if ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
            stdgo._internal.regexp.Regexp__cleanuponepass._cleanupOnePass(_p, _prog);
        };
        return _p;
    }
