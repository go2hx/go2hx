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
function _quote(_s:stdgo.GoString):stdgo.GoString {
        if (stdgo._internal.strconv.Strconv_canBackquote.canBackquote(_s?.__copy__())) {
            return ((("`" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__();
    }
