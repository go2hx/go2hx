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
function exampleNumError():Void {
        var _str = ("Not a number" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_str?.__copy__(), (64 : stdgo.GoInt)), __0:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                var _e = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>);
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Func:" : stdgo.GoString)), stdgo.Go.toInterface(_e.func));
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Num:" : stdgo.GoString)), stdgo.Go.toInterface(_e.num));
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Err:" : stdgo.GoString)), stdgo.Go.toInterface(_e.err));
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_err));
            };
        };
    }
