package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testComplexFormatting(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _yesNo:stdgo.Slice<Bool> = (new stdgo.Slice<Bool>(2, 2, ...[true, false]) : stdgo.Slice<Bool>);
        var _values:stdgo.Slice<stdgo.GoFloat64> = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[(1 : stdgo.GoFloat64), (0 : stdgo.GoFloat64), (-1 : stdgo.GoFloat64), _internal.fmt_test.Fmt_test__posInf._posInf, _internal.fmt_test.Fmt_test__negInf._negInf, _internal.fmt_test.Fmt_test_naN.naN]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        for (__3 => _plus in _yesNo) {
            for (__4 => _zero in _yesNo) {
                for (__5 => _space in _yesNo) {
                    for (__6 => _char in ("fFeEgG" : stdgo.GoString)) {
                        var _realFmt = ("%" : stdgo.GoString);
                        if (_zero) {
                            _realFmt = (_realFmt + (("0" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        if (_space) {
                            _realFmt = (_realFmt + ((" " : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        if (_plus) {
                            _realFmt = (_realFmt + (("+" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        _realFmt = (_realFmt + (("10.2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        _realFmt = (_realFmt + ((_char : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        var _imagFmt = ("%" : stdgo.GoString);
                        if (_zero) {
                            _imagFmt = (_imagFmt + (("0" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        };
                        _imagFmt = (_imagFmt + (("+" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        _imagFmt = (_imagFmt + (("10.2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        _imagFmt = (_imagFmt + ((_char : stdgo.GoString))?.__copy__() : stdgo.GoString);
                        for (__7 => _realValue in _values) {
                            for (__8 => _imagValue in _values) {
                                var _one = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_realFmt?.__copy__(), stdgo.Go.toInterface(new stdgo.GoComplex128(_realValue, _imagValue)))?.__copy__() : stdgo.GoString);
                                var _two = (stdgo._internal.fmt.Fmt_sprintf.sprintf((((("(" : stdgo.GoString) + _realFmt?.__copy__() : stdgo.GoString) + _imagFmt?.__copy__() : stdgo.GoString) + ("i)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_realValue), stdgo.Go.toInterface(_imagValue))?.__copy__() : stdgo.GoString);
                                if (_one != (_two)) {
                                    _t.error(stdgo.Go.toInterface(_internal.fmt_test.Fmt_test__f._f), stdgo.Go.toInterface(_one), stdgo.Go.toInterface(_two));
                                };
                            };
                        };
                    };
                };
            };
        };
    }
