package _internal.syscall.js_test;
function testTruthy(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _want = (true : Bool);
        for (__6 => _key in (new stdgo.Slice<stdgo.GoString>(14, 14, ...[
("someBool" : stdgo.GoString),
("someString" : stdgo.GoString),
("someInt" : stdgo.GoString),
("someFloat" : stdgo.GoString),
("someArray" : stdgo.GoString),
("someDate" : stdgo.GoString),
("stringZero" : stdgo.GoString),
("add" : stdgo.GoString),
("emptyObj" : stdgo.GoString),
("emptyArray" : stdgo.GoString),
("Infinity" : stdgo.GoString),
("NegInfinity" : stdgo.GoString),
("objNumber0" : stdgo.GoString),
("objBooleanFalse" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            {
                var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.get(_key?.__copy__()).truthy() : Bool);
                if (_got != (_want)) {
                    _t.errorf(("%s: got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
        _want = false;
        {
            var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("zero" : stdgo.GoString)).truthy() : Bool);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var _got = (_internal.syscall.js_test.Js_test__dummys._dummys.get(("NaN" : stdgo.GoString)).truthy() : Bool);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var _got = (stdgo._internal.syscall.js.Js_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.str())).truthy() : Bool);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var _got = (stdgo._internal.syscall.js.Js_null_.null_().truthy() : Bool);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var _got = (stdgo._internal.syscall.js.Js_undefined.undefined().truthy() : Bool);
            if (_got != (_want)) {
                _t.errorf(("got %#v, want %#v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
