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
function benchmarkFindStringSubmatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        @:check2r _b.stopTimer();
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a(a+b+)b" : stdgo.GoString));
        var _wantSubs = ("aaabb" : stdgo.GoString);
        var _s = (((("acbb" : stdgo.GoString) + _wantSubs?.__copy__() : stdgo.GoString) + ("dd" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        @:check2r _b.startTimer();
        @:check2r _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _subs = @:check2r _re.findStringSubmatch(_s.__copy__());
if (_subs[(0 : stdgo.GoInt)] != (_wantSubs)) {
                    @:check2r _b.fatalf(("FindStringSubmatch(%q)[0] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_wantSubs));
                };
if (_subs[(1 : stdgo.GoInt)] != (("aab" : stdgo.GoString))) {
                    @:check2r _b.fatalf(("FindStringSubmatch(%q)[1] = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_subs[(1 : stdgo.GoInt)]), stdgo.Go.toInterface(("aab" : stdgo.GoString)));
                };
                _i++;
            };
        };
    }
