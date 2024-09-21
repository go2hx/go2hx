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
@:keep @:allow(_internal.runtime_test.Runtime_test.T_float64Stream_asInterface) class T_float64Stream_static_extension {
    @:keep
    static public function _limit( _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, _min:stdgo.GoFloat64, _max:stdgo.GoFloat64):_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream {
        @:recv var _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = _f;
        return function():stdgo.GoFloat64 {
            var _v = (_f() : stdgo.GoFloat64);
            if ((_v < _min : Bool)) {
                _v = _min;
            } else if ((_v > _max : Bool)) {
                _v = _max;
            };
            return _v;
        };
    }
    @:keep
    static public function _max( _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, _max:stdgo.GoFloat64):_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream {
        @:recv var _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = _f;
        return function():stdgo.GoFloat64 {
            return stdgo._internal.math.Math_min.min(_max, _f());
        };
    }
    @:keep
    static public function _min( _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, _min:stdgo.GoFloat64):_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream {
        @:recv var _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = _f;
        return function():stdgo.GoFloat64 {
            return stdgo._internal.math.Math_max.max(_min, _f());
        };
    }
    @:keep
    static public function _quantize( _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, _mult:stdgo.GoFloat64):_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream {
        @:recv var _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = _f;
        return function():stdgo.GoFloat64 {
            var _r = (_f() / _mult : stdgo.GoFloat64);
            if ((_r < (0 : stdgo.GoFloat64) : Bool)) {
                return (stdgo._internal.math.Math_ceil.ceil(_r) * _mult : stdgo.GoFloat64);
            };
            return (stdgo._internal.math.Math_floor.floor(_r) * _mult : stdgo.GoFloat64);
        };
    }
    @:keep
    static public function _sum( _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, _fs:haxe.Rest<_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream>):_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream {
        var _fs = new stdgo.Slice<_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream>(_fs.length, 0, ..._fs);
        @:recv var _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = _f;
        return function():stdgo.GoFloat64 {
            var _sum = (_f() : stdgo.GoFloat64);
            for (__6 => _s in _fs) {
                _sum = (_sum + (_s()) : stdgo.GoFloat64);
            };
            return _sum;
        };
    }
    @:keep
    static public function _offset( _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, _amt:stdgo.GoFloat64):_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream {
        @:recv var _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = _f;
        return function():stdgo.GoFloat64 {
            var _old = (_f() : stdgo.GoFloat64);
            return (_old + _amt : stdgo.GoFloat64);
        };
    }
    @:keep
    static public function _scale( _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, _amt:stdgo.GoFloat64):_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream {
        @:recv var _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = _f;
        return function():stdgo.GoFloat64 {
            return (_f() * _amt : stdgo.GoFloat64);
        };
    }
    @:keep
    static public function _delay( _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream, _cycles:stdgo.GoInt):_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream {
        @:recv var _f:_internal.runtime_test.Runtime_test_T_float64Stream.T_float64Stream = _f;
        var _zeroes = (0 : stdgo.GoInt);
        return function():stdgo.GoFloat64 {
            if ((_zeroes < _cycles : Bool)) {
                _zeroes++;
                return (0 : stdgo.GoFloat64);
            };
            return _f();
        };
    }
}
