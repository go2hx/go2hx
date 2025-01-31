package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
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
