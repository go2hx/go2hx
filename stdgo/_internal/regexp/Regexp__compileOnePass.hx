package stdgo._internal.regexp;
function _compileOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg> {
        var _p = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg>);
        if ((@:checkr _prog ?? throw "null pointer dereference").start == ((0 : stdgo.GoInt))) {
            return _p = null;
        };
        if ((((@:checkr _prog ?? throw "null pointer dereference").inst[((@:checkr _prog ?? throw "null pointer dereference").start : stdgo.GoInt)].op != (3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || ((((@:checkr _prog ?? throw "null pointer dereference").inst[((@:checkr _prog ?? throw "null pointer dereference").start : stdgo.GoInt)].arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : Bool)) {
            return _p = null;
        };
        for (__0 => _inst in (@:checkr _prog ?? throw "null pointer dereference").inst) {
            var _opOut = ((@:checkr _prog ?? throw "null pointer dereference").inst[(_inst.out : stdgo.GoInt)].op : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp);
            {
                final __value__ = _inst.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                    if (((_opOut == (4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || ((@:checkr _prog ?? throw "null pointer dereference").inst[(_inst.arg : stdgo.GoInt)].op == (4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) : Bool)) {
                        return _p = null;
                    };
                } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                        if (((_inst.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) & (8 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) == ((8 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                            continue;
                        };
                        return _p = null;
                    };
                } else {
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                        return _p = null;
                    };
                };
            };
        };
        _p = stdgo._internal.regexp.Regexp__onePassCopy._onePassCopy(_prog);
        _p = stdgo._internal.regexp.Regexp__makeOnePass._makeOnePass(_p);
        if ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
            stdgo._internal.regexp.Regexp__cleanupOnePass._cleanupOnePass(_p, _prog);
        };
        return _p;
    }
