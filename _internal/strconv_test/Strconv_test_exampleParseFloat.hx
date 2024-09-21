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
function exampleParseFloat():Void {
        var _v = ("3.1415926535" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_v?.__copy__(), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_v?.__copy__(), (64 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("NaN" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("nan" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("inf" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("+Inf" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("-Inf" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("-0" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(("+0" : stdgo.GoString), (32 : stdgo.GoInt)), _s:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                stdgo._internal.fmt.Fmt_printf.printf(("%T, %v\n" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_s));
            };
        };
    }
