package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Prog_asInterface) class Prog_static_extension {
    @:keep
    @:tdfield
    static public function startCond( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var loopBreak = false;
        var _i_44:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        var _pc_43:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _flag_42:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _pc_43 = ((@:checkr _p ?? throw "null pointer dereference").start : stdgo.GoUInt32);
                    _i_44 = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[(_pc_43 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3652693i32;
                } else if (__value__ == (3652693i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3652700i32;
                } else if (__value__ == (3652700i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3652704i32;
                    } else {
                        _gotoNext = 3652914i32;
                    };
                } else if (__value__ == (3652704i32)) {
                    _gotoNext = 3652708i32;
                } else if (__value__ == (3652708i32)) {
                    {
                        final __value__ = (@:checkr _i_44 ?? throw "null pointer dereference").op;
                        if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3652724i32;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3652773i32;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3652812i32;
                        } else {
                            _gotoNext = 3652852i32;
                        };
                    };
                } else if (__value__ == (3652724i32)) {
                    _flag_42 = (_flag_42 | (((@:checkr _i_44 ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
                    _gotoNext = 3652881i32;
                } else if (__value__ == (3652773i32)) {
                    return (255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
                    _gotoNext = 3652881i32;
                } else if (__value__ == (3652812i32)) {
                    _gotoNext = 3652881i32;
                } else if (__value__ == (3652852i32)) {
                    loopBreak = true;
                    _gotoNext = 3652700i32;
                } else if (__value__ == (3652881i32)) {
                    _pc_43 = (@:checkr _i_44 ?? throw "null pointer dereference").out;
                    _i_44 = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[(_pc_43 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3652700i32;
                } else if (__value__ == (3652914i32)) {
                    return _flag_42;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function prefix( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var _prefix = ("" : stdgo.GoString), _complete = false;
        var _i = @:check2r _p._skipNop(((@:checkr _p ?? throw "null pointer dereference").start : stdgo.GoUInt32));
        if (((@:check2r _i._op() != (7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((@:checkr _i ?? throw "null pointer dereference").rune.length != (1 : stdgo.GoInt)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (@:checkr _i ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) };
                _prefix = __tmp__._0;
                _complete = __tmp__._1;
                __tmp__;
            };
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        while ((((@:check2r _i._op() == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) && ((@:checkr _i ?? throw "null pointer dereference").rune.length) == ((1 : stdgo.GoInt)) : Bool) && (((@:checkr _i ?? throw "null pointer dereference").arg : stdgo._internal.regexp.syntax.Syntax_flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : Bool) && ((@:checkr _i ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] != (65533 : stdgo.GoInt32)) : Bool)) {
            @:check2 _buf.writeRune((@:checkr _i ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)]);
            _i = @:check2r _p._skipNop((@:checkr _i ?? throw "null pointer dereference").out);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (@:check2 _buf.string() : stdgo.GoString)?.__copy__(), _1 : (@:checkr _i ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _skipNop( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, _pc:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var _i = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        while ((((@:checkr _i ?? throw "null pointer dereference").op == (6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((@:checkr _i ?? throw "null pointer dereference").op == (2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool)) {
            _i = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[((@:checkr _i ?? throw "null pointer dereference").out : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        };
        return _i;
    }
    @:keep
    @:tdfield
    static public function string( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        stdgo._internal.regexp.syntax.Syntax__dumpprog._dumpProg((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _p);
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
}
