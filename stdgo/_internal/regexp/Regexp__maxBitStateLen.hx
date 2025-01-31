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
function _maxBitStateLen(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>):stdgo.GoInt {
        if (!stdgo._internal.regexp.Regexp__shouldBacktrack._shouldBacktrack(_prog)) {
            return (0 : stdgo.GoInt);
        };
        return ((262144 : stdgo.GoInt) / ((@:checkr _prog ?? throw "null pointer dereference").inst.length) : stdgo.GoInt);
    }
