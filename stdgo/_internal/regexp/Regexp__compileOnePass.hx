package stdgo._internal.regexp;
function _compileOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg> {
        var _p = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg>);
        if (_prog.start == ((0 : stdgo.GoInt))) {
            return null;
        };
        if (((_prog.inst[(_prog.start : stdgo.GoInt)].op != (3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || (((_prog.inst[(_prog.start : stdgo.GoInt)].arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : Bool)) {
            return null;
        };
        for (__0 => _inst in _prog.inst) {
            var _opOut = (_prog.inst[(_inst.out : stdgo.GoInt)].op : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp);
            {
                final __value__ = _inst.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                    if (((_opOut == (4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || (_prog.inst[(_inst.arg : stdgo.GoInt)].op == (4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) : Bool)) {
                        return null;
                    };
                } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                        if (((_inst.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) & (8 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) == ((8 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp))) {
                            continue;
                        };
                        return null;
                    };
                } else {
                    if (_opOut == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                        return null;
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
