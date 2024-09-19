package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function testAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _bg = (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_Context.Context);
        for (__0 => _test in (new stdgo.Slice<_internal.context_test.Context_test_T__struct_2.T__struct_2>(5, 5, ...[({ _desc : ("Background()" : stdgo.GoString), _f : function():Void {
            stdgo._internal.context.Context_background.background();
        }, _limit : (0 : stdgo.GoFloat64), _gccgoLimit : (0 : stdgo.GoFloat64) } : _internal.context_test.Context_test_T__struct_2.T__struct_2), ({ _desc : stdgo._internal.fmt.Fmt_sprintf.sprintf(("WithValue(bg, %v, nil)" : stdgo.GoString), stdgo.Go.toInterface(_internal.context_test.Context_test__k1._k1))?.__copy__(), _f : function():Void {
            var _c = (stdgo._internal.context.Context_withValue.withValue(_bg, stdgo.Go.toInterface(_internal.context_test.Context_test__k1._k1), (null : stdgo.AnyInterface)) : stdgo._internal.context.Context_Context.Context);
            _c.value(stdgo.Go.toInterface(_internal.context_test.Context_test__k1._k1));
        }, _limit : (3 : stdgo.GoFloat64), _gccgoLimit : (3 : stdgo.GoFloat64) } : _internal.context_test.Context_test_T__struct_2.T__struct_2), ({ _desc : ("WithTimeout(bg, 1*time.Nanosecond)" : stdgo.GoString), _f : function():Void {
            var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(_bg, (1i64 : stdgo._internal.time.Time_Duration.Duration)), _c:stdgo._internal.context.Context_Context.Context = __tmp__._0, __0:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _c.done().__get__();
        }, _limit : (12 : stdgo.GoFloat64), _gccgoLimit : (15 : stdgo.GoFloat64) } : _internal.context_test.Context_test_T__struct_2.T__struct_2), ({ _desc : ("WithCancel(bg)" : stdgo.GoString), _f : function():Void {
            var __tmp__ = stdgo._internal.context.Context_withCancel.withCancel(_bg), _c:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _cancel();
            _c.done().__get__();
        }, _limit : (5 : stdgo.GoFloat64), _gccgoLimit : (8 : stdgo.GoFloat64) } : _internal.context_test.Context_test_T__struct_2.T__struct_2), ({ _desc : ("WithTimeout(bg, 5*time.Millisecond)" : stdgo.GoString), _f : function():Void {
            var __tmp__ = stdgo._internal.context.Context_withTimeout.withTimeout(_bg, (5000000i64 : stdgo._internal.time.Time_Duration.Duration)), _c:stdgo._internal.context.Context_Context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_CancelFunc.CancelFunc = __tmp__._1;
            _cancel();
            _c.done().__get__();
        }, _limit : (8 : stdgo.GoFloat64), _gccgoLimit : (25 : stdgo.GoFloat64) } : _internal.context_test.Context_test_T__struct_2.T__struct_2)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _desc : ("" : stdgo.GoString), _f : null, _limit : (0 : stdgo.GoFloat64), _gccgoLimit : (0 : stdgo.GoFloat64) } : _internal.context_test.Context_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.context_test.Context_test_T__struct_2.T__struct_2>)) {
            var _limit = (_test._limit : stdgo.GoFloat64);
            if (false) {
                _limit = _test._gccgoLimit;
            };
            var _numRuns = (100 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                _numRuns = (10 : stdgo.GoInt);
            };
            {
                var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun(_numRuns, _test._f) : stdgo.GoFloat64);
                if ((_n > _limit : Bool)) {
                    _t.errorf(("%s allocs = %f want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._desc), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_limit : stdgo.GoInt)));
                };
            };
        };
    }
