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
function _cleanupOnePass(_prog:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassProg.T_onePassProg>, _original:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):Void {
        for (_ix => _instOriginal in (@:checkr _original ?? throw "null pointer dereference").inst) {
            {
                final __value__ = _instOriginal.op;
                if (__value__ == ((0 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {} else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                    (@:checkr _prog ?? throw "null pointer dereference").inst[(_ix : stdgo.GoInt)].next = (null : stdgo.Slice<stdgo.GoUInt32>);
                } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
                    (@:checkr _prog ?? throw "null pointer dereference").inst[(_ix : stdgo.GoInt)].next = (null : stdgo.Slice<stdgo.GoUInt32>);
                    (@:checkr _prog ?? throw "null pointer dereference").inst[(_ix : stdgo.GoInt)] = ({ inst : _instOriginal?.__copy__() } : stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst);
                };
            };
        };
    }
