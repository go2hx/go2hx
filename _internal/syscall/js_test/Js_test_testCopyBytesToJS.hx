package _internal.syscall.js_test;
function testCopyBytesToJS(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__6 => _tt in _internal.syscall.js_test.Js_test__copyTests._copyTests) {
            _t.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d-to-%d" : stdgo.GoString), stdgo.Go.toInterface(_tt._srcLen), stdgo.Go.toInterface(_tt._dstLen))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var _src = (new stdgo.Slice<stdgo.GoUInt8>((_tt._srcLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                if ((_tt._srcLen >= (2 : stdgo.GoInt) : Bool)) {
                    _src[(1 : stdgo.GoInt)] = (42 : stdgo.GoUInt8);
                };
                var _dst = (stdgo._internal.syscall.js.Js_global.global().get(("Uint8Array" : stdgo.GoString)).new_(stdgo.Go.toInterface(_tt._dstLen))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
                {
                    var __0 = (stdgo._internal.syscall.js.Js_copyBytesToJS.copyBytesToJS(_dst?.__copy__(), _src) : stdgo.GoInt), __1 = (_tt._copyLen : stdgo.GoInt);
var _want = __1, _got = __0;
                    if (_got != (_want)) {
                        _t.errorf(("copied %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
                if ((_tt._dstLen >= (2 : stdgo.GoInt) : Bool)) {
                    {
                        var __0 = (_dst.index((1 : stdgo.GoInt)).int_() : stdgo.GoInt), __1 = (42 : stdgo.GoInt);
var _want = __1, _got = __0;
                        if (_got != (_want)) {
                            _t.errorf(("got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                        };
                    };
                };
            });
        };
    }
