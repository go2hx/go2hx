package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
var _nilFileMethodTests : stdgo.Slice<_internal.os_test.Os_test_T__struct_5.T__struct_5> = (new stdgo.Slice<_internal.os_test.Os_test_T__struct_5.T__struct_5>(15, 15, ...[
({ _name : ("Chdir" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        return _f.chdir();
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("Close" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        return _f.close();
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("Chmod" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        return _f.chmod((0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode));
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("Chown" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        return _f.chown((0 : stdgo.GoInt), (0 : stdgo.GoInt));
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("Read" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        var __tmp__ = _f.read((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("ReadAt" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        var __tmp__ = _f.readAt((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("Readdir" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        var __tmp__ = _f.readdir((1 : stdgo.GoInt)), __0:stdgo.Slice<stdgo._internal.io.fs.Fs_FileInfo.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("Readdirnames" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        var __tmp__ = _f.readdirnames((1 : stdgo.GoInt)), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("Seek" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        var __tmp__ = _f.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("Stat" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        var __tmp__ = _f.stat(), __0:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("Sync" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        return _f.sync();
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("Truncate" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        return _f.truncate((0i64 : stdgo.GoInt64));
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("Write" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        var __tmp__ = _f.write((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("WriteAt" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        var __tmp__ = _f.writeAt((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5),
({ _name : ("WriteString" : stdgo.GoString), _f : function(_f:stdgo.Ref<stdgo._internal.os.Os_File.File>):stdgo.Error {
        var __tmp__ = _f.writeString(stdgo.Go.str()?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : _internal.os_test.Os_test_T__struct_5.T__struct_5)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : _internal.os_test.Os_test_T__struct_5.T__struct_5)])) : stdgo.Slice<_internal.os_test.Os_test_T__struct_5.T__struct_5>);
