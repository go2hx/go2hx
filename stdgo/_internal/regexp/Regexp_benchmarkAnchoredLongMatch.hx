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
function benchmarkAnchoredLongMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        @:check2r _b.stopTimer();
        var _x = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (15 : stdgo.GoInt) : Bool)) {
                _x = (_x.__append__(...(_x : Array<stdgo.GoUInt8>)));
                _i++;
            };
        };
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("^.bc(d|e)" : stdgo.GoString));
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _re.match(_x);
                _i++;
            };
        };
    }
