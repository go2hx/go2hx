package stdgo._internal.regexp.syntax;
function _dumpProg(_b:stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):Void {
        for (_j => _ in _p.inst) {
            var _i = (stdgo.Go.setRef(_p.inst[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>);
            var _pc = (stdgo._internal.strconv.Strconv_itoa.itoa(_j)?.__copy__() : stdgo.GoString);
            if (((_pc.length) < (3 : stdgo.GoInt) : Bool)) {
                _b.writeString((("   " : stdgo.GoString).__slice__((_pc.length)) : stdgo.GoString)?.__copy__());
            };
            if (_j == (_p.start)) {
                _pc = (_pc + (("*" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, _pc?.__copy__(), ("\t" : stdgo.GoString));
            stdgo._internal.regexp.syntax.Syntax__dumpInst._dumpInst(_b, _i);
            stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("\n" : stdgo.GoString));
        };
    }
