package stdgo._internal.index.suffixarray;
function benchmarkNew(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        for (__0 => _text in (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("opticks" : stdgo.GoString), ("go" : stdgo.GoString), ("zero" : stdgo.GoString), ("rand" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            @:check2r _b.run((("text=" : stdgo.GoString) + _text?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var __tmp__ = stdgo._internal.index.suffixarray.Suffixarray__maketext._makeText(_text?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _b.fatal(stdgo.Go.toInterface(_err));
                };
                if ((stdgo._internal.testing.Testing_short.short() && ((_data.length) > (5000000 : stdgo.GoInt) : Bool) : Bool)) {
                    _data = (_data.__slice__(0, (5000000 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                for (__9 => _size in (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(100000 : stdgo.GoInt), (500000 : stdgo.GoInt), (1000000 : stdgo.GoInt), (5000000 : stdgo.GoInt), (10000000 : stdgo.GoInt), (50000000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                    if (((_data.length) < _size : Bool)) {
                        continue;
                    };
                    var _data = (_data.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>);
                    var _name = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%dK" : stdgo.GoString), stdgo.Go.toInterface((_size / (1000 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__() : stdgo.GoString);
                    if ((_size >= (1000000 : stdgo.GoInt) : Bool)) {
                        _name = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%dM" : stdgo.GoString), stdgo.Go.toInterface((_size / (1000000 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__();
                    };
                    @:check2r _b.run((("size=" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                        for (__18 => _bits in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(32 : stdgo.GoInt), (64 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
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
                                    @:check2r _b.setBytes((_data.length : stdgo.GoInt64));
                                    @:check2r _b.reportAllocs();
                                    {
                                        var _i = (0 : stdgo.GoInt);
                                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                                            stdgo._internal.index.suffixarray.Suffixarray_new_.new_(_data);
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
                    });
                };
            });
        };
    }
