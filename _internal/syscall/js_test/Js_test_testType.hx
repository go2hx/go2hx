package _internal.syscall.js_test;
function testType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var __0 = (stdgo._internal.syscall.js.Js_undefined.undefined().type() : stdgo._internal.syscall.js.Js_Type_.Type_), __1 = (0 : stdgo._internal.syscall.js.Js_Type_.Type_);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (stdgo._internal.syscall.js.Js_null_.null_().type() : stdgo._internal.syscall.js.Js_Type_.Type_), __1 = (1 : stdgo._internal.syscall.js.Js_Type_.Type_);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (stdgo._internal.syscall.js.Js_valueOf.valueOf(stdgo.Go.toInterface(true)).type() : stdgo._internal.syscall.js.Js_Type_.Type_), __1 = (2 : stdgo._internal.syscall.js.Js_Type_.Type_);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (stdgo._internal.syscall.js.Js_valueOf.valueOf(stdgo.Go.toInterface((0 : stdgo.GoInt))).type() : stdgo._internal.syscall.js.Js_Type_.Type_), __1 = (3 : stdgo._internal.syscall.js.Js_Type_.Type_);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (stdgo._internal.syscall.js.Js_valueOf.valueOf(stdgo.Go.toInterface((42 : stdgo.GoInt))).type() : stdgo._internal.syscall.js.Js_Type_.Type_), __1 = (3 : stdgo._internal.syscall.js.Js_Type_.Type_);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (stdgo._internal.syscall.js.Js_valueOf.valueOf(stdgo.Go.toInterface(("test" : stdgo.GoString))).type() : stdgo._internal.syscall.js.Js_Type_.Type_), __1 = (4 : stdgo._internal.syscall.js.Js_Type_.Type_);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (stdgo._internal.syscall.js.Js_global.global().get(("Symbol" : stdgo.GoString)).invoke(stdgo.Go.toInterface(("test" : stdgo.GoString))).type() : stdgo._internal.syscall.js.Js_Type_.Type_), __1 = (5 : stdgo._internal.syscall.js.Js_Type_.Type_);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (stdgo._internal.syscall.js.Js_global.global().get(("Array" : stdgo.GoString)).new_().type() : stdgo._internal.syscall.js.Js_Type_.Type_), __1 = (6 : stdgo._internal.syscall.js.Js_Type_.Type_);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
        {
            var __0 = (stdgo._internal.syscall.js.Js_global.global().get(("Array" : stdgo.GoString)).type() : stdgo._internal.syscall.js.Js_Type_.Type_), __1 = (7 : stdgo._internal.syscall.js.Js_Type_.Type_);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
