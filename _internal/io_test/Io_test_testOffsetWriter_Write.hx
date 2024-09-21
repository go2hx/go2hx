package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testOffsetWriter_Write(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _contentSize = (("0123456789ABCDEF" : stdgo.GoString).length : stdgo.GoInt);
            var _tmpdir = (_t.tempDir()?.__copy__() : stdgo.GoString);
            var _makeOffsetWriter = (function(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter>; var _1 : stdgo.Ref<stdgo._internal.os.Os_File.File>; } {
                var _tmpfilename = ((("TestOffsetWriter_Write_" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.os.Os_createTemp.createTemp(_tmpdir?.__copy__(), _tmpfilename?.__copy__()), _tmpfile:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err != null) || ((_tmpfile == null) || (_tmpfile : Dynamic).__nil__) : Bool)) {
                    _t.fatalf(("CreateTemp(%s) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_tmpfilename), stdgo.Go.toInterface(_err));
                };
                return { _0 : stdgo._internal.io.Io_newOffsetWriter.newOffsetWriter(stdgo.Go.asInterface(_tmpfile), (0i64 : stdgo.GoInt64)), _1 : _tmpfile };
            } : stdgo.GoString -> { var _0 : stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter>; var _1 : stdgo.Ref<stdgo._internal.os.Os_File.File>; });
            var _checkContent = function(_name:stdgo.GoString, _f:stdgo.Ref<stdgo._internal.os.Os_File.File>):Void {
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_contentSize + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                var __tmp__ = _f.readAt(_buf, (0i64 : stdgo.GoInt64)), _readN:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _t.fatalf(("ReadAt failed, err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                var _readContent = (((_buf.__slice__(0, _contentSize) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (((_readN != _contentSize) || (_readContent != ("0123456789ABCDEF" : stdgo.GoString)) : Bool)) {
                    _t.fatalf(("%s error. \ngot n: %v, content: %s \nexpected n: %v, content: %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_readN), stdgo.Go.toInterface(_readContent), stdgo.Go.toInterface(_contentSize), stdgo.Go.toInterface(("0123456789ABCDEF" : stdgo.GoString)));
                };
            };
            var _name:stdgo.GoString = ("" : stdgo.GoString);
            _name = ("Write" : stdgo.GoString);
            _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var __tmp__ = _makeOffsetWriter(_name?.__copy__()), _w:stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter> = __tmp__._0, _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._1;
                    __deferstack__.unshift(() -> _f.close());
                    for (__16 => _value in (("0123456789ABCDEF" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)) {
                        var __tmp__ = _w.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[_value]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatalf(("Write failed, n: %d, err: %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                        };
                    };
                    _checkContent(_name?.__copy__(), _f);
                    _name = ("Copy" : stdgo.GoString);
                    var __tmp__ = _makeOffsetWriter(_name?.__copy__()), _w2:stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter> = __tmp__._0, _f2:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._1;
                    __deferstack__.unshift(() -> _f2.close());
                    stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_w2), stdgo.Go.asInterface(_f));
                    _checkContent(_name?.__copy__(), _f2);
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
            _name = ("Write_Of_Copy_WriteTo" : stdgo.GoString);
            _t.run(_name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var __tmp__ = _makeOffsetWriter(_name?.__copy__()), _w:stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter> = __tmp__._0, _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._1;
                    __deferstack__.unshift(() -> _f.close());
                    stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_w), stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("0123456789ABCDEF" : stdgo.GoString))));
                    _checkContent(_name?.__copy__(), _f);
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
