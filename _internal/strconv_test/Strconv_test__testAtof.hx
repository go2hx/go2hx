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
function _testAtof(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _opt:Bool):Void {
        _internal.strconv_test.Strconv_test__initAtof._initAtof();
        var _oldopt = (stdgo._internal.strconv.Strconv_setOptimize.setOptimize(_opt) : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_internal.strconv_test.Strconv_test__atoftests._atoftests.length) : Bool), _i++, {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__atoftests._atoftests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_atofTest.T_atofTest>);
                var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_test._in?.__copy__(), (64 : stdgo.GoInt)), _out:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _outs = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_out, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                if (((_outs != _test._out) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err)) : Bool)) {
                    _t.errorf(("ParseFloat(%v, 64) = %v, %v want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err));
                };
                if (((_out : stdgo.GoFloat32) : stdgo.GoFloat64) == (_out)) {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_test._in?.__copy__(), (32 : stdgo.GoInt)), _out:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    var _out32 = (_out : stdgo.GoFloat32);
                    if ((_out32 : stdgo.GoFloat64) != (_out)) {
                        _t.errorf(("ParseFloat(%v, 32) = %v, not a float32 (closest is %v)" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface((_out32 : stdgo.GoFloat64)));
                        continue;
                    };
                    var _outs = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat((_out32 : stdgo.GoFloat64), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (32 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                    if (((_outs != _test._out) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err)) : Bool)) {
                        _t.errorf(("ParseFloat(%v, 32) = %v, %v want %v, %v  # %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out32), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_out));
                    };
                };
            });
        };
        for (__0 => _test in _internal.strconv_test.Strconv_test__atof32tests._atof32tests) {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_test._in?.__copy__(), (32 : stdgo.GoInt)), _out:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _out32 = (_out : stdgo.GoFloat32);
            if ((_out32 : stdgo.GoFloat64) != (_out)) {
                _t.errorf(("ParseFloat(%v, 32) = %v, not a float32 (closest is %v)" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface((_out32 : stdgo.GoFloat64)));
                continue;
            };
            var _outs = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat((_out32 : stdgo.GoFloat64), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (32 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            if (((_outs != _test._out) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._err)) : Bool)) {
                _t.errorf(("ParseFloat(%v, 32) = %v, %v want %v, %v  # %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_out32), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_out));
            };
        };
        stdgo._internal.strconv.Strconv_setOptimize.setOptimize(_oldopt);
    }
