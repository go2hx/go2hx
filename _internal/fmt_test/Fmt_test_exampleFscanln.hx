package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function exampleFscanln():Void {
        var _s = ("dmr 1771 1.61803398875\n\tken 271828 3.14159" : stdgo.GoString);
        var _r = stdgo._internal.strings.Strings_newReader.newReader(_s?.__copy__());
        var _a:stdgo.GoString = ("" : stdgo.GoString);
        var _b:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        while (true) {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanln.fscanln(stdgo.Go.asInterface(_r), stdgo.Go.toInterface(stdgo.Go.pointer(_a)), stdgo.Go.toInterface(stdgo.Go.pointer(_b)), stdgo.Go.toInterface(stdgo.Go.pointer(_c))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                break;
            };
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            stdgo._internal.fmt.Fmt_printf.printf(("%d: %s, %d, %f\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_c));
        };
    }
