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
function benchmarkQuoteMetaAll(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _specials = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
            while ((_i < (128 : stdgo.GoUInt8) : Bool)) {
                if (stdgo._internal.regexp.Regexp__special._special(_i)) {
                    _specials = (_specials.__append__(_i));
                };
                _i++;
            };
        };
        var _s = ((_specials : stdgo.GoString)?.__copy__() : stdgo.GoString);
        @:check2r _b.setBytes((_s.length : stdgo.GoInt64));
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.regexp.Regexp__sink._sink = stdgo._internal.regexp.Regexp_quoteMeta.quoteMeta(_s.__copy__()).__copy__();
                _i++;
            };
        };
    }
