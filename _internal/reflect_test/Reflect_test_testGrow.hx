package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testGrow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((null : stdgo.Slice<stdgo.GoInt>)))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        _internal.reflect_test.Reflect_test__shouldPanic._shouldPanic(("reflect.Value.Grow using unaddressable value" : stdgo.GoString), function():Void {
            _v.grow((0 : stdgo.GoInt));
        });
        _v = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoInt>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>))).elem()?.__copy__();
        _v.grow((0 : stdgo.GoInt));
        if (!_v.isNil()) {
            _t.errorf(("v.Grow(0) should still be nil" : stdgo.GoString));
        };
        _v.grow((1 : stdgo.GoInt));
        if (_v.cap() == ((0 : stdgo.GoInt))) {
            _t.errorf(("v.Cap = %v, want non-zero" : stdgo.GoString), stdgo.Go.toInterface(_v.cap()));
        };
        var _want = (_v.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        _v.grow((1 : stdgo.GoInt));
        var _got = (_v.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        if (_got != (_want)) {
            _t.errorf(("noop v.Grow should not change pointers" : stdgo.GoString));
        };
        _t.run(("Append" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var __0:stdgo.Slice<_internal.reflect_test.Reflect_test_T_.T_> = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_T_.T_>), __1:stdgo.Slice<_internal.reflect_test.Reflect_test_T_.T_> = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_T_.T_>);
var _want = __1, _got = __0;
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef(_got) : stdgo.Ref<stdgo.Slice<_internal.reflect_test.Reflect_test_T_.T_>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            var _appendValue = (function(_vt:_internal.reflect_test.Reflect_test_T_.T_):Void {
                _v.grow((1 : stdgo.GoInt));
                _v.setLen((_v.len() + (1 : stdgo.GoInt) : stdgo.GoInt));
                _v.index((_v.len() - (1 : stdgo.GoInt) : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_vt))?.__copy__());
            } : _internal.reflect_test.Reflect_test_T_.T_ -> Void);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    var _vt = (new _internal.reflect_test.Reflect_test_T_.T_(_i, (_i : stdgo.GoFloat64), stdgo._internal.strconv.Strconv_itoa.itoa(_i)?.__copy__(), stdgo.Go.pointer(_i)) : _internal.reflect_test.Reflect_test_T_.T_);
                    _appendValue(_vt?.__copy__());
                    _want = (_want.__append__(_vt?.__copy__()));
                });
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                _t.errorf(("value mismatch:\ngot  %v\nwant %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        });
        _t.run(("Rate" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _b = ((_b.__slice__(0, _b.capacity) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _v.setLen(_v.cap());
                    _v.grow((1 : stdgo.GoInt));
                    if (_v.cap() != (_b.capacity)) {
                        _t.errorf(("v.Cap = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_v.cap()), stdgo.Go.toInterface(_b.capacity));
                    };
                });
            };
        });
        _t.run(("ZeroCapacity" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                    _v.grow((61 : stdgo.GoInt));
                    var _b = _v.bytes();
                    _b = (_b.__slice__(0, _b.capacity) : stdgo.Slice<stdgo.GoUInt8>);
                    for (_i => _c in _b) {
                        if (_c != ((0 : stdgo.GoUInt8))) {
                            _t.fatalf(("Value.Bytes[%d] = 0x%02x, want 0x00" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_c));
                        };
                        _b[(_i : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                    };
                    stdgo._internal.runtime.Runtime_gc.gc();
                });
            };
        });
    }
