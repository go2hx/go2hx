package stdgo._internal.index.suffixarray;
function benchmarkSaveRestore(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((5928865i64 : stdgo.GoInt64)));
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _data) {
            _data[(_i : stdgo.GoInt)] = (@:check2r _r.intn((256 : stdgo.GoInt)) : stdgo.GoUInt8);
        };
        for (__0 => _bits in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(32 : stdgo.GoInt), (64 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            if ((true && (_bits == (64 : stdgo.GoInt)) : Bool)) {
                continue;
            };
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("bits=%d" : stdgo.GoString), stdgo.Go.toInterface(_bits))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                try {
                    var _cleanup = (stdgo._internal.index.suffixarray.Suffixarray__setbits._setBits(_bits) : () -> Void);
                    {
                        final __f__ = _cleanup;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    @:check2r _b.stopTimer();
                    var _x = stdgo._internal.index.suffixarray.Suffixarray_new_.new_(_data);
                    var _size = (stdgo._internal.index.suffixarray.Suffixarray__testsaverestore._testSaveRestore(null, null, _x) : stdgo.GoInt);
                    var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer((new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                    @:check2r _b.setBytes((_size : stdgo.GoInt64));
                    @:check2r _b.startTimer();
                    @:check2r _b.reportAllocs();
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            @:check2r _buf.reset();
{
                                var _err = (@:check2r _x.write(stdgo.Go.asInterface(_buf)) : stdgo.Error);
                                if (_err != null) {
                                    @:check2r _b.fatal(stdgo.Go.toInterface(_err));
                                };
                            };
var _y:stdgo._internal.index.suffixarray.Suffixarray_index.Index = ({} : stdgo._internal.index.suffixarray.Suffixarray_index.Index);
{
                                var _err = (@:check2 _y.read(stdgo.Go.asInterface(_buf)) : stdgo.Error);
                                if (_err != null) {
                                    @:check2r _b.fatal(stdgo.Go.toInterface(_err));
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
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
