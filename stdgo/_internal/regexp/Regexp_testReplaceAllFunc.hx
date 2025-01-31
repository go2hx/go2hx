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
function testReplaceAllFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tc in stdgo._internal.regexp.Regexp__replaceFuncTests._replaceFuncTests) {
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_tc._pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("Unexpected error compiling %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            var _actual = (@:check2r _re.replaceAllStringFunc(_tc._input?.__copy__(), _tc._replacement)?.__copy__() : stdgo.GoString);
            if (_actual != (_tc._output)) {
                @:check2r _t.errorf(("%q.ReplaceFunc(%q,fn) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
            _actual = (@:check2r _re.replaceAllFunc((_tc._input : stdgo.Slice<stdgo.GoUInt8>), function(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
                return (_tc._replacement((_s : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoUInt8>);
            }) : stdgo.GoString)?.__copy__();
            if (_actual != (_tc._output)) {
                @:check2r _t.errorf(("%q.ReplaceFunc(%q,fn) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
        };
    }
