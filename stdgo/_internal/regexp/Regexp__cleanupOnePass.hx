package stdgo._internal.regexp;
function _cleanupOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg>, _original:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):Void {
        for (_ix => _instOriginal in _original.inst) {
            {
                final __value__ = _instOriginal.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {} else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                    _prog.inst[(_ix : stdgo.GoInt)].next = (null : stdgo.Slice<stdgo.GoUInt32>);
                } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                    _prog.inst[(_ix : stdgo.GoInt)].next = (null : stdgo.Slice<stdgo.GoUInt32>);
                    _prog.inst[(_ix : stdgo.GoInt)] = ({ inst : _instOriginal?.__copy__() } : stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst);
                };
            };
        };
    }
