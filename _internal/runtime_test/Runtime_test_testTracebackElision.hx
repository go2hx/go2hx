package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testTracebackElision(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__6 => _elided in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (10 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            _t.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("elided=%d" : stdgo.GoString), stdgo.Go.toInterface(_elided))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _n = ((_elided + (50 : stdgo.GoInt) : stdgo.GoInt) + (50 : stdgo.GoInt) : stdgo.GoInt);
                var _stackChan = (new stdgo.Chan<stdgo.GoString>(0, () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
                stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__tteStack._tteStack(_n, _stackChan));
                var _stack = (_stackChan.__get__()?.__copy__() : stdgo.GoString);
                var _tb = _internal.runtime_test.Runtime_test__parseTraceback1._parseTraceback1(_t, _stack?.__copy__());
                var _i = (0 : stdgo.GoInt);
                while ((_i < _n : Bool)) {
                    if ((_tb._frames.length) == ((0 : stdgo.GoInt))) {
                        _t.errorf(("traceback ended early" : stdgo.GoString));
                        break;
                    };
                    var _fr = _tb._frames[(0 : stdgo.GoInt)];
                    if (((_i == (50 : stdgo.GoInt)) && (_elided > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        if (_fr._elided != (_elided)) {
                            _t.errorf(("want %d frames elided" : stdgo.GoString), stdgo.Go.toInterface(_elided));
                            break;
                        };
                        _i = (_i + (_fr._elided) : stdgo.GoInt);
                    } else {
                        var _want = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("runtime_test.tte%d" : stdgo.GoString), stdgo.Go.toInterface((((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) % (5 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__() : stdgo.GoString);
                        if (_i == ((0 : stdgo.GoInt))) {
                            _want = ("runtime/debug.Stack" : stdgo.GoString);
                        } else if (_i == ((_n - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                            _want = ("runtime_test.tteStack" : stdgo.GoString);
                        };
                        if (_fr._funcName != (_want)) {
                            _t.errorf(("want %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_fr._funcName));
                            break;
                        };
                        _i++;
                    };
                    _tb._frames = (_tb._frames.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.runtime_test.Runtime_test_T_tbFrame.T_tbFrame>>);
                };
                if ((!_t.failed() && ((_tb._frames.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _t.errorf(("got %d more frames than expected" : stdgo.GoString), stdgo.Go.toInterface((_tb._frames.length)));
                };
                if (_t.failed()) {
                    _t.logf(("traceback diverged at frame %d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                    var _off = (_stack.length : stdgo.GoInt);
                    if (((_tb._frames.length) > (0 : stdgo.GoInt) : Bool)) {
                        _off = _tb._frames[(0 : stdgo.GoInt)]._off;
                    };
                    _t.logf(("traceback before error:\n%s" : stdgo.GoString), stdgo.Go.toInterface((_stack.__slice__(0, _off) : stdgo.GoString)));
                    _t.logf(("traceback after error:\n%s" : stdgo.GoString), stdgo.Go.toInterface((_stack.__slice__(_off) : stdgo.GoString)));
                };
            });
        };
    }
