package stdgo._internal.regexp;
function _onePassPrefix(_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.GoUInt32; } {
        var _prefix = ("" : stdgo.GoString), _complete = false, _pc = (0 : stdgo.GoUInt32);
        var _i = (stdgo.Go.setRef(_p.inst[(_p.start : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        if (((_i.op != (3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || ((((_i.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) & (4 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) == (0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : Bool)) {
            return { _0 : _prefix = stdgo.Go.str()?.__copy__(), _1 : _complete = _i.op == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)), _2 : _pc = (_p.start : stdgo.GoUInt32) };
        };
        _pc = _i.out;
        _i = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        while (_i.op == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
            _pc = _i.out;
            _i = (stdgo.Go.setRef(_p.inst[(_pc : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
        };
        if (((stdgo._internal.regexp.Regexp__iop._iop(_i) != (7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || (_i.rune.length != (1 : stdgo.GoInt)) : Bool)) {
            return { _0 : _prefix = stdgo.Go.str()?.__copy__(), _1 : _complete = _i.op == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)), _2 : _pc = (_p.start : stdgo.GoUInt32) };
        };
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        while ((((stdgo._internal.regexp.Regexp__iop._iop(_i) == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) && (_i.rune.length) == ((1 : stdgo.GoInt)) : Bool) && ((_i.arg : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) : stdgo._internal.regexp.syntax.Syntax_Flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)) : Bool) && (_i.rune[(0 : stdgo.GoInt)] != (65533 : stdgo.GoInt32)) : Bool)) {
            _buf.writeRune(_i.rune[(0 : stdgo.GoInt)]);
            {
                final __tmp__0 = _i.out;
                final __tmp__1 = (stdgo.Go.setRef(_p.inst[(_i.out : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
                _pc = __tmp__0;
                _i = __tmp__1;
            };
        };
        if (((_i.op == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) && ((_i.arg : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) & (8 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp)) : Bool) && (_p.inst[(_i.out : stdgo.GoInt)].op == (4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) : Bool)) {
            _complete = true;
        };
        return { _0 : _prefix = (_buf.string() : stdgo.GoString)?.__copy__(), _1 : _complete, _2 : _pc };
    }
