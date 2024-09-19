package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testOffsetWriter_Seek(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmpfilename = ("TestOffsetWriter_Seek" : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(_t.tempDir()?.__copy__(), _tmpfilename?.__copy__()), _tmpfile:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || ((_tmpfile == null) || (_tmpfile : Dynamic).__nil__) : Bool)) {
                _t.fatalf(("CreateTemp(%s) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_tmpfilename), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _tmpfile.close());
            var _w = stdgo._internal.io.Io_newOffsetWriter.newOffsetWriter(stdgo.Go.asInterface(_tmpfile), (0i64 : stdgo.GoInt64));
            _t.run(("errWhence" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    for (__16 => _whence in (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(-3 : stdgo.GoInt), (-2 : stdgo.GoInt), (-1 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                        var _offset:stdgo.GoInt64 = (0i64 : stdgo.GoInt64);
                        var __tmp__ = _w.seek(_offset, _whence), _gotOff:stdgo.GoInt64 = __tmp__._0, _gotErr:stdgo.Error = __tmp__._1;
                        if (((_gotOff != (0i64 : stdgo.GoInt64)) || (stdgo.Go.toInterface(_gotErr) != stdgo.Go.toInterface(stdgo._internal.io.Io_errWhence.errWhence)) : Bool)) {
                            _t.errorf(("For whence %d, offset %d, OffsetWriter.Seek got: (%d, %v), want: (%d, %v)" : stdgo.GoString), stdgo.Go.toInterface(_whence), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_gotOff), stdgo.Go.toInterface(_gotErr), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.io.Io_errWhence.errWhence));
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            });
            _t.run(("errOffset" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    for (__24 => _whence in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                        {
                            var _offset = ((-3i64 : stdgo.GoInt64) : stdgo.GoInt64);
                            stdgo.Go.cfor((_offset < (0i64 : stdgo.GoInt64) : Bool), _offset++, {
                                var __tmp__ = _w.seek(_offset, _whence), _gotOff:stdgo.GoInt64 = __tmp__._0, _gotErr:stdgo.Error = __tmp__._1;
                                if (((_gotOff != (0i64 : stdgo.GoInt64)) || (stdgo.Go.toInterface(_gotErr) != stdgo.Go.toInterface(stdgo._internal.io.Io_errOffset.errOffset)) : Bool)) {
                                    _t.errorf(("For whence %d, offset %d, OffsetWriter.Seek got: (%d, %v), want: (%d, %v)" : stdgo.GoString), stdgo.Go.toInterface(_whence), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_gotOff), stdgo.Go.toInterface(_gotErr), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(stdgo._internal.io.Io_errOffset.errOffset));
                                };
                            });
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            });
            _t.run(("normal" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _tests = (new stdgo.Slice<_internal.io_test.Io_test_T__struct_5.T__struct_5>(6, 6, ...[({ _whence : (0 : stdgo.GoInt), _offset : (1i64 : stdgo.GoInt64), _returnOff : (1i64 : stdgo.GoInt64) } : _internal.io_test.Io_test_T__struct_5.T__struct_5), ({ _whence : (0 : stdgo.GoInt), _offset : (2i64 : stdgo.GoInt64), _returnOff : (2i64 : stdgo.GoInt64) } : _internal.io_test.Io_test_T__struct_5.T__struct_5), ({ _whence : (0 : stdgo.GoInt), _offset : (3i64 : stdgo.GoInt64), _returnOff : (3i64 : stdgo.GoInt64) } : _internal.io_test.Io_test_T__struct_5.T__struct_5), ({ _whence : (1 : stdgo.GoInt), _offset : (1i64 : stdgo.GoInt64), _returnOff : (4i64 : stdgo.GoInt64) } : _internal.io_test.Io_test_T__struct_5.T__struct_5), ({ _whence : (1 : stdgo.GoInt), _offset : (2i64 : stdgo.GoInt64), _returnOff : (6i64 : stdgo.GoInt64) } : _internal.io_test.Io_test_T__struct_5.T__struct_5), ({ _whence : (1 : stdgo.GoInt), _offset : (3i64 : stdgo.GoInt64), _returnOff : (9i64 : stdgo.GoInt64) } : _internal.io_test.Io_test_T__struct_5.T__struct_5)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _offset : (0 : stdgo.GoInt64), _whence : (0 : stdgo.GoInt), _returnOff : (0 : stdgo.GoInt64) } : _internal.io_test.Io_test_T__struct_5.T__struct_5)])) : stdgo.Slice<_internal.io_test.Io_test_T__struct_5.T__struct_5>);
                    for (_idx => _tt in _tests) {
                        var __tmp__ = _w.seek(_tt._offset, _tt._whence), _gotOff:stdgo.GoInt64 = __tmp__._0, _gotErr:stdgo.Error = __tmp__._1;
                        if (((_gotOff != _tt._returnOff) || (_gotErr != null) : Bool)) {
                            _t.errorf(("%d:: For whence %d, offset %d, OffsetWriter.Seek got: (%d, %v), want: (%d, <nil>)" : stdgo.GoString), stdgo.Go.toInterface((_idx + (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_tt._whence), stdgo.Go.toInterface(_tt._offset), stdgo.Go.toInterface(_gotOff), stdgo.Go.toInterface(_gotErr), stdgo.Go.toInterface(_tt._returnOff));
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            });
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
