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
function _onePassNext(_i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>, _r:stdgo.GoInt32):stdgo.GoUInt32 {
        var _next = (@:check2r _i.matchRunePos(_r) : stdgo.GoInt);
        if ((_next >= (0 : stdgo.GoInt) : Bool)) {
            return (@:checkr _i ?? throw "null pointer dereference").next[(_next : stdgo.GoInt)];
        };
        if ((@:checkr _i ?? throw "null pointer dereference").inst.op == ((1 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))) {
            return (@:checkr _i ?? throw "null pointer dereference").inst.out;
        };
        return (0u32 : stdgo.GoUInt32);
    }
