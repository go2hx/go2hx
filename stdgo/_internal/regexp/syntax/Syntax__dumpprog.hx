package stdgo._internal.regexp.syntax;
function _dumpProg(_b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L297"
        for (_j => _ in (@:checkr _p ?? throw "null pointer dereference").inst) {
            var _i = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").inst[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
            var _pc = (stdgo._internal.strconv.Strconv_itoa.itoa(_j)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L300"
            if (((_pc.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L301"
                _b.writeString((("   " : stdgo.GoString).__slice__((_pc.length)) : stdgo.GoString)?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L303"
            if (_j == ((@:checkr _p ?? throw "null pointer dereference").start)) {
                _pc = (_pc + (("*" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L306"
            stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, _pc?.__copy__(), ("\t" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L307"
            stdgo._internal.regexp.syntax.Syntax__dumpinst._dumpInst(_b, _i);
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/prog.go#L308"
            stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("\n" : stdgo.GoString));
        };
    }
