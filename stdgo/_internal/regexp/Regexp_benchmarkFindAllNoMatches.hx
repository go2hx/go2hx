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
function benchmarkFindAllNoMatches(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a+b+" : stdgo.GoString));
        var _s = (("acddee" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _b.reportAllocs();
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _all = @:check2r _re.findAll(_s, (-1 : stdgo.GoInt));
if (_all != null) {
                    @:check2r _b.fatalf(("FindAll(%q) = %q; want nil" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_all));
                };
                _i++;
            };
        };
    }
