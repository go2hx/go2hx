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
function testLongest(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(("a(|b)" : stdgo.GoString)), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __0 = (@:check2r _re.findString(("ab" : stdgo.GoString))?.__copy__() : stdgo.GoString), __1 = ("a" : stdgo.GoString);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                @:check2r _t.errorf(("first match was %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
        @:check2r _re.longest();
        {
            var __0 = (@:check2r _re.findString(("ab" : stdgo.GoString))?.__copy__() : stdgo.GoString), __1 = ("ab" : stdgo.GoString);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                @:check2r _t.errorf(("longest match was %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }
