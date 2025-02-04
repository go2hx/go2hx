package stdgo._internal.regexp;
function _onePassCopy(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg> {
        var _p = (stdgo.Go.setRef(({ start : (@:checkr _prog ?? throw "null pointer dereference").start, numCap : (@:checkr _prog ?? throw "null pointer dereference").numCap, inst : (new stdgo.Slice<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>(((@:checkr _prog ?? throw "null pointer dereference").inst.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _prog ?? throw "null pointer dereference").inst.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _prog ?? throw "null pointer dereference").inst.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst)]) : stdgo.Slice<stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst>) } : stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg)) : stdgo.Ref<stdgo._internal.regexp.Regexp_t_onepassprog.T_onePassProg>);
        for (_i => _inst in (@:checkr _prog ?? throw "null pointer dereference").inst) {
            (@:checkr _p ?? throw "null pointer dereference").inst[(_i : stdgo.GoInt)] = ({ inst : _inst?.__copy__() } : stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst);
        };
        for (_pc => _ in (@:checkr _p ?? throw "null pointer dereference").inst) {
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference").inst[(_pc : stdgo.GoInt)].inst.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                    var _p_A_Other = stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference").inst[(_pc : stdgo.GoInt)].inst.out);
                    var _p_A_Alt = stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference").inst[(_pc : stdgo.GoInt)].inst.arg);
                    var _instAlt = ((@:checkr _p ?? throw "null pointer dereference").inst[(_p_A_Alt.value : stdgo.GoInt)] : stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst);
                    if (!(((_instAlt.inst.op == (0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || (_instAlt.inst.op == (1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool))) {
                        {
                            final __tmp__0 = _p_A_Other;
                            final __tmp__1 = _p_A_Alt;
                            _p_A_Alt = __tmp__0;
                            _p_A_Other = __tmp__1;
                        };
                        _instAlt = (@:checkr _p ?? throw "null pointer dereference").inst[(_p_A_Alt.value : stdgo.GoInt)];
                        if (!(((_instAlt.inst.op == (0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || (_instAlt.inst.op == (1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool))) {
                            continue;
                        };
                    };
                    var _instOther = ((@:checkr _p ?? throw "null pointer dereference").inst[(_p_A_Other.value : stdgo.GoInt)] : stdgo._internal.regexp.Regexp_t_onepassinst.T_onePassInst);
                    if (((_instOther.inst.op == (0 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || (_instOther.inst.op == (1 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool)) {
                        continue;
                    };
                    var _p_B_Alt = stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference").inst[(_p_A_Alt.value : stdgo.GoInt)].inst.out);
                    var _p_B_Other = stdgo.Go.pointer((@:checkr _p ?? throw "null pointer dereference").inst[(_p_A_Alt.value : stdgo.GoInt)].inst.arg);
                    var _patch = (false : Bool);
                    if (_instAlt.inst.out == ((_pc : stdgo.GoUInt32))) {
                        _patch = true;
                    } else if (_instAlt.inst.arg == ((_pc : stdgo.GoUInt32))) {
                        _patch = true;
                        {
                            final __tmp__0 = _p_B_Other;
                            final __tmp__1 = _p_B_Alt;
                            _p_B_Alt = __tmp__0;
                            _p_B_Other = __tmp__1;
                        };
                    };
                    if (_patch) {
                        _p_B_Alt.value = _p_A_Other.value;
                    };
                    if (_p_A_Other.value == (_p_B_Alt.value)) {
                        _p_A_Alt.value = _p_B_Other.value;
                    };
                } else {
                    continue;
                };
            };
        };
        return _p;
    }
