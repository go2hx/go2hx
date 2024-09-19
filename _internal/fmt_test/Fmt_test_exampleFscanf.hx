package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function exampleFscanf():Void {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:Bool = false, __2:stdgo.GoString = ("" : stdgo.GoString);
var _s = __2, _b = __1, _i = __0;
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("5 true gophers" : stdgo.GoString));
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface(_r), ("%d %t %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_i)), stdgo.Go.toInterface(stdgo.Go.pointer(_b)), stdgo.Go.toInterface(stdgo.Go.pointer(_s))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("Fscanf: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_s));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_n));
    }
