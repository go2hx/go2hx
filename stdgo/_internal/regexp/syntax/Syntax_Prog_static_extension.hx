package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Prog_asInterface) class Prog_static_extension {
    @:keep
    static public function startCond( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog> = _p;
        var loopBreak = false;
        var _i_3353474:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        var _pc_3353451:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _flag_3353437:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _pc_3353451 = (_p.start : stdgo.GoUInt32);
                    _i_3353474 = (stdgo.Go.setRef(_p.inst[(_pc_3353451 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
                    _gotoNext = 3353491i32;
                } else if (__value__ == (3353491i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3353498i32;
                } else if (__value__ == (3353498i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3353502i32;
                    } else {
                        _gotoNext = 3353712i32;
                    };
                } else if (__value__ == (3353502i32)) {
                    _gotoNext = 3353506i32;
                } else if (__value__ == (3353506i32)) {
                    {
                        final __value__ = _i_3353474.op;
                        if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3353522i32;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3353571i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3353610i32;
                        } else {
                            _gotoNext = 3353650i32;
                        };
                    };
                } else if (__value__ == (3353522i32)) {
                    _flag_3353437 = (_flag_3353437 | ((_i_3353474.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
                    _gotoNext = 3353679i32;
                } else if (__value__ == (3353571i32)) {
                    return (255 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp);
                    _gotoNext = 3353679i32;
                } else if (__value__ == (3353610i32)) {
                    _gotoNext = 3353679i32;
                } else if (__value__ == (3353650i32)) {
                    loopBreak = true;
                    _gotoNext = 3353498i32;
                } else if (__value__ == (3353679i32)) {
                    _pc_3353451 = _i_3353474.out;
                    _i_3353474 = (stdgo.Go.setRef(_p.inst[(_pc_3353451 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
                    _gotoNext = 3353498i32;
                } else if (__value__ == (3353712i32)) {
                    return _flag_3353437;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function prefix( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog> = _p;
        var _prefix = ("" : stdgo.GoString), _complete = false;
        var _i = _p._skipNop((_p.start : stdgo.GoUInt32));
        if (((_i._op() != (7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || (_i.rune.length != (1 : stdgo.GoInt)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : stdgo.Go.str()?.__copy__(), _1 : _i.op == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) };
                _prefix = __tmp__._0;
                _complete = __tmp__._1;
                __tmp__;
            };
        };
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        while ((((_i._op() == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) && (_i.rune.length) == ((1 : stdgo.GoInt)) : Bool) && ((_i.arg : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool) && (_i.rune[(0 : stdgo.GoInt)] != (65533 : stdgo.GoInt32)) : Bool)) {
            _buf.writeRune(_i.rune[(0 : stdgo.GoInt)]);
            _i = _p._skipNop(_i.out);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : _i.op == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    static public function _skipNop( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>, _pc:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog> = _p;
        var _i = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        while (((_i.op == (6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || (_i.op == (2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) : Bool)) {
            _i = (stdgo.Go.setRef(_p.inst[(_i.out : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        };
        return _i;
    }
    @:keep
    static public function string( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog> = _p;
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        stdgo._internal.regexp.syntax.Syntax__dumpProg._dumpProg((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>), _p);
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
}
