package stdgo._internal.index.suffixarray;
function benchmarkSaveRestore(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((5928865i64 : stdgo.GoInt64)));
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L585"
        for (_i => _ in _data) {
            _data[(_i : stdgo.GoInt)] = (_r.intn((256 : stdgo.GoInt)) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L588"
        for (__0 => _bits in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(32 : stdgo.GoInt), (64 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L589"
            if ((true && (_bits == (64 : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L590"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L592"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("bits=%d" : stdgo.GoString), stdgo.Go.toInterface(_bits))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    var _cleanup = (stdgo._internal.index.suffixarray.Suffixarray__setbits._setBits(_bits) : () -> Void);
                    {
                        final __f__ = _cleanup;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L596"
                    _b.stopTimer();
                    var _x = stdgo._internal.index.suffixarray.Suffixarray_new_.new_(_data);
                    var _size = (stdgo._internal.index.suffixarray.Suffixarray__testsaverestore._testSaveRestore(null, null, _x) : stdgo.GoInt);
                    var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L600"
                    _b.setBytes((_size : stdgo.GoInt64));
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L601"
                    _b.startTimer();
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L602"
                    _b.reportAllocs();
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L603"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L604"
                            _buf.reset();
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L605"
                            {
                                var _err = (_x.write(stdgo.Go.asInterface(_buf)) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L606"
                                    _b.fatal(stdgo.Go.toInterface(_err));
                                };
                            };
var _y:stdgo._internal.index.suffixarray.Suffixarray_index.Index = ({} : stdgo._internal.index.suffixarray.Suffixarray_index.Index);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L609"
                            {
                                var _err = (_y.read(stdgo.Go.asInterface(_buf)) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L610"
                                    _b.fatal(stdgo.Go.toInterface(_err));
                                };
                            };
                            _i++;
                        };
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
                        return;
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
                        return;
                    };
                };
            });
        };
    }
