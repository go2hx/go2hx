package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testRenameOverwriteDest(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _internal.os_test.Os_test__chtmpdir._chtmpdir(_t)());
            var __0 = ("renamefrom" : stdgo.GoString), __1 = ("renameto" : stdgo.GoString);
var _to = __1, _from = __0;
            var _toData = (("to" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _fromData = (("from" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            var _err = (stdgo._internal.os.Os_writeFile.writeFile(_to?.__copy__(), _toData, (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)) : stdgo.Error);
            if (_err != null) {
                _t.fatalf(("write file %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os_writeFile.writeFile(_from?.__copy__(), _fromData, (511u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
            if (_err != null) {
                _t.fatalf(("write file %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            _err = stdgo._internal.os.Os_rename.rename(_from?.__copy__(), _to?.__copy__());
            if (_err != null) {
                _t.fatalf(("rename %q, %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_from?.__copy__());
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.errorf(("from file %q still exists" : stdgo.GoString), stdgo.Go.toInterface(_from));
            };
            if (((_err != null) && !stdgo._internal.os.Os_isNotExist.isNotExist(_err) : Bool)) {
                _t.fatalf(("stat from: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stdgo._internal.os.Os_stat.stat(_to?.__copy__()), _toFi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
            };
            if (_toFi.size() != ((_fromData.length : stdgo.GoInt64))) {
                _t.errorf(("\"to\" size = %d; want %d (old \"from\" size)" : stdgo.GoString), stdgo.Go.toInterface(_toFi.size()), stdgo.Go.toInterface((_fromData.length)));
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
