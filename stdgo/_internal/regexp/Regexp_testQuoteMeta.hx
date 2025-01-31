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
function testQuoteMeta(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tc in stdgo._internal.regexp.Regexp__metaTests._metaTests) {
            var _quoted = (stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_tc._pattern?.__copy__())?.__copy__() : stdgo.GoString);
            if (_quoted != (_tc._output)) {
                @:check2r _t.errorf(("QuoteMeta(`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_quoted), stdgo.Go.toInterface(_tc._output));
                continue;
            };
            if (_tc._pattern != (stdgo.Go.str())) {
                var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_quoted?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.errorf(("Unexpected error compiling QuoteMeta(`%s`): %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                    continue;
                };
                var _src = (((("abc" : stdgo.GoString) + _tc._pattern?.__copy__() : stdgo.GoString) + ("def" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _repl = ("xyz" : stdgo.GoString);
                var _replaced = (@:check2r _re.replaceAllString(_src?.__copy__(), _repl?.__copy__())?.__copy__() : stdgo.GoString);
                var _expected = ("abcxyzdef" : stdgo.GoString);
                if (_replaced != (_expected)) {
                    @:check2r _t.errorf(("QuoteMeta(`%s`).Replace(`%s`,`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_repl), stdgo.Go.toInterface(_replaced), stdgo.Go.toInterface(_expected));
                };
            };
        };
    }
