package stdgo._internal.index.suffixarray;
function _testSaveRestore(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _tc:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase>, _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>):stdgo.GoInt {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L253"
            {
                var _err = (_x.write(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L254"
                    _t.errorf(("failed writing index %s (%s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_err));
                };
            };
            var _size = (_buf.len() : stdgo.GoInt);
            var _y:stdgo._internal.index.suffixarray.Suffixarray_index.Index = ({} : stdgo._internal.index.suffixarray.Suffixarray_index.Index);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L258"
            {
                var _err = (_y.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_buf.bytes()))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L259"
                    _t.errorf(("failed reading index %s (%s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L261"
            if (!stdgo._internal.index.suffixarray.Suffixarray__equal._equal(_x, (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>))) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L262"
                _t.errorf(("restored index doesn\'t match saved index %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name));
            };
            var _old = (stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 : stdgo.GoInt);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 = _old;
                    };
                    a();
                }) });
            };
            _y = (new stdgo._internal.index.suffixarray.Suffixarray_index.Index() : stdgo._internal.index.suffixarray.Suffixarray_index.Index);
            stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 = (2147483647 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L272"
            {
                var _err = (_y.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_buf.bytes()))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L273"
                    _t.errorf(("failed reading index %s (%s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L275"
            if (!stdgo._internal.index.suffixarray.Suffixarray__equal._equal(_x, (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>))) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L276"
                _t.errorf(("restored index doesn\'t match saved index %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name));
            };
            _y = (new stdgo._internal.index.suffixarray.Suffixarray_index.Index() : stdgo._internal.index.suffixarray.Suffixarray_index.Index);
            stdgo._internal.index.suffixarray.Suffixarray__maxdata32._maxData32 = (-1 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L282"
            {
                var _err = (_y.read(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_buf.bytes()))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L283"
                    _t.errorf(("failed reading index %s (%s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L285"
            if (!stdgo._internal.index.suffixarray.Suffixarray__equal._equal(_x, (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>))) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L286"
                _t.errorf(("restored index doesn\'t match saved index %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _tc ?? throw "null pointer dereference")._name));
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L289"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _size;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (0 : stdgo.GoInt);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (0 : stdgo.GoInt);
            };
        };
    }
