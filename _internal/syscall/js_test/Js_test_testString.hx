package _internal.syscall.js_test;
function testString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _want = ("abcሴ" : stdgo.GoString);
        var _o = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("someString" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        {
            var _got = ((_o.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        _internal.syscall.js_test.Js_test__dummys._dummys.set(("otherString" : stdgo.GoString), stdgo.Go.toInterface(_want));
        {
            var _got = ((_internal.syscall.js_test.Js_test__dummys._dummys.get(("otherString" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        if (!_internal.syscall.js_test.Js_test__dummys._dummys.get(("someString" : stdgo.GoString)).equal(_internal.syscall.js_test.Js_test__dummys._dummys.get(("someString" : stdgo.GoString))?.__copy__())) {
            _t.errorf(("same value not equal" : stdgo.GoString));
        };
        {
            var __0 = ((stdgo._internal.syscall.js.Js_undefined.undefined().string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("<undefined>" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = ((stdgo._internal.syscall.js.Js_null_.null_().string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("<null>" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = ((stdgo._internal.syscall.js.Js_valueOf.valueOf(stdgo.Go.toInterface(true)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("<boolean: true>" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = ((stdgo._internal.syscall.js.Js_valueOf.valueOf(stdgo.Go.toInterface((42.5 : stdgo.GoFloat64))).string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("<number: 42.5>" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = ((stdgo._internal.syscall.js.Js_global.global().call(("Symbol" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("<symbol>" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = ((stdgo._internal.syscall.js.Js_global.global().string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("<object>" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = ((stdgo._internal.syscall.js.Js_global.global().get(("setTimeout" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("<function>" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
