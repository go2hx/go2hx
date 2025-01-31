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
function testRunOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__onePassTests1._onePassTests1) {
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_test._re?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("Compile(%q): got err: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                continue;
            };
            if (((@:checkr _re ?? throw "null pointer dereference")._onepass == null || ((@:checkr _re ?? throw "null pointer dereference")._onepass : Dynamic).__nil__)) {
                @:check2r _t.errorf(("Compile(%q): got nil, want one-pass" : stdgo.GoString), stdgo.Go.toInterface(_test._re));
                continue;
            };
            if (!@:check2r _re.matchString(_test._match?.__copy__())) {
                @:check2r _t.errorf(("onepass %q did not match %q" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_test._match));
            };
        };
    }
