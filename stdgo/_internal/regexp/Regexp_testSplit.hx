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
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.regexp.Regexp__splitTests._splitTests) {
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_test._r?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("#%d: %q: compile error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_err.error()));
                continue;
            };
            var _split = @:check2r _re.split(_test._s?.__copy__(), _test._n);
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_test._out))) {
                @:check2r _t.errorf(("#%d: %q: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_test._out));
            };
            if (stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_test._r?.__copy__()) == (_test._r)) {
                var _strsplit = stdgo._internal.strings.Strings_splitN.splitN(_test._s?.__copy__(), _test._r?.__copy__(), _test._n);
                if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_strsplit))) {
                    @:check2r _t.errorf(("#%d: Split(%q, %q, %d): regexp vs strings mismatch\nregexp=%q\nstrings=%q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_test._n), stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_strsplit));
                };
            };
        };
    }
