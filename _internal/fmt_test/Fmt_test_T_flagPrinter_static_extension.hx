package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_flagPrinter_asInterface) class T_flagPrinter_static_extension {
    @:keep
    static public function format( _:_internal.fmt_test.Fmt_test_T_flagPrinter.T_flagPrinter, _f:stdgo._internal.fmt.Fmt_State.State, _c:stdgo.GoInt32):Void {
        @:recv var _:_internal.fmt_test.Fmt_test_T_flagPrinter.T_flagPrinter = _?.__copy__();
        var _s = ("%" : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (128 : stdgo.GoInt) : Bool), _i++, {
                if (_f.flag(_i)) {
                    _s = (_s + (((_i : stdgo.GoInt32) : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
            });
        };
        {
            var __tmp__ = _f.width(), _w:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_w)))?.__copy__() : stdgo.GoString);
            };
        };
        {
            var __tmp__ = _f.precision(), _p:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf((".%d" : stdgo.GoString), stdgo.Go.toInterface(_p)))?.__copy__() : stdgo.GoString);
            };
        };
        _s = (_s + ((_c : stdgo.GoString))?.__copy__() : stdgo.GoString);
        stdgo._internal.io.Io_writeString.writeString(_f, ((("[" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("]" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
    }
}
