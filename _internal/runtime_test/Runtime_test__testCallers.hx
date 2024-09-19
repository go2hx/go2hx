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
function _testCallers(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _pcs:stdgo.Slice<stdgo.GoUIntptr>, _pan:Bool):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames(_pcs);
        while (true) {
            var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            if (_frame.function_ != (stdgo.Go.str())) {
                _m[_frame.function_] = _frame.line;
            };
            if (!_more) {
                break;
            };
        };
        var _seen:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (_k => _ in _m) {
            _seen = (_seen.__append__(_k?.__copy__()));
        };
        _t.logf(("functions seen: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_seen, (" " : stdgo.GoString))));
        var _f3Line:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_pan) {
            _f3Line = (24 : stdgo.GoInt);
        } else {
            _f3Line = (27 : stdgo.GoInt);
        };
        var _want = (new stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_2.T__struct_2>(3, 3, ...[({ _name : ("f1" : stdgo.GoString), _line : (15 : stdgo.GoInt) } : _internal.runtime_test.Runtime_test_T__struct_2.T__struct_2), ({ _name : ("f2" : stdgo.GoString), _line : (19 : stdgo.GoInt) } : _internal.runtime_test.Runtime_test_T__struct_2.T__struct_2), ({ _name : ("f3" : stdgo.GoString), _line : _f3Line } : _internal.runtime_test.Runtime_test_T__struct_2.T__struct_2)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _line : (0 : stdgo.GoInt) } : _internal.runtime_test.Runtime_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.runtime_test.Runtime_test_T__struct_2.T__struct_2>);
        for (__14 => _w in _want) {
            {
                var _got = (_m[(("runtime_test." : stdgo.GoString) + _w._name?.__copy__() : stdgo.GoString)] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
                if (_got != (_w._line)) {
                    _t.errorf(("%s is line %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_w._name), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_w._line));
                };
            };
        };
    }
