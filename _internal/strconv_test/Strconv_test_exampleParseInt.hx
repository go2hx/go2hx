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
function exampleParseInt():Void {
        var _v32 = ("-354634382" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_v32?.__copy__(), (10 : stdgo.GoInt), (32 : stdgo.GoInt)), _s:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_v32?.__copy__(), (16 : stdgo.GoInt), (32 : stdgo.GoInt)), _s:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        var _v64 = ("-3546343826724305832" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_v64?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _s:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_v64?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt)), _s:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
