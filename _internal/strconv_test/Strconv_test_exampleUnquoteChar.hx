package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function exampleUnquoteChar():Void {
        var __tmp__ = stdgo._internal.strconv.Strconv_unquoteChar.unquoteChar(("\\\"Fran & Freddie\'s Diner\\\"" : stdgo.GoString), (34 : stdgo.GoUInt8)), _v:stdgo.GoInt32 = __tmp__._0, _mb:Bool = __tmp__._1, _t:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("value:" : stdgo.GoString)), stdgo.Go.toInterface((_v : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("multibyte:" : stdgo.GoString)), stdgo.Go.toInterface(_mb));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("tail:" : stdgo.GoString)), stdgo.Go.toInterface(_t));
    }
