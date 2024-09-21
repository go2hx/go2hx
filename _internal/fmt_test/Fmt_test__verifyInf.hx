package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function _verifyInf(_str:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _f:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _f32:stdgo.GoFloat32 = (0 : stdgo.GoFloat32);
        var _f64:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _text = (((((_str + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _str?.__copy__() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _str?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_text?.__copy__())), stdgo.Go.toInterface(stdgo.Go.pointer(_f)), stdgo.Go.toInterface(stdgo.Go.pointer(_f32)), stdgo.Go.toInterface(stdgo.Go.pointer(_f64))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("got error scanning %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_err));
        };
        if (_n != ((3 : stdgo.GoInt))) {
            _t.errorf(("count error scanning %q: got %d" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_n));
        };
        var _sign = (1 : stdgo.GoInt);
        if (_str[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _sign = (-1 : stdgo.GoInt);
        };
        if (((!stdgo._internal.math.Math_isInf.isInf((_f : stdgo.GoFloat64), _sign) || !stdgo._internal.math.Math_isInf.isInf((_f32 : stdgo.GoFloat64), _sign) : Bool) || !stdgo._internal.math.Math_isInf.isInf(_f64, _sign) : Bool)) {
            _t.errorf(("didn\'t get right Infs scanning %q: got %g %g %g" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f32), stdgo.Go.toInterface(_f64));
        };
    }
