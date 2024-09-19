package _internal.syscall.js_test;
function benchmarkDOM(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _document = (stdgo._internal.syscall.js.Js_global.global().get(("document" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        if (_document.isUndefined()) {
            _b.skip(stdgo.Go.toInterface(("Not a browser environment. Skipping." : stdgo.GoString)));
        };
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _div = (_document.call(("createElement" : stdgo.GoString), stdgo.Go.toInterface(("div" : stdgo.GoString)))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
                _div.call(("setAttribute" : stdgo.GoString), stdgo.Go.toInterface(("id" : stdgo.GoString)), stdgo.Go.toInterface(("myDiv" : stdgo.GoString)));
                _document.get(("body" : stdgo.GoString)).call(("appendChild" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_div)));
                var _myDiv = (_document.call(("getElementById" : stdgo.GoString), stdgo.Go.toInterface(("myDiv" : stdgo.GoString)))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
                _myDiv.set(("innerHTML" : stdgo.GoString), stdgo.Go.toInterface(("someString" : stdgo.GoString)));
                {
                    var __0 = ((_myDiv.get(("innerHTML" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("someString" : stdgo.GoString);
var _want = __1, _got = __0;
                    if (_got != (_want)) {
                        _b.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                _document.get(("body" : stdgo.GoString)).call(("removeChild" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_div)));
            });
        };
    }
