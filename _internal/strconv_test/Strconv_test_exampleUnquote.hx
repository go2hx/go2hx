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
function exampleUnquote():Void {
        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(("You can\'t unquote a string without quotes" : stdgo.GoString)), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_printf.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(("\"The string must be either double-quoted\"" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(("`or backquoted.`" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(("\'☺\'" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(("\'☹☹\'" : stdgo.GoString));
            _s = __tmp__._0?.__copy__();
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%q, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
    }
