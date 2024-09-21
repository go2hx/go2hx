package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testOffsetWriter_WriteAt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _contentSize = (("0123456789ABCDEF" : stdgo.GoString).length : stdgo.GoInt64);
            var __tmp__ = stdgo._internal.os.Os_mkdirTemp.mkdirTemp(_t.tempDir()?.__copy__(), ("TestOffsetWriter_WriteAt" : stdgo.GoString)), _tmpdir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _work = (function(_off:stdgo.GoInt64, _at:stdgo.GoInt64):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var _position = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("off_%d_at_%d" : stdgo.GoString), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_at))?.__copy__() : stdgo.GoString);
                    var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(_tmpdir?.__copy__(), _position?.__copy__()), _tmpfile:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err != null) || ((_tmpfile == null) || (_tmpfile : Dynamic).__nil__) : Bool)) {
                        _t.fatalf(("CreateTemp(%s) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_position), stdgo.Go.toInterface(_err));
                    };
                    __deferstack__.unshift(() -> _tmpfile.close());
                    var _writeN:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                    var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
                    for (_step => _value in (("0123456789ABCDEF" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) {
                        _wg.add((1 : stdgo.GoInt));
                        stdgo.Go.routine(() -> {
                            var a = function(_wg:stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>, _tmpfile:stdgo.Ref<stdgo._internal.os.Os_File.File>, _value:stdgo.GoUInt8, _off:stdgo.GoInt64, _at:stdgo.GoInt64, _step:stdgo.GoInt):Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> _wg.done());
                                    var _w = stdgo._internal.io.Io_newOffsetWriter.newOffsetWriter(stdgo.Go.asInterface(_tmpfile), _off);
                                    var __tmp__ = _w.writeAt((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[_value]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (_at + (_step : stdgo.GoInt64) : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                                    if (_e != null) {
                                        _t.errorf(("WriteAt failed. off: %d, at: %d, step: %d\n error: %v" : stdgo.GoString), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_at), stdgo.Go.toInterface(_step), stdgo.Go.toInterface(_e));
                                    };
                                    stdgo._internal.sync.atomic_.Atomic__addInt64.addInt64(stdgo.Go.pointer(_writeN), (_n : stdgo.GoInt64));
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
                            };
                            a((stdgo.Go.setRef(_wg) : stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>), _tmpfile, _value, _off, _at, _step);
                        });
                    };
                    _wg.wait_();
                    var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((_contentSize + (1i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    var __tmp__ = _tmpfile.readAt(_buf, (_off + _at : stdgo.GoInt64)), _readN:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _t.fatalf(("ReadAt failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                    var _readContent = (((_buf.__slice__(0, _contentSize) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (((_writeN != ((_readN : stdgo.GoInt64)) || _writeN != (_contentSize) : Bool) || (_readContent != ("0123456789ABCDEF" : stdgo.GoString)) : Bool)) {
                        _t.fatalf(("%s:: WriteAt(%s, %d) error. \ngot n: %v, content: %s \nexpected n: %v, content: %v" : stdgo.GoString), stdgo.Go.toInterface(_position), stdgo.Go.toInterface(("0123456789ABCDEF" : stdgo.GoString)), stdgo.Go.toInterface(_at), stdgo.Go.toInterface(_readN), stdgo.Go.toInterface(_readContent), stdgo.Go.toInterface(_contentSize), stdgo.Go.toInterface(("0123456789ABCDEF" : stdgo.GoString)));
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
            } : (stdgo.GoInt64, stdgo.GoInt64) -> Void);
            {
                var _off = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
                stdgo.Go.cfor((_off < (2i64 : stdgo.GoInt64) : Bool), _off++, {
                    {
                        var _at = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
                        stdgo.Go.cfor((_at < (2i64 : stdgo.GoInt64) : Bool), _at++, {
                            _work(_off, _at);
                        });
                    };
                });
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
    }
