package stdgo._internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
var _global : stdgo.AnyInterface = (null : stdgo.AnyInterface);
final _executable_EnvVar : stdgo.GoString = ("OSTEST_OUTPUT_EXECPATH" : stdgo.GoString);
final _testExecutableDeletion : stdgo.GoString = ("package main\n\nimport (\n\t\"fmt\"\n\t\"os\"\n)\n\nfunc main() {\n\tbefore, err := os.Executable()\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to read executable name before deletion: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\terr = os.Remove(before)\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to remove executable: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\tafter, err := os.Executable()\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to read executable name after deletion: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\tif before != after {\n\t\tfmt.Fprintf(os.Stderr, \"before and after do not match: %v != %v\\n\", before, after)\n\t\tos.Exit(1)\n\t}\n}\n" : stdgo.GoString);
var _expandTests : stdgo.Slice<T__struct_1> = (new stdgo.Slice<T__struct_1>(18, 18, ...[
({ _in : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__() } : T__struct_1),
({ _in : ("$*" : stdgo.GoString), _out : ("all the args" : stdgo.GoString) } : T__struct_1),
({ _in : ("$$" : stdgo.GoString), _out : ("PID" : stdgo.GoString) } : T__struct_1),
({ _in : ("${*}" : stdgo.GoString), _out : ("all the args" : stdgo.GoString) } : T__struct_1),
({ _in : ("$1" : stdgo.GoString), _out : ("ARGUMENT1" : stdgo.GoString) } : T__struct_1),
({ _in : ("${1}" : stdgo.GoString), _out : ("ARGUMENT1" : stdgo.GoString) } : T__struct_1),
({ _in : ("now is the time" : stdgo.GoString), _out : ("now is the time" : stdgo.GoString) } : T__struct_1),
({ _in : ("$HOME" : stdgo.GoString), _out : ("/usr/gopher" : stdgo.GoString) } : T__struct_1),
({ _in : ("$home_1" : stdgo.GoString), _out : ("/usr/foo" : stdgo.GoString) } : T__struct_1),
({ _in : ("${HOME}" : stdgo.GoString), _out : ("/usr/gopher" : stdgo.GoString) } : T__struct_1),
({ _in : ("${H}OME" : stdgo.GoString), _out : ("(Value of H)OME" : stdgo.GoString) } : T__struct_1),
({ _in : ("A$$$#$1$H$home_1*B" : stdgo.GoString), _out : ("APIDNARGSARGUMENT1(Value of H)/usr/foo*B" : stdgo.GoString) } : T__struct_1),
({ _in : ("start$+middle$^end$" : stdgo.GoString), _out : ("start$+middle$^end$" : stdgo.GoString) } : T__struct_1),
({ _in : ("mixed$|bag$$$" : stdgo.GoString), _out : ("mixed$|bagPID$" : stdgo.GoString) } : T__struct_1),
({ _in : ("$" : stdgo.GoString), _out : ("$" : stdgo.GoString) } : T__struct_1),
({ _in : ("$}" : stdgo.GoString), _out : ("$}" : stdgo.GoString) } : T__struct_1),
({ _in : ("${" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : T__struct_1),
({ _in : ("${}" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__() } : T__struct_1)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _out : ("" : stdgo.GoString) } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
var _isExistTests : stdgo.Slice<stdgo._internal.os_test.Os_test.T_isExistTest> = (new stdgo.Slice<stdgo._internal.os_test.Os_test.T_isExistTest>(13, 13, ...[
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errInvalid } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)), false, false) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errPermission } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)), false, false) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errExist } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)), true, false) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errNotExist } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)), false, true) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errClosed } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)), false, false) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errInvalid } : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>)), false, false) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errPermission } : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>)), false, false) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errExist } : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>)), true, false) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errNotExist } : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>)), false, true) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errClosed } : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>)), false, false) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errNotExist } : stdgo._internal.os.Os.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os.SyscallError>)), false, true) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errExist } : stdgo._internal.os.Os.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os.SyscallError>)), true, false) : stdgo._internal.os_test.Os_test.T_isExistTest),
(new stdgo._internal.os_test.Os_test.T_isExistTest((null : stdgo.Error), false, false) : stdgo._internal.os_test.Os_test.T_isExistTest)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.os_test.Os_test.T_isExistTest)])) : stdgo.Slice<stdgo._internal.os_test.Os_test.T_isExistTest>);
var _isPermissionTests : stdgo.Slice<stdgo._internal.os_test.Os_test.T_isPermissionTest> = (new stdgo.Slice<stdgo._internal.os_test.Os_test.T_isPermissionTest>(3, 3, ...[(new stdgo._internal.os_test.Os_test.T_isPermissionTest((null : stdgo.Error), false) : stdgo._internal.os_test.Os_test.T_isPermissionTest), (new stdgo._internal.os_test.Os_test.T_isPermissionTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errPermission } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)), true) : stdgo._internal.os_test.Os_test.T_isPermissionTest), (new stdgo._internal.os_test.Os_test.T_isPermissionTest(stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errPermission } : stdgo._internal.os.Os.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os.SyscallError>)), true) : stdgo._internal.os_test.Os_test.T_isPermissionTest)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.os_test.Os_test.T_isPermissionTest)])) : stdgo.Slice<stdgo._internal.os_test.Os_test.T_isPermissionTest>);
var _dot : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(8, 8, ...[("dir_unix.go" : stdgo.GoString), ("env.go" : stdgo.GoString), ("error.go" : stdgo.GoString), ("file.go" : stdgo.GoString), ("os_test.go" : stdgo.GoString), ("types.go" : stdgo.GoString), ("stat_darwin.go" : stdgo.GoString), ("stat_linux.go" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _sysdir : stdgo.Ref<stdgo._internal.os_test.Os_test.T_sysDir> = {
        var a = function():stdgo.Ref<T_sysDir> {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = ("js" : stdgo.GoString);
                        if (__value__ == (("android" : stdgo.GoString))) {
                            return (stdgo.Go.setRef((new stdgo._internal.os_test.Os_test.T_sysDir(("/system/lib" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("libmedia.so" : stdgo.GoString), ("libpowermanager.so" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.os_test.Os_test.T_sysDir)) : stdgo.Ref<stdgo._internal.os_test.Os_test.T_sysDir>);
                            break;
                        } else if (__value__ == (("ios" : stdgo.GoString))) {
                            var __tmp__ = stdgo._internal.syscall.Syscall.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _wd = _err.error()?.__copy__();
                            };
                            var _sd = (stdgo.Go.setRef((new stdgo._internal.os_test.Os_test.T_sysDir(stdgo._internal.path.filepath.Filepath.join(_wd?.__copy__(), (".." : stdgo.GoString), (".." : stdgo.GoString))?.__copy__(), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("ResourceRules.plist" : stdgo.GoString), ("Info.plist" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.os_test.Os_test.T_sysDir)) : stdgo.Ref<stdgo._internal.os_test.Os_test.T_sysDir>);
                            var _found = true;
                            for (__0 => _f in _sd._files) {
                                var _path = stdgo._internal.path.filepath.Filepath.join(_sd._name?.__copy__(), _f?.__copy__())?.__copy__();
                                {
                                    var __tmp__ = stat(_path?.__copy__()), __1:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    if (_err != null) {
                                        _found = false;
                                        break;
                                    };
                                };
                            };
                            if (_found) {
                                return _sd;
                            };
                            break;
                        } else if (__value__ == (("windows" : stdgo.GoString))) {
                            return (stdgo.Go.setRef((new stdgo._internal.os_test.Os_test.T_sysDir((getenv(("SystemRoot" : stdgo.GoString)) + ("\\system32\\drivers\\etc" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("networks" : stdgo.GoString), ("protocol" : stdgo.GoString), ("services" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.os_test.Os_test.T_sysDir)) : stdgo.Ref<stdgo._internal.os_test.Os_test.T_sysDir>);
                            break;
                        } else if (__value__ == (("plan9" : stdgo.GoString))) {
                            return (stdgo.Go.setRef((new stdgo._internal.os_test.Os_test.T_sysDir(("/lib/ndb" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("common" : stdgo.GoString), ("local" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.os_test.Os_test.T_sysDir)) : stdgo.Ref<stdgo._internal.os_test.Os_test.T_sysDir>);
                            break;
                        } else if (__value__ == (("wasip1" : stdgo.GoString))) {
                            return (stdgo.Go.setRef((new stdgo._internal.os_test.Os_test.T_sysDir(stdgo._internal.runtime.Runtime.goroot()?.__copy__(), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("go.env" : stdgo.GoString), ("LICENSE" : stdgo.GoString), ("CONTRIBUTING.md" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.os_test.Os_test.T_sysDir)) : stdgo.Ref<stdgo._internal.os_test.Os_test.T_sysDir>);
                            break;
                        };
                    };
                    break;
                };
            };
            return (stdgo.Go.setRef((new stdgo._internal.os_test.Os_test.T_sysDir(("/etc" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("group" : stdgo.GoString), ("hosts" : stdgo.GoString), ("passwd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : stdgo._internal.os_test.Os_test.T_sysDir)) : stdgo.Ref<stdgo._internal.os_test.Os_test.T_sysDir>);
        };
        a();
    };
var _sfdir : stdgo.GoString = _sysdir._name;
var _sfname : stdgo.GoString = _sysdir._files[(0 : stdgo.GoInt)];
var _openErrorTests : stdgo.Slice<stdgo._internal.os_test.Os_test.T_openErrorTest> = (new stdgo.Slice<stdgo._internal.os_test.Os_test.T_openErrorTest>(3, 3, ...[(new stdgo._internal.os_test.Os_test.T_openErrorTest((_sfdir + ("/no-such-file" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), stdgo.Go.asInterface((2 : stdgo._internal.syscall.Syscall.Errno))) : stdgo._internal.os_test.Os_test.T_openErrorTest), (new stdgo._internal.os_test.Os_test.T_openErrorTest(_sfdir?.__copy__(), (1 : stdgo.GoInt), stdgo.Go.asInterface((21 : stdgo._internal.syscall.Syscall.Errno))) : stdgo._internal.os_test.Os_test.T_openErrorTest), (new stdgo._internal.os_test.Os_test.T_openErrorTest((((_sfdir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _sfname?.__copy__() : stdgo.GoString) + ("/no-such-file" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (1 : stdgo.GoInt), stdgo.Go.asInterface((20 : stdgo._internal.syscall.Syscall.Errno))) : stdgo._internal.os_test.Os_test.T_openErrorTest)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.os_test.Os_test.T_openErrorTest)])) : stdgo.Slice<stdgo._internal.os_test.Os_test.T_openErrorTest>);
var _testLargeWrite : stdgo.Pointer<Bool> = stdgo._internal.flag.Flag.bool_(("large_write" : stdgo.GoString), false, ("run TestLargeWriteToConsole test that floods console with output" : stdgo.GoString));
var _nilFileMethodTests : stdgo.Slice<T__struct_5> = (new stdgo.Slice<T__struct_5>(15, 15, ...[
({ _name : ("Chdir" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        return _f.chdir();
    } } : T__struct_5),
({ _name : ("Close" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        return _f.close();
    } } : T__struct_5),
({ _name : ("Chmod" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        return _f.chmod((0u32 : stdgo._internal.io.fs.Fs.FileMode));
    } } : T__struct_5),
({ _name : ("Chown" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        return _f.chown((0 : stdgo.GoInt), (0 : stdgo.GoInt));
    } } : T__struct_5),
({ _name : ("Read" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        var __tmp__ = _f.read((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : T__struct_5),
({ _name : ("ReadAt" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        var __tmp__ = _f.readAt((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : T__struct_5),
({ _name : ("Readdir" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        var __tmp__ = _f.readdir((1 : stdgo.GoInt)), __0:stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : T__struct_5),
({ _name : ("Readdirnames" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        var __tmp__ = _f.readdirnames((1 : stdgo.GoInt)), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : T__struct_5),
({ _name : ("Seek" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        var __tmp__ = _f.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : T__struct_5),
({ _name : ("Stat" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        var __tmp__ = _f.stat(), __0:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : T__struct_5),
({ _name : ("Sync" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        return _f.sync();
    } } : T__struct_5),
({ _name : ("Truncate" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        return _f.truncate((0i64 : stdgo.GoInt64));
    } } : T__struct_5),
({ _name : ("Write" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        var __tmp__ = _f.write((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : T__struct_5),
({ _name : ("WriteAt" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        var __tmp__ = _f.writeAt((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : T__struct_5),
({ _name : ("WriteString" : stdgo.GoString), _f : function(_f:stdgo.Ref<File>):stdgo.Error {
        var __tmp__ = _f.writeString(stdgo.Go.str()?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    } } : T__struct_5)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : T__struct_5)])) : stdgo.Slice<T__struct_5>);
var _isReadonlyError : stdgo.Error -> Bool = function(_0:stdgo.Error):Bool {
        return false;
    };
@:structInit @:private class T_isExistTest {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _is : Bool = false;
    public var _isnot : Bool = false;
    public function new(?_err:stdgo.Error, ?_is:Bool, ?_isnot:Bool) {
        if (_err != null) this._err = _err;
        if (_is != null) this._is = _is;
        if (_isnot != null) this._isnot = _isnot;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_isExistTest(_err, _is, _isnot);
    }
}
@:structInit @:private class T_isPermissionTest {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _want : Bool = false;
    public function new(?_err:stdgo.Error, ?_want:Bool) {
        if (_err != null) this._err = _err;
        if (_want != null) this._want = _want;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_isPermissionTest(_err, _want);
    }
}
@:structInit @:private @:using(stdgo._internal.os_test.Os_test.T_myErrorIs_static_extension) class T_myErrorIs {
    @:embedded
    public var _error : stdgo.Error = (null : stdgo.Error);
    public function new(?_error:stdgo.Error) {
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function error():stdgo.GoString return _error.error();
    public function __copy__() {
        return new T_myErrorIs(_error);
    }
}
@:structInit @:private class T_sysDir {
    public var _name : stdgo.GoString = "";
    public var _files : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_name:stdgo.GoString, ?_files:stdgo.Slice<stdgo.GoString>) {
        if (_name != null) this._name = _name;
        if (_files != null) this._files = _files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sysDir(_name, _files);
    }
}
@:structInit @:private class T_openErrorTest {
    public var _path : stdgo.GoString = "";
    public var _mode : stdgo.GoInt = 0;
    public var _error : stdgo.Error = (null : stdgo.Error);
    public function new(?_path:stdgo.GoString, ?_mode:stdgo.GoInt, ?_error:stdgo.Error) {
        if (_path != null) this._path = _path;
        if (_mode != null) this._mode = _mode;
        if (_error != null) this._error = _error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_openErrorTest(_path, _mode, _error);
    }
}
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os_test.Os_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.os_test.Os_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _in : stdgo.GoString;
    public var _out : stdgo.GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os_test.Os_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.os_test.Os_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _name : stdgo.GoString;
    public var _create : () -> stdgo.Error;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os_test.Os_test.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.os_test.Os_test.T__struct_3_static_extension) typedef T__struct_3 = {
    public var _aTime : stdgo._internal.time.Time.Time;
    public var _mTime : stdgo._internal.time.Time.Time;
    public var _wantATime : stdgo._internal.time.Time.Time;
    public var _wantMTime : stdgo._internal.time.Time.Time;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os_test.Os_test.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.os_test.Os_test.T__struct_4_static_extension) typedef T__struct_4 = {};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os_test.Os_test.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.os_test.Os_test.T__struct_5_static_extension) typedef T__struct_5 = {
    public var _name : stdgo.GoString;
    public var _f : stdgo.Ref<stdgo._internal.os.Os.File> -> stdgo.Error;
};
class T__struct_6_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_6>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os_test.Os_test.T__struct_6_asInterface) class T__struct_6_static_extension {

}
@:local @:using(stdgo._internal.os_test.Os_test.T__struct_6_static_extension) typedef T__struct_6 = {
    public var _path : stdgo.GoString;
    public var _wantDir : stdgo.GoString;
    public var _wantBase : stdgo.GoString;
};
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os_test.Os_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.os_test.Os_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var _pattern : stdgo.GoString;
    public var _prefix : stdgo.GoString;
    public var _suffix : stdgo.GoString;
};
class T__struct_8_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_8>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os_test.Os_test.T__struct_8_asInterface) class T__struct_8_static_extension {

}
@:local @:using(stdgo._internal.os_test.Os_test.T__struct_8_static_extension) typedef T__struct_8 = {
    public var _pattern : stdgo.GoString;
    public var _wantErr : Bool;
};
class T__struct_9_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_9>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os_test.Os_test.T__struct_9_asInterface) class T__struct_9_static_extension {

}
@:local @:using(stdgo._internal.os_test.Os_test.T__struct_9_static_extension) typedef T__struct_9 = {
    public var _pattern : stdgo.GoString;
    public var _wantPrefix : stdgo.GoString;
    public var _wantSuffix : stdgo.GoString;
};
@:follow typedef T_syscallDescriptor = stdgo.GoInt;
function _testGetenv(_s:stdgo.GoString):stdgo.GoString {
        {
            final __value__ = _s;
            if (__value__ == (("*" : stdgo.GoString))) {
                return ("all the args" : stdgo.GoString);
            } else if (__value__ == (("#" : stdgo.GoString))) {
                return ("NARGS" : stdgo.GoString);
            } else if (__value__ == (("$" : stdgo.GoString))) {
                return ("PID" : stdgo.GoString);
            } else if (__value__ == (("1" : stdgo.GoString))) {
                return ("ARGUMENT1" : stdgo.GoString);
            } else if (__value__ == (("HOME" : stdgo.GoString))) {
                return ("/usr/gopher" : stdgo.GoString);
            } else if (__value__ == (("H" : stdgo.GoString))) {
                return ("(Value of H)" : stdgo.GoString);
            } else if (__value__ == (("home_1" : stdgo.GoString))) {
                return ("/usr/foo" : stdgo.GoString);
            } else if (__value__ == (("_" : stdgo.GoString))) {
                return ("underscore" : stdgo.GoString);
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
function testExpand(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _test in _expandTests) {
            var _result = expand(_test._in?.__copy__(), _testGetenv)?.__copy__();
            if (_result != (_test._out)) {
                _t.errorf(("Expand(%q)=%q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_test._out));
            };
        };
    }
function benchmarkExpand(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.run(("noop" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _s = expand(("tick tick tick tick" : stdgo.GoString), function(_0:stdgo.GoString):stdgo.GoString {
                        return stdgo.Go.str()?.__copy__();
                    })?.__copy__();
                });
            };
            _global = stdgo.Go.toInterface(_s);
        });
        _b.run(("multiple" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _s = expand(("$a $a $a $a" : stdgo.GoString), function(_0:stdgo.GoString):stdgo.GoString {
                        return ("boom" : stdgo.GoString);
                    })?.__copy__();
                });
            };
            _global = stdgo.Go.toInterface(_s);
        });
    }
function testConsistentEnviron(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _e0 = environ_();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                var _e1 = environ_();
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_e0), stdgo.Go.toInterface(_e1))) {
                    _t.fatalf(("environment changed" : stdgo.GoString));
                };
            });
        };
    }
function testUnsetenv(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _set = function():Bool {
            var _prefix = ("GO_TEST_UNSETENV=" : stdgo.GoString);
            for (__0 => _key in environ_()) {
                if (stdgo._internal.strings.Strings.hasPrefix(_key?.__copy__(), _prefix?.__copy__())) {
                    return true;
                };
            };
            return false;
        };
        {
            var _err = setenv(("GO_TEST_UNSETENV" : stdgo.GoString), ("1" : stdgo.GoString));
            if (_err != null) {
                _t.fatalf(("Setenv: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (!_set()) {
            _t.error(stdgo.Go.toInterface(("Setenv didn\'t set TestUnsetenv" : stdgo.GoString)));
        };
        {
            var _err = unsetenv(("GO_TEST_UNSETENV" : stdgo.GoString));
            if (_err != null) {
                _t.fatalf(("Unsetenv: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        if (_set()) {
            _t.fatal(stdgo.Go.toInterface(("Unsetenv didn\'t clear TestUnsetenv" : stdgo.GoString)));
        };
    }
function testClearenv(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            {};
            {
                var _a0 = environ_();
                __deferstack__.unshift(() -> {
                    var a = function(_origEnv:stdgo.Slice<stdgo.GoString>):Void {
                        for (__0 => _pair in _origEnv) {
                            var _i = (stdgo._internal.strings.Strings.index((_pair.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("=" : stdgo.GoString)) + (1 : stdgo.GoInt) : stdgo.GoInt);
                            {
                                var _err = setenv((_pair.__slice__(0, _i) : stdgo.GoString)?.__copy__(), (_pair.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                if (_err != null) {
                                    _t.errorf(("Setenv(%q, %q) failed during reset: %v" : stdgo.GoString), stdgo.Go.toInterface((_pair.__slice__(0, _i) : stdgo.GoString)), stdgo.Go.toInterface((_pair.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)), stdgo.Go.toInterface(_err));
                                };
                            };
                        };
                    };
                    a(_a0);
                });
            };
            {
                var _err = setenv(("GO_TEST_CLEARENV" : stdgo.GoString), ("1" : stdgo.GoString));
                if (_err != null) {
                    _t.fatalf(("Setenv(%q, %q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(("GO_TEST_CLEARENV" : stdgo.GoString)), stdgo.Go.toInterface(("1" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = lookupEnv(("GO_TEST_CLEARENV" : stdgo.GoString)), __8:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("Setenv(%q, %q) didn\'t set $%s" : stdgo.GoString), stdgo.Go.toInterface(("GO_TEST_CLEARENV" : stdgo.GoString)), stdgo.Go.toInterface(("1" : stdgo.GoString)), stdgo.Go.toInterface(("GO_TEST_CLEARENV" : stdgo.GoString)));
                };
            };
            clearenv();
            {
                var __tmp__ = lookupEnv(("GO_TEST_CLEARENV" : stdgo.GoString)), _val:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _t.errorf(("Clearenv() didn\'t clear $%s, remained with value %q" : stdgo.GoString), stdgo.Go.toInterface(("GO_TEST_CLEARENV" : stdgo.GoString)), stdgo.Go.toInterface(_val));
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
function testLookupEnv(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var __tmp__ = lookupEnv(("SMALLPOX" : stdgo.GoString)), _value:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((_ok || (_value != stdgo.Go.str()) : Bool)) {
                _t.fatalf(("%s=%q" : stdgo.GoString), stdgo.Go.toInterface(("SMALLPOX" : stdgo.GoString)), stdgo.Go.toInterface(_value));
            };
            {
                var _a0 = ("SMALLPOX" : stdgo.GoString);
                __deferstack__.unshift(() -> unsetenv(_a0?.__copy__()));
            };
            var _err = setenv(("SMALLPOX" : stdgo.GoString), ("virus" : stdgo.GoString));
            if (_err != null) {
                _t.fatalf(("failed to release smallpox virus" : stdgo.GoString));
            };
            {
                var __tmp__ = lookupEnv(("SMALLPOX" : stdgo.GoString));
                _ok = __tmp__._1;
            };
            if (!_ok) {
                _t.errorf(("smallpox release failed; world remains safe but LookupEnv is broken" : stdgo.GoString));
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
function testEnvironConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        for (__8 => _kv in environ_()) {
            var _i = stdgo._internal.strings.Strings.index(_kv?.__copy__(), ("=" : stdgo.GoString));
            if (_i == ((0 : stdgo.GoInt))) {
                _i = (stdgo._internal.strings.Strings.index((_kv.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("=" : stdgo.GoString)) + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            if ((_i < (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("Environ entry missing \'=\': %q" : stdgo.GoString), stdgo.Go.toInterface(_kv));
            };
            var _k = (_kv.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            var _v = (_kv.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            var __tmp__ = lookupEnv(_k?.__copy__()), _v2:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((_ok && (_v == _v2) : Bool)) {
                _t.logf(("LookupEnv(%q) = %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v2), stdgo.Go.toInterface(_ok));
            } else {
                _t.errorf(("Environ contains %q, but LookupEnv(%q) = %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_kv), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v2), stdgo.Go.toInterface(_ok));
            };
            {
                var _err = setenv(_k?.__copy__(), _v?.__copy__());
                if (_err == null) {
                    _t.logf(("Setenv(%q, %q)" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
                } else {
                    _t.errorf(("Environ contains %q, but SetEnv(%q, %q) = %q" : stdgo.GoString), stdgo.Go.toInterface(_kv), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
function testErrIsExist(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os.createTemp(stdgo.Go.str()?.__copy__(), ("_Go_ErrIsExist" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("open ErrIsExist tempfile: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = stdgo._internal.os.Os.openFile(_f.name()?.__copy__(), (194 : stdgo.GoInt), (384u32 : stdgo._internal.io.fs.Fs.FileMode)), _f2:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _f2.close();
                _t.fatal(stdgo.Go.toInterface(("Open should have failed" : stdgo.GoString)));
            };
            {
                var _s = _checkErrorPredicate(("os.IsExist" : stdgo.GoString), stdgo._internal.os.Os.isExist, _err, stdgo._internal.io.fs.Fs.errExist)?.__copy__();
                if (_s != (stdgo.Go.str())) {
                    _t.fatal(stdgo.Go.toInterface(_s));
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
function _testErrNotExist(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _name:stdgo.GoString):stdgo.GoString {
        var __tmp__ = stdgo._internal.os.Os.getwd(), _originalWD:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.os.Os.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _f.close();
            return ("Open should have failed" : stdgo.GoString);
        };
        {
            var _s = _checkErrorPredicate(("os.IsNotExist" : stdgo.GoString), stdgo._internal.os.Os.isNotExist, _err, stdgo._internal.io.fs.Fs.errNotExist)?.__copy__();
            if (_s != (stdgo.Go.str())) {
                return _s?.__copy__();
            };
        };
        _err = stdgo._internal.os.Os.chdir(_name?.__copy__());
        if (_err == null) {
            {
                var _err = stdgo._internal.os.Os.chdir(_originalWD?.__copy__());
                if (_err != null) {
                    _t.fatalf(("Chdir should have failed, failed to restore original working directory: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            return ("Chdir should have failed, restored original working directory" : stdgo.GoString);
        };
        {
            var _s = _checkErrorPredicate(("os.IsNotExist" : stdgo.GoString), stdgo._internal.os.Os.isNotExist, _err, stdgo._internal.io.fs.Fs.errNotExist)?.__copy__();
            if (_s != (stdgo.Go.str())) {
                return _s?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
function testErrIsNotExist(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tmpDir = _t.tempDir()?.__copy__();
        var _name = stdgo._internal.path.filepath.Filepath.join(_tmpDir?.__copy__(), ("NotExists" : stdgo.GoString))?.__copy__();
        {
            var _s = _testErrNotExist(_t, _name?.__copy__())?.__copy__();
            if (_s != (stdgo.Go.str())) {
                _t.fatal(stdgo.Go.toInterface(_s));
            };
        };
        _name = stdgo._internal.path.filepath.Filepath.join(_name?.__copy__(), ("NotExists2" : stdgo.GoString))?.__copy__();
        {
            var _s = _testErrNotExist(_t, _name?.__copy__())?.__copy__();
            if (_s != (stdgo.Go.str())) {
                _t.fatal(stdgo.Go.toInterface(_s));
            };
        };
    }
function _checkErrorPredicate(_predName:stdgo.GoString, _pred:stdgo.Error -> Bool, _err:stdgo.Error, _target:stdgo.Error):stdgo.GoString {
        if (!_pred(_err)) {
            return stdgo._internal.fmt.Fmt.sprintf(("%s does not work as expected for %#v" : stdgo.GoString), stdgo.Go.toInterface(_predName), stdgo.Go.toInterface(_err))?.__copy__();
        };
        if (!stdgo._internal.errors.Errors.is_(_err, _target)) {
            return stdgo._internal.fmt.Fmt.sprintf(("errors.Is(%#v, %#v) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_target))?.__copy__();
        };
        return stdgo.Go.str()?.__copy__();
    }
function testIsExist(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _isExistTests) {
            {
                var _is = stdgo._internal.os.Os.isExist(_tt._err);
                if (_is != (_tt._is)) {
                    _t.errorf(("os.IsExist(%T %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_is), stdgo.Go.toInterface(_tt._is));
                };
            };
            {
                var _is = stdgo._internal.errors.Errors.is_(_tt._err, stdgo._internal.io.fs.Fs.errExist);
                if (_is != (_tt._is)) {
                    _t.errorf(("errors.Is(%T %v, fs.ErrExist) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_is), stdgo.Go.toInterface(_tt._is));
                };
            };
            {
                var _isnot = stdgo._internal.os.Os.isNotExist(_tt._err);
                if (_isnot != (_tt._isnot)) {
                    _t.errorf(("os.IsNotExist(%T %v) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_isnot), stdgo.Go.toInterface(_tt._isnot));
                };
            };
            {
                var _isnot = stdgo._internal.errors.Errors.is_(_tt._err, stdgo._internal.io.fs.Fs.errNotExist);
                if (_isnot != (_tt._isnot)) {
                    _t.errorf(("errors.Is(%T %v, fs.ErrNotExist) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_isnot), stdgo.Go.toInterface(_tt._isnot));
                };
            };
        };
    }
function testIsPermission(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _isPermissionTests) {
            {
                var _got = stdgo._internal.os.Os.isPermission(_tt._err);
                if (_got != (_tt._want)) {
                    _t.errorf(("os.IsPermission(%#v) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
            {
                var _got = stdgo._internal.errors.Errors.is_(_tt._err, stdgo._internal.io.fs.Fs.errPermission);
                if (_got != (_tt._want)) {
                    _t.errorf(("errors.Is(%#v, fs.ErrPermission) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._err), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
function testErrPathNUL(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = stdgo._internal.os.Os.createTemp(stdgo.Go.str()?.__copy__(), stdgo.Go.str("_Go_ErrPathNUL", 0)?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _f.close();
                _t.fatal(stdgo.Go.toInterface(("TempFile should have failed" : stdgo.GoString)));
            };
            {
                var __tmp__ = stdgo._internal.os.Os.createTemp(stdgo.Go.str()?.__copy__(), ("_Go_ErrPathNUL" : stdgo.GoString));
                _f = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("open ErrPathNUL tempfile: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os.remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = stdgo._internal.os.Os.openFile(_f.name()?.__copy__(), (2 : stdgo.GoInt), (384u32 : stdgo._internal.io.fs.Fs.FileMode)), _f2:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("open ErrPathNUL: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _f2.close();
            {
                var __tmp__ = stdgo._internal.os.Os.openFile((_f.name() + stdgo.Go.str(0)?.__copy__() : stdgo.GoString)?.__copy__(), (2 : stdgo.GoInt), (384u32 : stdgo._internal.io.fs.Fs.FileMode));
                _f2 = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err == null) {
                _f2.close();
                _t.fatal(stdgo.Go.toInterface(("Open should have failed" : stdgo.GoString)));
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
function testPathErrorUnwrap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _pe = (stdgo.Go.setRef(({ err : stdgo._internal.io.fs.Fs.errInvalid } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>);
        if (!stdgo._internal.errors.Errors.is_(stdgo.Go.asInterface(_pe), stdgo._internal.io.fs.Fs.errInvalid)) {
            _t.error(stdgo.Go.toInterface(("errors.Is failed, wanted success" : stdgo.GoString)));
        };
    }
function testErrorIsMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.os.Os.isPermission(stdgo.Go.asInterface((new stdgo._internal.os_test.Os_test.T_myErrorIs(stdgo._internal.io.fs.Fs.errPermission) : stdgo._internal.os_test.Os_test.T_myErrorIs)))) {
            _t.error(stdgo.Go.toInterface(("os.IsPermission(err) = true when err.Is(fs.ErrPermission), wanted false" : stdgo.GoString)));
        };
    }
function exampleOpenFile():Void {
        var __tmp__ = stdgo._internal.os.Os.openFile(("notes.txt" : stdgo.GoString), (66 : stdgo.GoInt), (493u32 : stdgo._internal.io.fs.Fs.FileMode)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err = _f.close();
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleOpenFile_append():Void {
        var __tmp__ = stdgo._internal.os.Os.openFile(("access.log" : stdgo.GoString), (1089 : stdgo.GoInt), (420u32 : stdgo._internal.io.fs.Fs.FileMode)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _f.write((("appended some data\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _f.close();
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = _f.close();
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleChmod():Void {
        {
            var _err = stdgo._internal.os.Os.chmod(("some-filename" : stdgo.GoString), (420u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleChtimes():Void {
        var _mtime = stdgo._internal.time.Time.date((2006 : stdgo.GoInt), (2 : stdgo._internal.time.Time.Month), (1 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        var _atime = stdgo._internal.time.Time.date((2007 : stdgo.GoInt), (3 : stdgo._internal.time.Time.Month), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time.utc)?.__copy__();
        {
            var _err = stdgo._internal.os.Os.chtimes(("some-filename" : stdgo.GoString), _atime?.__copy__(), _mtime?.__copy__());
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function exampleFileMode():Void {
        var __tmp__ = stdgo._internal.os.Os.lstat(("some-filename" : stdgo.GoString)), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("permissions: %#o\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode().perm())));
        {
            var _mode = _fi.mode();
            if (_mode.isRegular()) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("regular file" : stdgo.GoString)));
            } else if (_mode.isDir()) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("directory" : stdgo.GoString)));
            } else if ((_mode & (134217728u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("symbolic link" : stdgo.GoString)));
            } else if ((_mode & (33554432u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("named pipe" : stdgo.GoString)));
            };
        };
    }
function exampleErrNotExist():Void {
        var _filename = ("a-nonexistent-file" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.os.Os.stat(_filename?.__copy__()), __0:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo._internal.errors.Errors.is_(_err, stdgo._internal.io.fs.Fs.errNotExist)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("file does not exist" : stdgo.GoString)));
            };
        };
    }
function exampleExpand():Void {
        var _mapper = function(_placeholderName:stdgo.GoString):stdgo.GoString {
            {
                final __value__ = _placeholderName;
                if (__value__ == (("DAY_PART" : stdgo.GoString))) {
                    return ("morning" : stdgo.GoString);
                } else if (__value__ == (("NAME" : stdgo.GoString))) {
                    return ("Gopher" : stdgo.GoString);
                };
            };
            return stdgo.Go.str()?.__copy__();
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.os.Os.expand(("Good ${DAY_PART}, $NAME!" : stdgo.GoString), _mapper)));
    }
function exampleExpandEnv():Void {
        stdgo._internal.os.Os.setenv(("NAME" : stdgo.GoString), ("gopher" : stdgo.GoString));
        stdgo._internal.os.Os.setenv(("BURROW" : stdgo.GoString), ("/usr/gopher" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.os.Os.expandEnv(("$NAME lives in ${BURROW}." : stdgo.GoString))));
    }
function exampleLookupEnv():Void {
        var _show = function(_key:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.os.Os.lookupEnv(_key?.__copy__()), _val:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                stdgo._internal.fmt.Fmt.printf(("%s not set\n" : stdgo.GoString), stdgo.Go.toInterface(_key));
            } else {
                stdgo._internal.fmt.Fmt.printf(("%s=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_val));
            };
        };
        stdgo._internal.os.Os.setenv(("SOME_KEY" : stdgo.GoString), ("value" : stdgo.GoString));
        stdgo._internal.os.Os.setenv(("EMPTY_KEY" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        _show(("SOME_KEY" : stdgo.GoString));
        _show(("EMPTY_KEY" : stdgo.GoString));
        _show(("MISSING_KEY" : stdgo.GoString));
    }
function exampleGetenv():Void {
        stdgo._internal.os.Os.setenv(("NAME" : stdgo.GoString), ("gopher" : stdgo.GoString));
        stdgo._internal.os.Os.setenv(("BURROW" : stdgo.GoString), ("/usr/gopher" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.printf(("%s lives in %s.\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os.getenv(("NAME" : stdgo.GoString))), stdgo.Go.toInterface(stdgo._internal.os.Os.getenv(("BURROW" : stdgo.GoString))));
    }
function exampleUnsetenv():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.os.Os.setenv(("TMPDIR" : stdgo.GoString), ("/my/tmp" : stdgo.GoString));
            {
                var _a0 = ("TMPDIR" : stdgo.GoString);
                __deferstack__.unshift(() -> stdgo._internal.os.Os.unsetenv(_a0?.__copy__()));
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
function exampleReadDir():Void {
        var __tmp__ = stdgo._internal.os.Os.readDir(("." : stdgo.GoString)), _files:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        for (__0 => _file in _files) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_file.name()));
        };
    }
function exampleMkdirTemp():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.mkdirTemp(stdgo.Go.str()?.__copy__(), ("example" : stdgo.GoString)), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os.removeAll(_a0?.__copy__()));
            };
            var _file = stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("tmpfile" : stdgo.GoString))?.__copy__();
            {
                var _err = stdgo._internal.os.Os.writeFile(_file?.__copy__(), (("content" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (438u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
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
function exampleMkdirTemp_suffix():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.mkdirTemp(stdgo.Go.str()?.__copy__(), ("*-logs" : stdgo.GoString)), _logsDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _logsDir;
                __deferstack__.unshift(() -> stdgo._internal.os.Os.removeAll(_a0?.__copy__()));
            };
            var _globPattern = stdgo._internal.path.filepath.Filepath.join(stdgo._internal.os.Os.tempDir()?.__copy__(), ("*-logs" : stdgo.GoString))?.__copy__();
            var __tmp__ = stdgo._internal.path.filepath.Filepath.glob(_globPattern?.__copy__()), _matches:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatalf(("Failed to match %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_globPattern), stdgo.Go.toInterface(_err));
            };
            for (__0 => _match in _matches) {
                {
                    var _err = stdgo._internal.os.Os.removeAll(_match?.__copy__());
                    if (_err != null) {
                        stdgo._internal.log.Log.printf(("Failed to remove %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_match), stdgo.Go.toInterface(_err));
                    };
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
function exampleCreateTemp():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.createTemp(stdgo.Go.str()?.__copy__(), ("example" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os.remove(_a0?.__copy__()));
            };
            {
                var __tmp__ = _f.write((("content" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err = _f.close();
                if (_err != null) {
                    stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
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
function exampleCreateTemp_suffix():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.createTemp(stdgo.Go.str()?.__copy__(), ("example.*.txt" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> stdgo._internal.os.Os.remove(_a0?.__copy__()));
            };
            {
                var __tmp__ = _f.write((("content" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _f.close();
                    stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err = _f.close();
                if (_err != null) {
                    stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
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
function exampleReadFile():Void {
        var __tmp__ = stdgo._internal.os.Os.readFile(("testdata/hello" : stdgo.GoString)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.os.Os.stdout.write(_data);
    }
function exampleWriteFile():Void {
        var _err = stdgo._internal.os.Os.writeFile(("testdata/hello" : stdgo.GoString), (("Hello, Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (438u32 : stdgo._internal.io.fs.Fs.FileMode));
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
    }
function exampleMkdir():Void {
        var _err = stdgo._internal.os.Os.mkdir(("testdir" : stdgo.GoString), (488u32 : stdgo._internal.io.fs.Fs.FileMode));
        if (((_err != null) && !stdgo._internal.os.Os.isExist(_err) : Bool)) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        _err = stdgo._internal.os.Os.writeFile(("testdir/testfile.txt" : stdgo.GoString), (("Hello, Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (432u32 : stdgo._internal.io.fs.Fs.FileMode));
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
    }
function exampleMkdirAll():Void {
        var _err = stdgo._internal.os.Os.mkdirAll(("test/subdir" : stdgo.GoString), (488u32 : stdgo._internal.io.fs.Fs.FileMode));
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
        _err = stdgo._internal.os.Os.writeFile(("test/subdir/testfile.txt" : stdgo.GoString), (("Hello, Gophers!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (432u32 : stdgo._internal.io.fs.Fs.FileMode));
        if (_err != null) {
            stdgo._internal.log.Log.fatal(stdgo.Go.toInterface(_err));
        };
    }
function testExecutable(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
        _t.parallel();
        var __tmp__ = stdgo._internal.os.Os.executable(), _ep:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Executable failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _dir = stdgo._internal.path.filepath.Filepath.dir(stdgo._internal.path.filepath.Filepath.dir(_ep?.__copy__())?.__copy__())?.__copy__();
        var __tmp__ = stdgo._internal.path.filepath.Filepath.rel(_dir?.__copy__(), _ep?.__copy__()), _fn:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("filepath.Rel: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _cmd = stdgo._internal.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), _fn?.__copy__(), ("-test.run=XXXX" : stdgo.GoString));
        _cmd.dir = _dir?.__copy__();
        _cmd.path = _fn?.__copy__();
        if (false) {} else {
            _cmd.args[(0 : stdgo.GoInt)] = ("-" : stdgo.GoString);
        };
        _cmd.env = (_cmd.environ_().__append__(stdgo._internal.fmt.Fmt.sprintf(("%s=1" : stdgo.GoString), stdgo.Go.toInterface(("OSTEST_OUTPUT_EXECPATH" : stdgo.GoString)))?.__copy__()));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("exec(self) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _outs = (_out : stdgo.GoString)?.__copy__();
        if (!stdgo._internal.path.filepath.Filepath.isAbs(_outs?.__copy__())) {
            _t.fatalf(("Child returned %q, want an absolute path" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
        if (!_sameFile(_outs?.__copy__(), _ep?.__copy__())) {
            _t.fatalf(("Child returned %q, not the same file as %q" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_ep));
        };
    }
function _sameFile(_fn1:stdgo.GoString, _fn2:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.os.Os.stat(_fn1?.__copy__()), _fi1:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        var __tmp__ = stdgo._internal.os.Os.stat(_fn2?.__copy__()), _fi2:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        return stdgo._internal.os.Os.sameFile(_fi1, _fi2);
    }
function testExecutableDeleted(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("windows" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString))) {
                _t.skipf(("%v does not support deleting running binary" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            } else if (__value__ == (("openbsd" : stdgo.GoString)) || __value__ == (("freebsd" : stdgo.GoString)) || __value__ == (("aix" : stdgo.GoString))) {
                _t.skipf(("%v does not support reading deleted binary name" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
        };
        _t.parallel();
        var _dir = _t.tempDir()?.__copy__();
        var _src = stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("testdel.go" : stdgo.GoString))?.__copy__();
        var _exe = stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("testdel.exe" : stdgo.GoString))?.__copy__();
        var _err = stdgo._internal.os.Os.writeFile(_src?.__copy__(), (("package main\n\nimport (\n\t\"fmt\"\n\t\"os\"\n)\n\nfunc main() {\n\tbefore, err := os.Executable()\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to read executable name before deletion: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\terr = os.Remove(before)\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to remove executable: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\tafter, err := os.Executable()\n\tif err != nil {\n\t\tfmt.Fprintf(os.Stderr, \"failed to read executable name after deletion: %v\\n\", err)\n\t\tos.Exit(1)\n\t}\n\n\tif before != after {\n\t\tfmt.Fprintf(os.Stderr, \"before and after do not match: %v != %v\\n\", before, after)\n\t\tos.Exit(1)\n\t}\n}\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (438u32 : stdgo._internal.io.fs.Fs.FileMode));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), stdgo._internal.internal.testenv.Testenv.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("build" : stdgo.GoString), ("-o" : stdgo.GoString), _exe?.__copy__(), _src?.__copy__()).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _t.logf(("build output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), _exe?.__copy__()).combinedOutput();
            _out = __tmp__._0;
            _err = __tmp__._1;
        };
        _t.logf(("exec output:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
function testMain(_m:stdgo.Ref<stdgo._internal.testing.Testing.M>):Void {
        if (getenv(("GO_OS_TEST_DRAIN_STDIN" : stdgo.GoString)) == (("1" : stdgo.GoString))) {
            stdout.close();
            stdgo._internal.io.Io.copy(stdgo._internal.io.Io.discard, stdgo.Go.asInterface(stdin));
            exit((0 : stdgo.GoInt));
        };
        exit(_m.run());
    }
function _size(_name:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):stdgo.GoInt64 {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = open(_name?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("open failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = _file.close();
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(_err));
                        };
                    };
                };
                a();
            });
            var __tmp__ = stdgo._internal.io.Io.copy(stdgo._internal.io.Io.discard, stdgo.Go.asInterface(_file)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _n;
            };
            {
                final __ret__:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function _equal(_name1:stdgo.GoString, _name2:stdgo.GoString):Bool {
        var _r = false;
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("windows" : stdgo.GoString))) {
                _r = stdgo._internal.strings.Strings.toLower(_name1?.__copy__()) == (stdgo._internal.strings.Strings.toLower(_name2?.__copy__()));
            } else {
                _r = _name1 == (_name2);
            };
        };
        return _r;
    }
function _localTmp():stdgo.GoString {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString)) || __value__ == (("windows" : stdgo.GoString))) {
                return tempDir()?.__copy__();
            };
        };
        return ("/tmp" : stdgo.GoString);
    }
function _newFile(_testName:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):stdgo.Ref<File> {
        var _f = (null : stdgo.Ref<stdgo._internal.os.Os.File>);
        var __tmp__ = createTemp(_localTmp()?.__copy__(), (("_Go_" : stdgo.GoString) + _testName?.__copy__() : stdgo.GoString)?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("TempFile %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_err));
        };
        return _f;
    }
function _newDir(_testName:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):stdgo.GoString {
        var _name = ("" : stdgo.GoString);
        var __tmp__ = mkdirTemp(_localTmp()?.__copy__(), (("_Go_" : stdgo.GoString) + _testName?.__copy__() : stdgo.GoString)?.__copy__()), _name:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("TempDir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_err));
        };
        return _name;
    }
function testStat(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _path = ((_sfdir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _sfname?.__copy__() : stdgo.GoString)?.__copy__();
        var __tmp__ = stat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("stat failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!_equal(_sfname?.__copy__(), _dir.name()?.__copy__())) {
            _t.error(stdgo.Go.toInterface(("name should be " : stdgo.GoString)), stdgo.Go.toInterface(_sfname), stdgo.Go.toInterface(("; is" : stdgo.GoString)), stdgo.Go.toInterface(_dir.name()));
        };
        var _filesize = _size(_path?.__copy__(), _t);
        if (_dir.size() != (_filesize)) {
            _t.error(stdgo.Go.toInterface(("size should be" : stdgo.GoString)), stdgo.Go.toInterface(_filesize), stdgo.Go.toInterface(("; is" : stdgo.GoString)), stdgo.Go.toInterface(_dir.size()));
        };
    }
function testStatError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var _path = ("no-such-file" : stdgo.GoString);
            var __tmp__ = stat(_path?.__copy__()), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("got nil, want error" : stdgo.GoString)));
            };
            if (_fi != null) {
                _t.errorf(("got %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_fi));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
                }, _perr = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("got %T, want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_perr)));
                };
            };
            stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
            var _link = ("symlink" : stdgo.GoString);
            _err = symlink(_path?.__copy__(), _link?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = stat(_link?.__copy__());
                _fi = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("got nil, want error" : stdgo.GoString)));
            };
            if (_fi != null) {
                _t.errorf(("got %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_fi));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
                }, _perr = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("got %T, want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_perr)));
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
function testStatSymlinkLoop(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var _err = symlink(("x" : stdgo.GoString), ("y" : stdgo.GoString));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = ("y" : stdgo.GoString);
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            _err = symlink(("y" : stdgo.GoString), ("x" : stdgo.GoString));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = ("x" : stdgo.GoString);
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            {
                var __tmp__ = stat(("x" : stdgo.GoString));
                _err = __tmp__._1;
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
                }, __16 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("expected *PathError, got %T: %v\n" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
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
function testFstat(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _path = ((_sfdir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _sfname?.__copy__() : stdgo.GoString)?.__copy__();
            var __tmp__ = open(_path?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            if (_err1 != null) {
                _t.fatal(stdgo.Go.toInterface(("open failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err1));
            };
            __deferstack__.unshift(() -> _file.close());
            var __tmp__ = _file.stat(), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if (_err2 != null) {
                _t.fatal(stdgo.Go.toInterface(("fstat failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err2));
            };
            if (!_equal(_sfname?.__copy__(), _dir.name()?.__copy__())) {
                _t.error(stdgo.Go.toInterface(("name should be " : stdgo.GoString)), stdgo.Go.toInterface(_sfname), stdgo.Go.toInterface(("; is" : stdgo.GoString)), stdgo.Go.toInterface(_dir.name()));
            };
            var _filesize = _size(_path?.__copy__(), _t);
            if (_dir.size() != (_filesize)) {
                _t.error(stdgo.Go.toInterface(("size should be" : stdgo.GoString)), stdgo.Go.toInterface(_filesize), stdgo.Go.toInterface(("; is" : stdgo.GoString)), stdgo.Go.toInterface(_dir.size()));
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
function testLstat(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _path = ((_sfdir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _sfname?.__copy__() : stdgo.GoString)?.__copy__();
        var __tmp__ = lstat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("lstat failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!_equal(_sfname?.__copy__(), _dir.name()?.__copy__())) {
            _t.error(stdgo.Go.toInterface(("name should be " : stdgo.GoString)), stdgo.Go.toInterface(_sfname), stdgo.Go.toInterface(("; is" : stdgo.GoString)), stdgo.Go.toInterface(_dir.name()));
        };
        if ((_dir.mode() & (134217728u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
            var _filesize = _size(_path?.__copy__(), _t);
            if (_dir.size() != (_filesize)) {
                _t.error(stdgo.Go.toInterface(("size should be" : stdgo.GoString)), stdgo.Go.toInterface(_filesize), stdgo.Go.toInterface(("; is" : stdgo.GoString)), stdgo.Go.toInterface(_dir.size()));
            };
        };
    }
function testRead0(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _path = ((_sfdir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _sfname?.__copy__() : stdgo.GoString)?.__copy__();
            var __tmp__ = open(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("open failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _f.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_n != (0 : stdgo.GoInt)) || (_err != null) : Bool)) {
                _t.errorf(("Read(0) = %d, %v, want 0, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
            _b = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = _f.read(_b);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (((_n <= (0 : stdgo.GoInt) : Bool) || (_err != null) : Bool)) {
                _t.errorf(("Read(100) = %d, %v, want >0, nil" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
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
function testReadClosed(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _path = ((_sfdir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _sfname?.__copy__() : stdgo.GoString)?.__copy__();
        var __tmp__ = open(_path?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("open failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _file.close();
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = _file.read(_b);
            _err = __tmp__._1;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
        }, _e = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok || (stdgo.Go.toInterface(_e.err) != stdgo.Go.toInterface(errClosed)) : Bool)) {
            _t.fatalf(("Read: got %T(%v), want %T(%v)" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)), stdgo.Go.toInterface(errClosed));
        };
    }
function _testReaddirnames(_dir:stdgo.GoString, _contents:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.testing.Testing.T_> -> Void {
        return function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _t.parallel();
                var __tmp__ = open(_dir?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                };
                __deferstack__.unshift(() -> _file.close());
                var __tmp__ = _file.readdirnames((-1 : stdgo.GoInt)), _s:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                if (_err2 != null) {
                    _t.fatalf(("Readdirnames %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err2));
                };
                for (__24 => _m in _contents) {
                    var _found = false;
                    for (__25 => _n in _s) {
                        if (((_n == ("." : stdgo.GoString)) || (_n == (".." : stdgo.GoString)) : Bool)) {
                            _t.errorf(("got %q in directory" : stdgo.GoString), stdgo.Go.toInterface(_n));
                        };
                        if (!_equal(_m?.__copy__(), _n?.__copy__())) {
                            continue;
                        };
                        if (_found) {
                            _t.error(stdgo.Go.toInterface(("present twice:" : stdgo.GoString)), stdgo.Go.toInterface(_m));
                        };
                        _found = true;
                    };
                    if (!_found) {
                        _t.error(stdgo.Go.toInterface(("could not find" : stdgo.GoString)), stdgo.Go.toInterface(_m));
                    };
                };
                if (_s == null) {
                    _t.error(stdgo.Go.toInterface(("Readdirnames returned nil instead of empty slice" : stdgo.GoString)));
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
    }
function _testReaddir(_dir:stdgo.GoString, _contents:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.testing.Testing.T_> -> Void {
        return function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _t.parallel();
                var __tmp__ = open(_dir?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                };
                __deferstack__.unshift(() -> _file.close());
                var __tmp__ = _file.readdir((-1 : stdgo.GoInt)), _s:stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo> = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                if (_err2 != null) {
                    _t.fatalf(("Readdir %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err2));
                };
                for (__24 => _m in _contents) {
                    var _found = false;
                    for (__25 => _n in _s) {
                        if (((_n.name() == ("." : stdgo.GoString)) || (_n.name() == (".." : stdgo.GoString)) : Bool)) {
                            _t.errorf(("got %q in directory" : stdgo.GoString), stdgo.Go.toInterface(_n.name()));
                        };
                        if (!_equal(_m?.__copy__(), _n.name()?.__copy__())) {
                            continue;
                        };
                        if (_found) {
                            _t.error(stdgo.Go.toInterface(("present twice:" : stdgo.GoString)), stdgo.Go.toInterface(_m));
                        };
                        _found = true;
                    };
                    if (!_found) {
                        _t.error(stdgo.Go.toInterface(("could not find" : stdgo.GoString)), stdgo.Go.toInterface(_m));
                    };
                };
                if (_s == null) {
                    _t.error(stdgo.Go.toInterface(("Readdir returned nil instead of empty slice" : stdgo.GoString)));
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
    }
function _testReadDir(_dir:stdgo.GoString, _contents:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.testing.Testing.T_> -> Void {
        return function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _t.parallel();
                var __tmp__ = open(_dir?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
                };
                __deferstack__.unshift(() -> _file.close());
                var __tmp__ = _file.readDir((-1 : stdgo.GoInt)), _s:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                if (_err2 != null) {
                    _t.fatalf(("ReadDir %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err2));
                };
                for (__24 => _m in _contents) {
                    var _found = false;
                    for (__25 => _n in _s) {
                        if (((_n.name() == ("." : stdgo.GoString)) || (_n.name() == (".." : stdgo.GoString)) : Bool)) {
                            _t.errorf(("got %q in directory" : stdgo.GoString), stdgo.Go.toInterface(_n));
                        };
                        if (!_equal(_m?.__copy__(), _n.name()?.__copy__())) {
                            continue;
                        };
                        if (_found) {
                            _t.error(stdgo.Go.toInterface(("present twice:" : stdgo.GoString)), stdgo.Go.toInterface(_m));
                        };
                        _found = true;
                        var __tmp__ = lstat(((_dir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _m?.__copy__() : stdgo.GoString)?.__copy__()), _lstat:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.fatal(stdgo.Go.toInterface(_err));
                        };
                        if (_n.isDir() != (_lstat.isDir())) {
                            _t.errorf(("%s: IsDir=%v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_n.isDir()), stdgo.Go.toInterface(_lstat.isDir()));
                        };
                        if (_n.type() != (_lstat.mode().type())) {
                            _t.errorf(("%s: IsDir=%v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(stdgo.Go.asInterface(_n.type())), stdgo.Go.toInterface(stdgo.Go.asInterface(_lstat.mode().type())));
                        };
                        var __tmp__ = _n.info(), _info:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.errorf(("%s: Info: %v" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_err));
                            continue;
                        };
                        if (!sameFile(_info, _lstat)) {
                            _t.errorf(("%s: Info: SameFile(info, lstat) = false" : stdgo.GoString), stdgo.Go.toInterface(_m));
                        };
                    };
                    if (!_found) {
                        _t.error(stdgo.Go.toInterface(("could not find" : stdgo.GoString)), stdgo.Go.toInterface(_m));
                    };
                };
                if (_s == null) {
                    _t.error(stdgo.Go.toInterface(("ReadDir returned nil instead of empty slice" : stdgo.GoString)));
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
    }
function testFileReaddirnames(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        _t.run(("." : stdgo.GoString), _testReaddirnames(("." : stdgo.GoString), _dot));
        _t.run(("sysdir" : stdgo.GoString), _testReaddirnames(_sysdir._name?.__copy__(), _sysdir._files));
        _t.run(("TempDir" : stdgo.GoString), _testReaddirnames(_t.tempDir()?.__copy__(), (null : stdgo.Slice<stdgo.GoString>)));
    }
function testFileReaddir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        _t.run(("." : stdgo.GoString), _testReaddir(("." : stdgo.GoString), _dot));
        _t.run(("sysdir" : stdgo.GoString), _testReaddir(_sysdir._name?.__copy__(), _sysdir._files));
        _t.run(("TempDir" : stdgo.GoString), _testReaddir(_t.tempDir()?.__copy__(), (null : stdgo.Slice<stdgo.GoString>)));
    }
function testFileReadDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        _t.run(("." : stdgo.GoString), _testReadDir(("." : stdgo.GoString), _dot));
        _t.run(("sysdir" : stdgo.GoString), _testReadDir(_sysdir._name?.__copy__(), _sysdir._files));
        _t.run(("TempDir" : stdgo.GoString), _testReadDir(_t.tempDir()?.__copy__(), (null : stdgo.Slice<stdgo.GoString>)));
    }
function _benchmarkReaddirname(_path:stdgo.GoString, _b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _nentries:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __tmp__ = open(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
                var __tmp__ = _f.readdirnames((-1 : stdgo.GoInt)), _ns:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _f.close();
                if (_err != null) {
                    _b.fatalf(("readdirnames %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
                _nentries = (_ns.length);
            });
        };
        _b.logf(("benchmarkReaddirname %q: %d entries" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_nentries));
    }
function _benchmarkReaddir(_path:stdgo.GoString, _b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _nentries:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __tmp__ = open(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
                var __tmp__ = _f.readdir((-1 : stdgo.GoInt)), _fs:stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _f.close();
                if (_err != null) {
                    _b.fatalf(("readdir %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
                _nentries = (_fs.length);
            });
        };
        _b.logf(("benchmarkReaddir %q: %d entries" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_nentries));
    }
function _benchmarkReadDir(_path:stdgo.GoString, _b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _nentries:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __tmp__ = open(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
                var __tmp__ = _f.readDir((-1 : stdgo.GoInt)), _fs:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _f.close();
                if (_err != null) {
                    _b.fatalf(("readdir %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
                _nentries = (_fs.length);
            });
        };
        _b.logf(("benchmarkReadDir %q: %d entries" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_nentries));
    }
function benchmarkReaddirname(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkReaddirname(("." : stdgo.GoString), _b);
    }
function benchmarkReaddir(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkReaddir(("." : stdgo.GoString), _b);
    }
function benchmarkReadDir(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkReadDir(("." : stdgo.GoString), _b);
    }
function _benchmarkStat(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _path:stdgo.GoString):Void {
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __tmp__ = stat(_path?.__copy__()), __16:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatalf(("Stat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function _benchmarkLstat(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _path:stdgo.GoString):Void {
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __tmp__ = lstat(_path?.__copy__()), __16:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatalf(("Lstat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
            });
        };
    }
function benchmarkStatDot(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkStat(_b, ("." : stdgo.GoString));
    }
function benchmarkStatFile(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkStat(_b, stdgo._internal.path.filepath.Filepath.join(stdgo._internal.runtime.Runtime.goroot()?.__copy__(), ("src/os/os_test.go" : stdgo.GoString))?.__copy__());
    }
function benchmarkStatDir(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkStat(_b, stdgo._internal.path.filepath.Filepath.join(stdgo._internal.runtime.Runtime.goroot()?.__copy__(), ("src/os" : stdgo.GoString))?.__copy__());
    }
function benchmarkLstatDot(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkLstat(_b, ("." : stdgo.GoString));
    }
function benchmarkLstatFile(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkLstat(_b, stdgo._internal.path.filepath.Filepath.join(stdgo._internal.runtime.Runtime.goroot()?.__copy__(), ("src/os/os_test.go" : stdgo.GoString))?.__copy__());
    }
function benchmarkLstatDir(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkLstat(_b, stdgo._internal.path.filepath.Filepath.join(stdgo._internal.runtime.Runtime.goroot()?.__copy__(), ("src/os" : stdgo.GoString))?.__copy__());
    }
function _smallReaddirnames(_file:stdgo.Ref<File>, _length:stdgo.GoInt, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):stdgo.Slice<stdgo.GoString> {
        var _names = (new stdgo.Slice<stdgo.GoString>((_length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _count = (0 : stdgo.GoInt);
        while (true) {
            var __tmp__ = _file.readdirnames((1 : stdgo.GoInt)), _d:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                break;
            };
            if (_err != null) {
                _t.fatalf(("readdirnames %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_file.name()), stdgo.Go.toInterface(_err));
            };
            if ((_d.length) == ((0 : stdgo.GoInt))) {
                _t.fatalf(("readdirnames %q returned empty slice and no error" : stdgo.GoString), stdgo.Go.toInterface(_file.name()));
            };
            _names[(_count : stdgo.GoInt)] = _d[(0 : stdgo.GoInt)]?.__copy__();
            _count++;
        };
        return (_names.__slice__((0 : stdgo.GoInt), _count) : stdgo.Slice<stdgo.GoString>);
    }
function testReaddirnamesOneAtATime(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _dir = ("/usr/bin" : stdgo.GoString);
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("android" : stdgo.GoString))) {
                    _dir = ("/system/bin" : stdgo.GoString);
                } else if (__value__ == (("ios" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString))) {
                    var __tmp__ = getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    _dir = _wd?.__copy__();
                } else if (__value__ == (("plan9" : stdgo.GoString))) {
                    _dir = ("/bin" : stdgo.GoString);
                } else if (__value__ == (("windows" : stdgo.GoString))) {
                    _dir = (getenv(("SystemRoot" : stdgo.GoString)) + ("\\system32" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                };
            };
            var __tmp__ = open(_dir?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _file.close());
            var __tmp__ = _file.readdirnames((-1 : stdgo.GoInt)), _all:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            if (_err1 != null) {
                _t.fatalf(("readdirnames %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err1));
            };
            var __tmp__ = open(_dir?.__copy__()), _file1:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
            if (_err2 != null) {
                _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err2));
            };
            __deferstack__.unshift(() -> _file1.close());
            var _small = _smallReaddirnames(_file1, ((_all.length) + (100 : stdgo.GoInt) : stdgo.GoInt), _t);
            if (((_small.length) < (_all.length) : Bool)) {
                _t.fatalf(("len(small) is %d, less than %d" : stdgo.GoString), stdgo.Go.toInterface((_small.length)), stdgo.Go.toInterface((_all.length)));
            };
            for (_i => _n in _all) {
                if (_small[(_i : stdgo.GoInt)] != (_n)) {
                    _t.errorf(("small read %q mismatch: %v" : stdgo.GoString), stdgo.Go.toInterface(_small[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_n));
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
function testReaddirNValues(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("test.short; skipping" : stdgo.GoString)));
        };
        _t.parallel();
        var _dir = _t.tempDir()?.__copy__();
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (105 : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = create(stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), stdgo._internal.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__())?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("Create: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                _f.write((stdgo._internal.strings.Strings.repeat(("X" : stdgo.GoString), _i) : stdgo.Slice<stdgo.GoByte>));
                _f.close();
            });
        };
        var _d:stdgo.Ref<File> = (null : stdgo.Ref<stdgo._internal.os.Os.File>);
        var _openDir = function():Void {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = open(_dir?.__copy__());
                _d = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Open directory: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _readdirExpect = function(_n:stdgo.GoInt, _want:stdgo.GoInt, _wantErr:stdgo.Error):Void {
            _t.helper();
            var __tmp__ = _d.readdir(_n), _fi:stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_wantErr))) {
                _t.fatalf(("Readdir of %d got error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr));
            };
            {
                var __0 = (_fi.length), __1 = _want;
var _e = __1, _g = __0;
                if (_g != (_e)) {
                    _t.errorf(("Readdir of %d got %d files, want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
                };
            };
        };
        var _readDirExpect = function(_n:stdgo.GoInt, _want:stdgo.GoInt, _wantErr:stdgo.Error):Void {
            _t.helper();
            var __tmp__ = _d.readDir(_n), _de:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_wantErr))) {
                _t.fatalf(("ReadDir of %d got error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr));
            };
            {
                var __0 = (_de.length), __1 = _want;
var _e = __1, _g = __0;
                if (_g != (_e)) {
                    _t.errorf(("ReadDir of %d got %d files, want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
                };
            };
        };
        var _readdirnamesExpect = function(_n:stdgo.GoInt, _want:stdgo.GoInt, _wantErr:stdgo.Error):Void {
            _t.helper();
            var __tmp__ = _d.readdirnames(_n), _fi:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_wantErr))) {
                _t.fatalf(("Readdirnames of %d got error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr));
            };
            {
                var __0 = (_fi.length), __1 = _want;
var _e = __1, _g = __0;
                if (_g != (_e)) {
                    _t.errorf(("Readdirnames of %d got %d files, want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_e));
                };
            };
        };
        for (__32 => _fn in (new stdgo.Slice<(stdgo.GoInt, stdgo.GoInt, stdgo.Error) -> Void>(3, 3, ...[_readdirExpect, _readdirnamesExpect, _readDirExpect]) : stdgo.Slice<(stdgo.GoInt, stdgo.GoInt, stdgo.Error) -> Void>)) {
            _openDir();
            _fn((0 : stdgo.GoInt), (105 : stdgo.GoInt), (null : stdgo.Error));
            _fn((0 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Error));
            _d.close();
            _openDir();
            _fn((-1 : stdgo.GoInt), (105 : stdgo.GoInt), (null : stdgo.Error));
            _fn((-2 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Error));
            _fn((0 : stdgo.GoInt), (0 : stdgo.GoInt), (null : stdgo.Error));
            _d.close();
            _openDir();
            _fn((1 : stdgo.GoInt), (1 : stdgo.GoInt), (null : stdgo.Error));
            _fn((2 : stdgo.GoInt), (2 : stdgo.GoInt), (null : stdgo.Error));
            _fn((105 : stdgo.GoInt), (102 : stdgo.GoInt), (null : stdgo.Error));
            _fn((3 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.io.Io.eof);
            _d.close();
        };
    }
function _touch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _name:stdgo.GoString):Void {
        var __tmp__ = create(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err = _f.close();
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function testReaddirStatFailures(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("windows" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString))) {
                    _t.skipf(("skipping test on %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
                };
            };
            var _xerr:stdgo.Error = (null : stdgo.Error);
            lstatP = function(_path:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } {
                if (((_xerr != null) && stdgo._internal.strings.Strings.hasSuffix(_path?.__copy__(), ("x" : stdgo.GoString)) : Bool)) {
                    return { _0 : (null : stdgo._internal.io.fs.Fs.FileInfo), _1 : _xerr };
                };
                return lstat(_path?.__copy__());
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    lstatP = lstat;
                };
                a();
            });
            var _dir = _t.tempDir()?.__copy__();
            _touch(_t, stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("good1" : stdgo.GoString))?.__copy__());
            _touch(_t, stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("x" : stdgo.GoString))?.__copy__());
            _touch(_t, stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("good2" : stdgo.GoString))?.__copy__());
            var _readDir = function():{ var _0 : stdgo.Slice<FileInfo>; var _1 : stdgo.Error; } {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    var __tmp__ = open(_dir?.__copy__()), _d:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    __deferstack__.unshift(() -> _d.close());
                    {
                        final __ret__:{ var _0 : stdgo.Slice<FileInfo>; var _1 : stdgo.Error; } = _d.readdir((-1 : stdgo.GoInt));
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:{ var _0 : stdgo.Slice<FileInfo>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo>), _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return __ret__;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    final __ret__:{ var _0 : stdgo.Slice<FileInfo>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo>), _1 : (null : stdgo.Error) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            };
            var _mustReadDir = function(_testName:stdgo.GoString):stdgo.Slice<FileInfo> {
                var __tmp__ = _readDir(), _fis:stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("%s: Readdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_err));
                };
                return _fis;
            };
            var _names = function(_fis:stdgo.Slice<FileInfo>):stdgo.Slice<stdgo.GoString> {
                var _s = (new stdgo.Slice<stdgo.GoString>((_fis.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
                for (_i => _fi in _fis) {
                    _s[(_i : stdgo.GoInt)] = _fi.name()?.__copy__();
                };
                stdgo._internal.sort.Sort.strings(_s);
                return _s;
            };
            {
                var __0 = _names(_mustReadDir(("initial readdir" : stdgo.GoString))), __1 = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("good1" : stdgo.GoString), ("good2" : stdgo.GoString), ("x" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _want = __1, _got = __0;
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                    _t.errorf(("initial readdir got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            _xerr = errNotExist;
            {
                var __0 = _names(_mustReadDir(("with x disappearing" : stdgo.GoString))), __1 = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("good1" : stdgo.GoString), ("good2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _want = __1, _got = __0;
                if (!stdgo._internal.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
                    _t.errorf(("with x disappearing, got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
            _xerr = stdgo._internal.errors.Errors.new_(("some real error" : stdgo.GoString));
            {
                var __tmp__ = _readDir(), __32:stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_xerr))) {
                    _t.errorf(("with a non-ErrNotExist error, got error %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_xerr));
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
function testReaddirOfFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = createTemp(_t.tempDir()?.__copy__(), ("_Go_ReaddirOfFile" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _f.write((("foo" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _f.close();
            var __tmp__ = open(_f.name()?.__copy__()), _reg:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _reg.close());
            var __tmp__ = _reg.readdirnames((-1 : stdgo.GoInt)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("Readdirnames succeeded; want non-nil error" : stdgo.GoString)));
            };
            var _pe:stdgo.Ref<PathError> = (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>);
            if ((!stdgo._internal.errors.Errors.as(_err, stdgo.Go.toInterface((stdgo.Go.setRef(_pe) : stdgo.Ref<stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>>))) || (_pe.path != _f.name()) : Bool)) {
                _t.errorf(("Readdirnames returned %q; want a PathError with path %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_f.name()));
            };
            if (((_names.length) > (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("unexpected dir names in regular file: %q" : stdgo.GoString), stdgo.Go.toInterface(_names));
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
function testHardLink(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv.mustHaveLink(stdgo.Go.asInterface(_t));
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __0 = ("hardlinktestfrom" : stdgo.GoString), __1 = ("hardlinktestto" : stdgo.GoString);
var _to = __1, _from = __0;
            var __tmp__ = create(_to?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
            };
            {
                _err = _file.close();
                if (_err != null) {
                    _t.errorf(("close %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
                };
            };
            _err = link(_to?.__copy__(), _from?.__copy__());
            if (_err != null) {
                _t.fatalf(("link %q, %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            var _none = ("hardlinktestnone" : stdgo.GoString);
            _err = link(_none?.__copy__(), _none?.__copy__());
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<LinkError>)) : stdgo.Ref<LinkError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.os.Os.LinkError>), _1 : false };
                }, _lerr = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || (_lerr.error() == stdgo.Go.str()) : Bool)) {
                    _t.errorf(("link %q, %q failed to return a valid error" : stdgo.GoString), stdgo.Go.toInterface(_none), stdgo.Go.toInterface(_none));
                };
            };
            var __tmp__ = stat(_to?.__copy__()), _tostat:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stat(_from?.__copy__()), _fromstat:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if (!sameFile(_tostat, _fromstat)) {
                _t.errorf(("link %q, %q did not create hard link" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from));
            };
            _err = link(_to?.__copy__(), _from?.__copy__());
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<LinkError>))) {
                    var _err:stdgo.Ref<stdgo._internal.os.Os.LinkError> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.os.Os.LinkError>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.os.Os.LinkError>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.os.Os.LinkError>) : __type__.__underlying__().value;
                    if (_err.op != (("link" : stdgo.GoString))) {
                        _t.errorf(("Link(%q, %q) err.Op = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err.op), stdgo.Go.toInterface(("link" : stdgo.GoString)));
                    };
                    if (_err.old != (_to)) {
                        _t.errorf(("Link(%q, %q) err.Old = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err.old), stdgo.Go.toInterface(_to));
                    };
                    if (_err.new_ != (_from)) {
                        _t.errorf(("Link(%q, %q) err.New = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err.new_), stdgo.Go.toInterface(_from));
                    };
                    if (!isExist(_err.err)) {
                        _t.errorf(("Link(%q, %q) err.Err = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err.err), stdgo.Go.toInterface(("file exists error" : stdgo.GoString)));
                    };
                } else if (__type__ == null) {
                    var _err:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                    _t.errorf(("link %q, %q: expected error, got nil" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to));
                } else {
                    var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    _t.errorf(("link %q, %q: expected %T, got %T %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>))), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
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
function _chtmpdir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):() -> Void {
        var __tmp__ = getwd(), _oldwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = mkdirTemp(stdgo.Go.str()?.__copy__(), ("test" : stdgo.GoString)), _d:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var _err = chdir(_d?.__copy__());
            if (_err != null) {
                _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        return function():Void {
            {
                var _err = chdir(_oldwd?.__copy__());
                if (_err != null) {
                    _t.fatalf(("chtmpdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            removeAll(_d?.__copy__());
        };
    }
function testSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __0 = ("symlinktestfrom" : stdgo.GoString), __1 = ("symlinktestto" : stdgo.GoString);
var _to = __1, _from = __0;
            var __tmp__ = create(_to?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Create(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
            };
            {
                _err = _file.close();
                if (_err != null) {
                    _t.errorf(("Close(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
                };
            };
            _err = symlink(_to?.__copy__(), _from?.__copy__());
            if (_err != null) {
                _t.fatalf(("Symlink(%q, %q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = lstat(_to?.__copy__()), _tostat:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Lstat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
            };
            if ((_tostat.mode() & (134217728u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
                _t.fatalf(("Lstat(%q).Mode()&ModeSymlink = %v, want 0" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(stdgo.Go.asInterface((_tostat.mode() & (134217728u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode))));
            };
            var __tmp__ = stat(_from?.__copy__()), _fromstat:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if (!sameFile(_tostat, _fromstat)) {
                _t.errorf(("Symlink(%q, %q) did not create symlink" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from));
            };
            {
                var __tmp__ = lstat(_from?.__copy__());
                _fromstat = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Lstat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if ((_fromstat.mode() & (134217728u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
                _t.fatalf(("Lstat(%q).Mode()&ModeSymlink = 0, want %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(stdgo.Go.asInterface((134217728u32 : stdgo._internal.io.fs.Fs.FileMode))));
            };
            {
                var __tmp__ = stat(_from?.__copy__());
                _fromstat = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Stat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if (_fromstat.name() != (_from)) {
                _t.errorf(("Stat(%q).Name() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_fromstat.name()), stdgo.Go.toInterface(_from));
            };
            if ((_fromstat.mode() & (134217728u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
                _t.fatalf(("Stat(%q).Mode()&ModeSymlink = %v, want 0" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(stdgo.Go.asInterface((_fromstat.mode() & (134217728u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode))));
            };
            var __tmp__ = readlink(_from?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Readlink(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if (_s != (_to)) {
                _t.fatalf(("Readlink(%q) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_to));
            };
            {
                var __tmp__ = open(_from?.__copy__());
                _file = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Open(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            _file.close();
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
function testLongSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var _s = ("0123456789abcdef" : stdgo.GoString);
            _s = ((((((((((((((_s + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
            var _from = ("longsymlinktestfrom" : stdgo.GoString);
            var _err = symlink(_s?.__copy__(), _from?.__copy__());
            if (_err != null) {
                _t.fatalf(("symlink %q, %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = readlink(_from?.__copy__()), _r:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("readlink %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            if (_r != (_s)) {
                _t.fatalf(("after symlink %q != %q" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_s));
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
function testRename(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __0 = ("renamefrom" : stdgo.GoString), __1 = ("renameto" : stdgo.GoString);
var _to = __1, _from = __0;
            var __tmp__ = create(_from?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("open %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            {
                _err = _file.close();
                if (_err != null) {
                    _t.errorf(("close %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
                };
            };
            _err = rename(_from?.__copy__(), _to?.__copy__());
            if (_err != null) {
                _t.fatalf(("rename %q, %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = stat(_to?.__copy__());
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.errorf(("stat %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
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
function testRenameOverwriteDest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __0 = ("renamefrom" : stdgo.GoString), __1 = ("renameto" : stdgo.GoString);
var _to = __1, _from = __0;
            var _toData = (("to" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
            var _fromData = (("from" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
            var _err = writeFile(_to?.__copy__(), _toData, (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatalf(("write file %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
            };
            _err = writeFile(_from?.__copy__(), _fromData, (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatalf(("write file %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            _err = rename(_from?.__copy__(), _to?.__copy__());
            if (_err != null) {
                _t.fatalf(("rename %q, %q failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err));
            };
            {
                var __tmp__ = stat(_from?.__copy__());
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.errorf(("from file %q still exists" : stdgo.GoString), stdgo.Go.toInterface(_from));
            };
            if (((_err != null) && !isNotExist(_err) : Bool)) {
                _t.fatalf(("stat from: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stat(_to?.__copy__()), _toFi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
function testRenameFailed(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __0 = ("renamefrom" : stdgo.GoString), __1 = ("renameto" : stdgo.GoString);
var _to = __1, _from = __0;
            var _err = rename(_from?.__copy__(), _to?.__copy__());
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<LinkError>))) {
                    var _err:stdgo.Ref<stdgo._internal.os.Os.LinkError> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.os.Os.LinkError>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.os.Os.LinkError>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.os.Os.LinkError>) : __type__.__underlying__().value;
                    if (_err.op != (("rename" : stdgo.GoString))) {
                        _t.errorf(("rename %q, %q: err.Op: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(("rename" : stdgo.GoString)), stdgo.Go.toInterface(_err.op));
                    };
                    if (_err.old != (_from)) {
                        _t.errorf(("rename %q, %q: err.Old: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err.old));
                    };
                    if (_err.new_ != (_to)) {
                        _t.errorf(("rename %q, %q: err.New: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err.new_));
                    };
                } else if (__type__ == null) {
                    var _err:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                    _t.errorf(("rename %q, %q: expected error, got nil" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to));
                } else {
                    var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    _t.errorf(("rename %q, %q: expected %T, got %T %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>))), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
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
function testRenameNotExisting(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __0 = ("doesnt-exist" : stdgo.GoString), __1 = ("dest" : stdgo.GoString);
var _to = __1, _from = __0;
            mkdir(_to?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            {
                var _err = rename(_from?.__copy__(), _to?.__copy__());
                if (!isNotExist(_err)) {
                    _t.errorf(("Rename(%q, %q) = %v; want an IsNotExist error" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
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
function testRenameToDirFailed(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __0 = ("renamefrom" : stdgo.GoString), __1 = ("renameto" : stdgo.GoString);
var _to = __1, _from = __0;
            mkdir(_from?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            mkdir(_to?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            var _err = rename(_from?.__copy__(), _to?.__copy__());
            {
                final __type__ = _err;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<LinkError>))) {
                    var _err:stdgo.Ref<stdgo._internal.os.Os.LinkError> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.os.Os.LinkError>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.os.Os.LinkError>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.os.Os.LinkError>) : __type__.__underlying__().value;
                    if (_err.op != (("rename" : stdgo.GoString))) {
                        _t.errorf(("rename %q, %q: err.Op: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(("rename" : stdgo.GoString)), stdgo.Go.toInterface(_err.op));
                    };
                    if (_err.old != (_from)) {
                        _t.errorf(("rename %q, %q: err.Old: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_err.old));
                    };
                    if (_err.new_ != (_to)) {
                        _t.errorf(("rename %q, %q: err.New: want %q, got %q" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err.new_));
                    };
                } else if (__type__ == null) {
                    var _err:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                    _t.errorf(("rename %q, %q: expected error, got nil" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to));
                } else {
                    var _err:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                    _t.errorf(("rename %q, %q: expected %T, got %T %v" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>))), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
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
function testRenameCaseDifference(_pt:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __0 = ("renameFROM" : stdgo.GoString), __1 = ("RENAMEfrom" : stdgo.GoString);
var _to = __1, _from = __0;
        var _tests = (new stdgo.Slice<T__struct_2>(2, 2, ...[({ _name : ("dir" : stdgo.GoString), _create : function():stdgo.Error {
            return mkdir(_from?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
        } } : T__struct_2), ({ _name : ("file" : stdgo.GoString), _create : function():stdgo.Error {
            var __tmp__ = create(_from?.__copy__()), _fd:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            return _fd.close();
        } } : T__struct_2)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _create : null } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
        for (__0 => _test in _tests) {
            _pt.run(_test._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> _chtmpdir(_t)());
                    {
                        var _err = _test._create();
                        if (_err != null) {
                            _t.fatalf(("failed to create test file: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    };
                    {
                        var __tmp__ = stat(_to?.__copy__()), __17:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            if (isNotExist(_err)) {
                                _t.skipf(("case sensitive filesystem" : stdgo.GoString));
                            };
                            _t.fatalf(("stat %q, got: %q" : stdgo.GoString), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
                        };
                    };
                    {
                        var _err = rename(_from?.__copy__(), _to?.__copy__());
                        if (_err != null) {
                            _t.fatalf(("unexpected error when renaming from %q to %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_from), stdgo.Go.toInterface(_to), stdgo.Go.toInterface(_err));
                        };
                    };
                    var __tmp__ = open(("." : stdgo.GoString)), _fd:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("Open .: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                    var __tmp__ = _fd.readdirnames((-1 : stdgo.GoInt)), _dirNames:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("readdirnames: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                    {
                        var _dirNamesLen = (_dirNames.length);
                        if (_dirNamesLen != ((1 : stdgo.GoInt))) {
                            _t.fatalf(("unexpected dirNames len, got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_dirNamesLen), stdgo.Go.toInterface((1 : stdgo.GoInt)));
                        };
                    };
                    if (_dirNames[(0 : stdgo.GoInt)] != (_to)) {
                        _t.errorf(("unexpected name, got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_dirNames[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_to));
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
        };
    }
function _testStartProcess(_dir:stdgo.GoString, _cmd:stdgo.GoString, _args:stdgo.Slice<stdgo.GoString>, _expect:stdgo.GoString):(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>) -> Void {
        return function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                _t.parallel();
                var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    _t.fatalf(("Pipe: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                __deferstack__.unshift(() -> _r.close());
                var _attr = (stdgo.Go.setRef(({ dir : _dir?.__copy__(), files : (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>(3, 3, ...[null, _w, stderr]) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>) } : stdgo._internal.os.Os.ProcAttr)) : stdgo.Ref<stdgo._internal.os.Os.ProcAttr>);
                var __tmp__ = startProcess(_cmd?.__copy__(), _args, _attr), _p:stdgo.Ref<stdgo._internal.os.Os.Process> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("StartProcess: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                _w.close();
                var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
                stdgo._internal.io.Io.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.asInterface(_r));
                var _output = (_b.string() : stdgo.GoString)?.__copy__();
                var __tmp__ = stat(stdgo._internal.strings.Strings.trimSpace(_output?.__copy__())?.__copy__()), _fi1:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, __24:stdgo.Error = __tmp__._1;
                var __tmp__ = stat(_expect?.__copy__()), _fi2:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, __25:stdgo.Error = __tmp__._1;
                if (!sameFile(_fi1, _fi2)) {
                    _t.errorf(("exec %q returned %q wanted %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings.join(((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_cmd?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_args : Array<stdgo.GoString>))), (" " : stdgo.GoString))), stdgo.Go.toInterface(_output), stdgo.Go.toInterface(_expect));
                };
                _p.wait_();
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
    }
function testStartProcess(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
        _t.parallel();
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _cmd = __1, _dir = __0;
        var _args:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString))) {
                _t.skip(stdgo.Go.toInterface(("android doesn\'t have /bin/pwd" : stdgo.GoString)));
            } else if (__value__ == (("windows" : stdgo.GoString))) {
                _cmd = getenv(("COMSPEC" : stdgo.GoString))?.__copy__();
                _dir = getenv(("SystemRoot" : stdgo.GoString))?.__copy__();
                _args = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/c" : stdgo.GoString), ("cd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            } else {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.os.exec.Exec.lookPath(("pwd" : stdgo.GoString));
                    _cmd = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatalf(("Can\'t find pwd: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
                _dir = ("/" : stdgo.GoString);
                _args = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                _t.logf(("Testing with %v" : stdgo.GoString), stdgo.Go.toInterface(_cmd));
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath.split(_cmd?.__copy__()), _cmddir:stdgo.GoString = __tmp__._0, _cmdbase:stdgo.GoString = __tmp__._1;
        _args = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_cmdbase?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_args : Array<stdgo.GoString>)));
        _t.run(("absolute" : stdgo.GoString), _testStartProcess(_dir?.__copy__(), _cmd?.__copy__(), _args, _dir?.__copy__()));
        _t.run(("relative" : stdgo.GoString), _testStartProcess(_cmddir?.__copy__(), _cmdbase?.__copy__(), _args, _cmddir?.__copy__()));
    }
function _checkMode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString, _mode:FileMode):Void {
        var __tmp__ = stat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Stat %q (looking for mode %#o): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(_err));
        };
        if ((_dir.mode() & (511u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != (_mode)) {
            _t.errorf(("Stat %q: mode %#o want %#o" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo.Go.asInterface(_dir.mode())), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
        };
    }
function testChmod(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                _t.skip(stdgo.Go.toInterface(("Chmod is not supported on js" : stdgo.GoString)));
            };
            _t.parallel();
            var _f = _newFile(("TestChmod" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var _fm = ((302u32 : stdgo._internal.io.fs.Fs.FileMode) : FileMode);
            if (false) {
                _fm = ((292u32 : stdgo._internal.io.fs.Fs.FileMode) : FileMode);
            };
            {
                var _err = chmod(_f.name()?.__copy__(), _fm);
                if (_err != null) {
                    _t.fatalf(("chmod %s %#o: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(stdgo.Go.asInterface(_fm)), stdgo.Go.toInterface(_err));
                };
            };
            _checkMode(_t, _f.name()?.__copy__(), _fm);
            _fm = ((83u32 : stdgo._internal.io.fs.Fs.FileMode) : FileMode);
            if (false) {
                _fm = ((438u32 : stdgo._internal.io.fs.Fs.FileMode) : FileMode);
            };
            {
                var _err = _f.chmod(_fm);
                if (_err != null) {
                    _t.fatalf(("chmod %s %#o: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(stdgo.Go.asInterface(_fm)), stdgo.Go.toInterface(_err));
                };
            };
            _checkMode(_t, _f.name()?.__copy__(), _fm);
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
function _checkSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _f:stdgo.Ref<File>, _size:stdgo.GoInt64):Void {
        _t.helper();
        var __tmp__ = _f.stat(), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Stat %q (looking for size %d): %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
        };
        if (_dir.size() != (_size)) {
            _t.errorf(("Stat %q: size %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_dir.size()), stdgo.Go.toInterface(_size));
        };
    }
function testFTruncate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _newFile(("TestFTruncate" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            _checkSize(_t, _f, (0i64 : stdgo.GoInt64));
            _f.write((("hello, world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _checkSize(_t, _f, (13i64 : stdgo.GoInt64));
            _f.truncate((10i64 : stdgo.GoInt64));
            _checkSize(_t, _f, (10i64 : stdgo.GoInt64));
            _f.truncate((1024i64 : stdgo.GoInt64));
            _checkSize(_t, _f, (1024i64 : stdgo.GoInt64));
            _f.truncate((0i64 : stdgo.GoInt64));
            _checkSize(_t, _f, (0i64 : stdgo.GoInt64));
            var __tmp__ = _f.write((("surprise!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _checkSize(_t, _f, (22i64 : stdgo.GoInt64));
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
function testTruncate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _newFile(("TestTruncate" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            _checkSize(_t, _f, (0i64 : stdgo.GoInt64));
            _f.write((("hello, world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _checkSize(_t, _f, (13i64 : stdgo.GoInt64));
            truncate(_f.name()?.__copy__(), (10i64 : stdgo.GoInt64));
            _checkSize(_t, _f, (10i64 : stdgo.GoInt64));
            truncate(_f.name()?.__copy__(), (1024i64 : stdgo.GoInt64));
            _checkSize(_t, _f, (1024i64 : stdgo.GoInt64));
            truncate(_f.name()?.__copy__(), (0i64 : stdgo.GoInt64));
            _checkSize(_t, _f, (0i64 : stdgo.GoInt64));
            var __tmp__ = _f.write((("surprise!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _checkSize(_t, _f, (22i64 : stdgo.GoInt64));
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
function testTruncateNonexistentFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _assertPathError = function(_t:stdgo._internal.testing.Testing.TB, _path:stdgo.GoString, _err:stdgo.Error):Void {
            _t.helper();
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
                }, _pe = __tmp__._0, _ok = __tmp__._1;
                if (((!_ok || !isNotExist(_err) : Bool) || (_pe.path != _path) : Bool)) {
                    _t.errorf(("got error: %v\nwant an ErrNotExist PathError with path %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_path));
                };
            };
        };
        var _path = stdgo._internal.path.filepath.Filepath.join(_t.tempDir()?.__copy__(), ("nonexistent" : stdgo.GoString))?.__copy__();
        var _err = truncate(_path?.__copy__(), (1i64 : stdgo.GoInt64));
        _assertPathError(stdgo.Go.asInterface(_t), _path?.__copy__(), _err);
        {
            var __tmp__ = stat(_path?.__copy__());
            _err = __tmp__._1;
        };
        _assertPathError(stdgo.Go.asInterface(_t), _path?.__copy__(), _err);
    }
function testChtimes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _newFile(("TestChtimes" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            _f.write((("hello, world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _f.close();
            _testChtimes(_t, _f.name()?.__copy__());
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
function testChtimesWithZeroTimes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _file = _newFile(("chtimes-with-zero" : stdgo.GoString), _t);
            var __tmp__ = _file.write((("hello, world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Write: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _fName = _file.name()?.__copy__();
            {
                var _a0 = _file.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            _err = _file.close();
            if (_err != null) {
                _t.errorf(("%v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stat(_fName?.__copy__()), _fs:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _startAtime = atime(_fs)?.__copy__();
            var _startMtime = _fs.modTime()?.__copy__();
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("js" : stdgo.GoString))) {
                    _startAtime = _startAtime.truncate((1000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
                    _startMtime = _startMtime.truncate((1000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
                };
            };
            var _at0 = _startAtime?.__copy__();
            var _mt0 = _startMtime?.__copy__();
            var _t0 = _startMtime.truncate((1000000000i64 : stdgo._internal.time.Time.Duration)).add((3600000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
            var _tests = (new stdgo.Slice<T__struct_3>(4, 4, ...[({ _aTime : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _mTime : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _wantATime : _startAtime?.__copy__(), _wantMTime : _startMtime?.__copy__() } : T__struct_3), ({ _aTime : _t0.add((200000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__(), _mTime : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _wantATime : _t0.add((200000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__(), _wantMTime : _startMtime?.__copy__() } : T__struct_3), ({ _aTime : (new stdgo._internal.time.Time.Time() : stdgo._internal.time.Time.Time), _mTime : _t0.add((100000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__(), _wantATime : _t0.add((200000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__(), _wantMTime : _t0.add((100000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__() } : T__struct_3), ({ _aTime : _t0.add((300000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__(), _mTime : _t0.add((100000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__(), _wantATime : _t0.add((300000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__(), _wantMTime : _t0.add((100000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__() } : T__struct_3)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _aTime : ({} : stdgo._internal.time.Time.Time), _mTime : ({} : stdgo._internal.time.Time.Time), _wantATime : ({} : stdgo._internal.time.Time.Time), _wantMTime : ({} : stdgo._internal.time.Time.Time) } : T__struct_3)])) : stdgo.Slice<T__struct_3>);
            for (__25 => _tt in _tests) {
                {
                    var _err = chtimes(_fName?.__copy__(), _tt._aTime?.__copy__(), _tt._mTime?.__copy__());
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var __tmp__ = stat(_fName?.__copy__());
                    _fs = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
                _at0 = atime(_fs)?.__copy__();
                _mt0 = _fs.modTime()?.__copy__();
                {
                    var __0 = _at0?.__copy__(), __1 = _tt._wantATime?.__copy__();
var _want = __1, _got = __0;
                    if (!_got.equal(_want?.__copy__())) {
                        var _errormsg = stdgo._internal.fmt.Fmt.sprintf(("AccessTime mismatch with values ATime:%q-MTime:%q\ngot:  %q\nwant: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._aTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._mTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))?.__copy__();
                        {
                            final __value__ = ("js" : stdgo.GoString);
                            if (__value__ == (("plan9" : stdgo.GoString))) {} else if (__value__ == (("windows" : stdgo.GoString))) {
                                _t.error(stdgo.Go.toInterface(_errormsg));
                            } else {
                                {
                                    var __0 = _at0?.__copy__(), __1 = _tt._wantATime?.__copy__();
var _want = __1, _got = __0;
                                    if (!_got.equal(_want?.__copy__())) {
                                        var __tmp__ = readFile(("/bin/mounts" : stdgo.GoString)), _mounts:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                        if (_err != null) {
                                            {
                                                var __tmp__ = readFile(("/etc/mtab" : stdgo.GoString));
                                                _mounts = __tmp__._0;
                                                _err = __tmp__._1;
                                            };
                                        };
                                        if (stdgo._internal.strings.Strings.contains((_mounts : stdgo.GoString)?.__copy__(), ("noatime" : stdgo.GoString))) {
                                            _t.log(stdgo.Go.toInterface(_errormsg));
                                            _t.log(stdgo.Go.toInterface(("A filesystem is mounted with noatime; ignoring." : stdgo.GoString)));
                                        } else {
                                            {
                                                final __value__ = ("js" : stdgo.GoString);
                                                if (__value__ == (("netbsd" : stdgo.GoString)) || __value__ == (("dragonfly" : stdgo.GoString))) {
                                                    if (stdgo._internal.strings.Strings.contains(("wasm" : stdgo.GoString), ("64" : stdgo.GoString))) {
                                                        _t.log(stdgo.Go.toInterface(_errormsg));
                                                        _t.log(stdgo.Go.toInterface(("Filesystem might not support atime changes; ignoring." : stdgo.GoString)));
                                                    };
                                                } else {
                                                    _t.error(stdgo.Go.toInterface(_errormsg));
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
                {
                    var __0 = _mt0?.__copy__(), __1 = _tt._wantMTime?.__copy__();
var _want = __1, _got = __0;
                    if (!_got.equal(_want?.__copy__())) {
                        var _errormsg = stdgo._internal.fmt.Fmt.sprintf(("ModTime mismatch with values ATime:%q-MTime:%q\ngot:  %q\nwant: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._aTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._mTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)))?.__copy__();
                        {
                            final __value__ = ("js" : stdgo.GoString);
                            if (__value__ == (("dragonfly" : stdgo.GoString))) {
                                _t.log(stdgo.Go.toInterface(_errormsg));
                                _t.log(stdgo.Go.toInterface(("Mtime is always updated; ignoring." : stdgo.GoString)));
                            } else {
                                _t.error(stdgo.Go.toInterface(_errormsg));
                            };
                        };
                    };
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
function testChtimesDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _name = _newDir(("TestChtimes" : stdgo.GoString), _t)?.__copy__();
            {
                var _a0 = _name;
                __deferstack__.unshift(() -> removeAll(_a0?.__copy__()));
            };
            _testChtimes(_t, _name?.__copy__());
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
function _testChtimes(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _name:stdgo.GoString):Void {
        var __tmp__ = stat(_name?.__copy__()), _st:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Stat %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
        };
        var _preStat = _st;
        var _at = atime(_preStat)?.__copy__();
        var _mt = _preStat.modTime()?.__copy__();
        _err = chtimes(_name?.__copy__(), _at.add((-1000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__(), _mt.add((-1000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__());
        if (_err != null) {
            _t.fatalf(("Chtimes %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stat(_name?.__copy__());
            _st = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("second Stat %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
        };
        var _postStat = _st;
        var _pat = atime(_postStat)?.__copy__();
        var _pmt = _postStat.modTime()?.__copy__();
        if (!_pat.before(_at?.__copy__())) {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("plan9" : stdgo.GoString))) {} else if (__value__ == (("netbsd" : stdgo.GoString))) {
                    var __tmp__ = readFile(("/proc/mounts" : stdgo.GoString)), _mounts:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __24:stdgo.Error = __tmp__._1;
                    if (stdgo._internal.strings.Strings.contains((_mounts : stdgo.GoString)?.__copy__(), ("noatime" : stdgo.GoString))) {
                        _t.logf(("AccessTime didn\'t go backwards, but see a filesystem mounted noatime; ignoring. Issue 19293." : stdgo.GoString));
                    } else {
                        _t.logf(("AccessTime didn\'t go backwards; was=%v, after=%v (Ignoring on NetBSD, assuming noatime, Issue 19293)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_at)), stdgo.Go.toInterface(stdgo.Go.asInterface(_pat)));
                    };
                } else {
                    _t.errorf(("AccessTime didn\'t go backwards; was=%v, after=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_at)), stdgo.Go.toInterface(stdgo.Go.asInterface(_pat)));
                };
            };
        };
        if (!_pmt.before(_mt?.__copy__())) {
            _t.errorf(("ModTime didn\'t go backwards; was=%v, after=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_pmt)));
        };
    }
function testChtimesToUnixZero(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _file = _newFile(("chtimes-to-unix-zero" : stdgo.GoString), _t);
            var _fn = _file.name()?.__copy__();
            {
                var _a0 = _fn;
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            {
                var __tmp__ = _file.write((("hi" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err = _file.close();
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _unixZero = stdgo._internal.time.Time.unix((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__();
            {
                var _err = chtimes(_fn?.__copy__(), _unixZero?.__copy__(), _unixZero?.__copy__());
                if (_err != null) {
                    _t.fatalf(("Chtimes failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = stat(_fn?.__copy__()), _st:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _mt = _st.modTime()?.__copy__();
                if (stdgo.Go.toInterface(_mt) != stdgo.Go.toInterface(_unixZero)) {
                    _t.errorf(("mtime is %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_unixZero)));
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
function testFileChdir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Getwd: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _wd;
                __deferstack__.unshift(() -> chdir(_a0?.__copy__()));
            };
            var __tmp__ = open(("." : stdgo.GoString)), _fd:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Open .: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _fd.close());
            {
                var _err = chdir(("/" : stdgo.GoString));
                if (_err != null) {
                    _t.fatalf(("Chdir /: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err = _fd.chdir();
                if (_err != null) {
                    _t.fatalf(("fd.Chdir: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = getwd(), _wdNew:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Getwd: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (!_equal(_wdNew?.__copy__(), _wd?.__copy__())) {
                _t.fatalf(("fd.Chdir failed, got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_wdNew), stdgo.Go.toInterface(_wd));
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
function testChdirAndGetwd(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = open(("." : stdgo.GoString)), _fd:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Open .: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _dirs = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("/" : stdgo.GoString), ("/usr/bin" : stdgo.GoString), ("/tmp" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString))) {
                _dirs = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("/system/bin" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            } else if (__value__ == (("plan9" : stdgo.GoString))) {
                _dirs = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("/" : stdgo.GoString), ("/usr" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            } else if (__value__ == (("ios" : stdgo.GoString)) || __value__ == (("windows" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString))) {
                _dirs = (null : stdgo.Slice<stdgo.GoString>);
                for (__24 => _dir in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_t.tempDir()?.__copy__(), _t.tempDir()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                    {
                        var __tmp__ = stdgo._internal.path.filepath.Filepath.evalSymlinks(_dir?.__copy__());
                        _dir = __tmp__._0?.__copy__();
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        _t.fatalf(("EvalSymlinks: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                    _dirs = (_dirs.__append__(_dir?.__copy__()));
                };
            };
        };
        var _oldwd = getenv(("PWD" : stdgo.GoString))?.__copy__();
        {
            var _mode = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_mode < (2 : stdgo.GoInt) : Bool), _mode++, {
                for (__33 => _d in _dirs) {
                    if (_mode == ((0 : stdgo.GoInt))) {
                        _err = chdir(_d?.__copy__());
                    } else {
                        var __tmp__ = open(_d?.__copy__()), _fd1:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                        if (_err1 != null) {
                            _t.errorf(("Open %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err1));
                            continue;
                        };
                        _err = _fd1.chdir();
                        _fd1.close();
                    };
                    if (_d == (("/tmp" : stdgo.GoString))) {
                        setenv(("PWD" : stdgo.GoString), ("/tmp" : stdgo.GoString));
                    };
                    var __tmp__ = getwd(), _pwd:stdgo.GoString = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                    setenv(("PWD" : stdgo.GoString), _oldwd?.__copy__());
                    var _err2 = _fd.chdir();
                    if (_err2 != null) {
                        stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface(stderr), ("fchdir back to dot failed: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_err2));
                        exit((1 : stdgo.GoInt));
                    };
                    if (_err != null) {
                        _fd.close();
                        _t.fatalf(("Chdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err));
                    };
                    if (_err1 != null) {
                        _fd.close();
                        _t.fatalf(("Getwd in %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err1));
                    };
                    if (!_equal(_pwd?.__copy__(), _d?.__copy__())) {
                        _fd.close();
                        _t.fatalf(("Getwd returned %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_pwd), stdgo.Go.toInterface(_d));
                    };
                };
            });
        };
        _fd.close();
    }
function testProgWideChdir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
            var _hold = (new stdgo.Chan<T__struct_4>(0, () -> ({  } : T__struct_4)) : stdgo.Chan<T__struct_4>);
            var _done = (new stdgo.Chan<T__struct_4>(0, () -> ({  } : T__struct_4)) : stdgo.Chan<T__struct_4>);
            var _d = _t.tempDir()?.__copy__();
            var __tmp__ = getwd(), _oldwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Getwd: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = chdir(_oldwd?.__copy__());
                        if (_err != null) {
                            throw stdgo.Go.toInterface(_err);
                        };
                    };
                };
                a();
            });
            __deferstack__.unshift(() -> _wg.wait_());
            {
                var _a0 = _done;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function(_i:stdgo.GoInt):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                if ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                                    stdgo._internal.runtime.Runtime.lockOSThread();
                                };
                                {
                                    var __select__ = true;
                                    while (__select__) {
                                        if (_done != null && _done.__isGet__()) {
                                            __select__ = false;
                                            {
                                                _done.__get__();
                                                {
                                                    {
                                                        for (defer in __deferstack__) {
                                                            defer();
                                                        };
                                                        return;
                                                    };
                                                };
                                            };
                                        } else if (_hold != null && _hold.__isGet__()) {
                                            __select__ = false;
                                            {
                                                _hold.__get__();
                                                {};
                                            };
                                        };
                                        #if !js Sys.sleep(0.01) #else null #end;
                                        stdgo._internal.internal.Async.tick();
                                    };
                                };
                                var __tmp__ = stat(("." : stdgo.GoString)), _f0:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.error(stdgo.Go.toInterface(_err));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                                var __tmp__ = getwd(), _pwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.errorf(("Getwd: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                                if (_pwd != (_d)) {
                                    _t.errorf(("Getwd() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_pwd), stdgo.Go.toInterface(_d));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                                var __tmp__ = stat(_pwd?.__copy__()), _f1:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.error(stdgo.Go.toInterface(_err));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                                if (!sameFile(_f0, _f1)) {
                                    _t.errorf(("Samefile(Stat(\".\"), Getwd()) reports false (%s != %s)" : stdgo.GoString), stdgo.Go.toInterface(_f0.name()), stdgo.Go.toInterface(_f1.name()));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
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
                        a(_i);
                    });
                });
            };
            {
                _err = chdir(_d?.__copy__());
                if (_err != null) {
                    _t.fatalf(("Chdir: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = getwd();
                _d = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Getwd: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (_hold != null) _hold.__close__();
            _wg.wait_();
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
@:structInit class T_testSeek___localname___test_41185 {
    public var _in : stdgo.GoInt64 = 0;
    public var _whence : stdgo.GoInt = 0;
    public var _out : stdgo.GoInt64 = 0;
    public function new(?_in:stdgo.GoInt64, ?_whence:stdgo.GoInt, ?_out:stdgo.GoInt64) {
        if (_in != null) this._in = _in;
        if (_whence != null) this._whence = _whence;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testSeek___localname___test_41185(_in, _whence, _out);
    }
}
function testSeek(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _newFile(("TestSeek" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            {};
            stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(_f), ("hello, world\n" : stdgo.GoString));
            {};
            var _tests:stdgo.Slice<stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185> = (new stdgo.Slice<stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185>(12, 12, ...[
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt), (("hello, world\n" : stdgo.GoString).length : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185),
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185),
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((5i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (5i64 : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185),
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (2 : stdgo.GoInt), (("hello, world\n" : stdgo.GoString).length : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185),
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185),
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((-1i64 : stdgo.GoInt64), (2 : stdgo.GoInt), (12i64 : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185),
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((8589934592i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (8589934592i64 : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185),
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((8589934592i64 : stdgo.GoInt64), (2 : stdgo.GoInt), (8589934605i64 : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185),
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((4294967295i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (4294967295i64 : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185),
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt), (4294967295i64 : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185),
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((8589934591i64 : stdgo.GoInt64), (0 : stdgo.GoInt), (8589934591i64 : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185),
(new stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt), (8589934591i64 : stdgo.GoInt64)) : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185)])) : stdgo.Slice<stdgo._internal.os_test.Os_test.T_testSeek___localname___test_41185>);
            for (_i => _tt in _tests) {
                var __tmp__ = _f.seek(_tt._in, _tt._whence), _off:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_off != _tt._out) || (_err != null) : Bool)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
                        }, _e = __tmp__._0, _ok = __tmp__._1;
                        if ((((_ok && stdgo.Go.toInterface(_e.err) == (stdgo.Go.toInterface(stdgo.Go.asInterface((22 : stdgo._internal.syscall.Syscall.Errno)))) : Bool) && (_tt._out > (4294967296i64 : stdgo.GoInt64) : Bool) : Bool) && false : Bool)) {
                            var __tmp__ = readFile(("/proc/mounts" : stdgo.GoString)), _mounts:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __8:stdgo.Error = __tmp__._1;
                            if (stdgo._internal.strings.Strings.contains((_mounts : stdgo.GoString)?.__copy__(), ("reiserfs" : stdgo.GoString))) {
                                _t.skipf(("skipping test known to fail on reiserfs; https://golang.org/issue/91" : stdgo.GoString));
                            };
                        };
                    };
                    _t.errorf(("#%d: Seek(%v, %v) = %v, %v want %v, nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_tt._whence), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._out));
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
function testSeekError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("js" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString))) {
                _t.skipf(("skipping test on %v" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
        };
        _t.parallel();
        var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _r.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("Seek on pipe should fail" : stdgo.GoString)));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
            }, _perr = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (stdgo.Go.toInterface(_perr.err) != stdgo.Go.toInterface(stdgo.Go.asInterface((29 : stdgo._internal.syscall.Syscall.Errno)))) : Bool)) {
                _t.errorf(("Seek returned error %v, want &PathError{Err: syscall.ESPIPE}" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _w.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("Seek on pipe should fail" : stdgo.GoString)));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
            }, _perr = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (stdgo.Go.toInterface(_perr.err) != stdgo.Go.toInterface(stdgo.Go.asInterface((29 : stdgo._internal.syscall.Syscall.Errno)))) : Bool)) {
                _t.errorf(("Seek returned error %v, want &PathError{Err: syscall.ESPIPE}" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
function testOpenError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        for (__8 => _tt in _openErrorTests) {
            var __tmp__ = openFile(_tt._path?.__copy__(), _tt._mode, (0u32 : stdgo._internal.io.fs.Fs.FileMode)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(("Open(%q, %d) succeeded" : stdgo.GoString), stdgo.Go.toInterface(_tt._path), stdgo.Go.toInterface(_tt._mode));
                _f.close();
                continue;
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
            }, _perr = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("Open(%q, %d) returns error of %T type; want *PathError" : stdgo.GoString), stdgo.Go.toInterface(_tt._path), stdgo.Go.toInterface(_tt._mode), stdgo.Go.toInterface(_err));
            };
            if (stdgo.Go.toInterface(_perr.err) != (stdgo.Go.toInterface(_tt._error))) {
                if (false) {
                    var _syscallErrStr = _perr.err.error()?.__copy__();
                    var _expectedErrStr = stdgo._internal.strings.Strings.replace(_tt._error.error()?.__copy__(), ("file " : stdgo.GoString), stdgo.Go.str()?.__copy__(), (1 : stdgo.GoInt))?.__copy__();
                    if (!stdgo._internal.strings.Strings.hasSuffix(_syscallErrStr?.__copy__(), _expectedErrStr?.__copy__())) {
                        if (((stdgo.Go.toInterface(_tt._error) == stdgo.Go.toInterface(stdgo.Go.asInterface((21 : stdgo._internal.syscall.Syscall.Errno)))) && stdgo._internal.strings.Strings.hasSuffix(_syscallErrStr?.__copy__(), (13 : stdgo._internal.syscall.Syscall.Errno).error()?.__copy__()) : Bool)) {
                            continue;
                        };
                        _t.errorf(("Open(%q, %d) = _, %q; want suffix %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._path), stdgo.Go.toInterface(_tt._mode), stdgo.Go.toInterface(_syscallErrStr), stdgo.Go.toInterface(_expectedErrStr));
                    };
                    continue;
                };
                if (false) {
                    if (((stdgo.Go.toInterface(_tt._error) == stdgo.Go.toInterface(stdgo.Go.asInterface((21 : stdgo._internal.syscall.Syscall.Errno)))) && (stdgo.Go.toInterface(_perr.err) == stdgo.Go.toInterface(stdgo.Go.asInterface((13 : stdgo._internal.syscall.Syscall.Errno)))) : Bool)) {
                        continue;
                    };
                };
                _t.errorf(("Open(%q, %d) = _, %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._path), stdgo.Go.toInterface(_tt._mode), stdgo.Go.toInterface(_perr.err.error()), stdgo.Go.toInterface(_tt._error.error()));
            };
        };
    }
function testOpenNoName(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __tmp__ = open(stdgo.Go.str()?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _f.close();
            _t.fatal(stdgo.Go.toInterface(("Open(\"\") succeeded" : stdgo.GoString)));
        };
    }
function _runBinHostname(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):stdgo.GoString {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _r.close());
            var __tmp__ = stdgo._internal.os.exec.Exec.lookPath(("hostname" : stdgo.GoString)), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo._internal.errors.Errors.is_(_err, stdgo._internal.os.exec.Exec.errNotFound)) {
                    _t.skip(stdgo.Go.toInterface(("skipping test; test requires hostname but it does not exist" : stdgo.GoString)));
                };
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _argv = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("hostname" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            if (false) {
                _argv = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hostname" : stdgo.GoString), ("-s" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
            var __tmp__ = startProcess(_path?.__copy__(), _argv, (stdgo.Go.setRef(({ files : (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>(3, 3, ...[null, _w, stderr]) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>) } : stdgo._internal.os.Os.ProcAttr)) : stdgo.Ref<stdgo._internal.os.Os.ProcAttr>)), _p:stdgo.Ref<stdgo._internal.os.Os.Process> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _w.close();
            var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
            stdgo._internal.io.Io.copy(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), stdgo.Go.asInterface(_r));
            {
                var __tmp__ = _p.wait_();
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("run hostname Wait: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = _p.kill();
            if (_err == null) {
                _t.errorf(("expected an error from Kill running \'hostname\'" : stdgo.GoString));
            };
            var _output = (_b.string() : stdgo.GoString)?.__copy__();
            {
                var _n = (_output.length);
                if (((_n > (0 : stdgo.GoInt) : Bool) && (_output[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                    _output = (_output.__slice__((0 : stdgo.GoInt), (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                };
            };
            if (_output == (stdgo.Go.str())) {
                _t.fatalf(("/bin/hostname produced no output" : stdgo.GoString));
            };
            {
                final __ret__:stdgo.GoString = _output?.__copy__();
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.GoString = ("" : stdgo.GoString);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.GoString = ("" : stdgo.GoString);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function _testWindowsHostname(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _hostname:stdgo.GoString):Void {
        var _cmd = stdgo._internal.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), ("hostname" : stdgo.GoString));
        var __tmp__ = _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Failed to execute hostname command: %v %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        var _want = stdgo._internal.strings.Strings.trim((_out : stdgo.GoString)?.__copy__(), ("\r\n" : stdgo.GoString))?.__copy__();
        if (_hostname != (_want)) {
            _t.fatalf(("Hostname() = %q != system hostname of %q" : stdgo.GoString), stdgo.Go.toInterface(_hostname), stdgo.Go.toInterface(_want));
        };
    }
function testHostname(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = hostname(), _hostname:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (_hostname == (stdgo.Go.str())) {
            _t.fatal(stdgo.Go.toInterface(("Hostname returned empty string and no error" : stdgo.GoString)));
        };
        if (stdgo._internal.strings.Strings.contains(_hostname?.__copy__(), stdgo.Go.str(0)?.__copy__())) {
            _t.fatalf(("unexpected zero byte in hostname: %q" : stdgo.GoString), stdgo.Go.toInterface(_hostname));
        };
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString))) {
                return;
            } else if (__value__ == (("windows" : stdgo.GoString))) {
                _testWindowsHostname(_t, _hostname?.__copy__());
                return;
            };
        };
        stdgo._internal.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
        var _want = _runBinHostname(_t)?.__copy__();
        if (_hostname != (_want)) {
            var __tmp__ = stdgo._internal.strings.Strings.cut(_hostname?.__copy__(), ("." : stdgo.GoString)), _host:stdgo.GoString = __tmp__._0, __32:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if ((!_ok || (_host != _want) : Bool)) {
                _t.errorf(("Hostname() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_hostname), stdgo.Go.toInterface(_want));
            };
        };
    }
function testReadAt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _newFile(("TestReadAt" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            {};
            stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(_f), ("hello, world\n" : stdgo.GoString));
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _f.readAt(_b, (7i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (_b.length)) : Bool)) {
                _t.fatalf(("ReadAt 7: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
            if ((_b : stdgo.GoString) != (("world" : stdgo.GoString))) {
                _t.fatalf(("ReadAt 7: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(("world" : stdgo.GoString)));
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
function testReadAtOffset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _newFile(("TestReadAtOffset" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            {};
            stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(_f), ("hello, world\n" : stdgo.GoString));
            _f.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _f.readAt(_b, (7i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (_b.length)) : Bool)) {
                _t.fatalf(("ReadAt 7: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
            if ((_b : stdgo.GoString) != (("world" : stdgo.GoString))) {
                _t.fatalf(("ReadAt 7: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(("world" : stdgo.GoString)));
            };
            {
                var __tmp__ = _f.read(_b);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (((_err != null) || (_n != (_b.length)) : Bool)) {
                _t.fatalf(("Read: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
            if ((_b : stdgo.GoString) != (("hello" : stdgo.GoString))) {
                _t.fatalf(("Read: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(("hello" : stdgo.GoString)));
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
function testReadAtNegativeOffset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _newFile(("TestReadAtNegativeOffset" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            {};
            stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(_f), ("hello, world\n" : stdgo.GoString));
            _f.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _f.readAt(_b, (-10i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {};
            if ((!stdgo._internal.strings.Strings.contains(stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_err))?.__copy__(), ("negative offset" : stdgo.GoString)) || (_n != (0 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("ReadAt(-10) = %v, %v; want 0, ...%q..." : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("negative offset" : stdgo.GoString)));
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
function testWriteAt(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _newFile(("TestWriteAt" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            {};
            stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(_f), ("hello, world\n" : stdgo.GoString));
            var __tmp__ = _f.writeAt((("WORLD" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (7i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (5 : stdgo.GoInt)) : Bool)) {
                _t.fatalf(("WriteAt 7: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = readFile(_f.name()?.__copy__()), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ReadFile %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_err));
            };
            if ((_b : stdgo.GoString) != (("hello, WORLD\n" : stdgo.GoString))) {
                _t.fatalf(("after write: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface((_b : stdgo.GoString)), stdgo.Go.toInterface(("hello, WORLD\n" : stdgo.GoString)));
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
function testWriteAtNegativeOffset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _newFile(("TestWriteAtNegativeOffset" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.writeAt((("WORLD" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (-10i64 : stdgo.GoInt64)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {};
            if ((!stdgo._internal.strings.Strings.contains(stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_err))?.__copy__(), ("negative offset" : stdgo.GoString)) || (_n != (0 : stdgo.GoInt)) : Bool)) {
                _t.errorf(("WriteAt(-10) = %v, %v; want 0, ...%q..." : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("negative offset" : stdgo.GoString)));
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
function testWriteAtInAppendMode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __tmp__ = openFile(("write_at_in_append_mode.txt" : stdgo.GoString), (1088 : stdgo.GoInt), (438u32 : stdgo._internal.io.fs.Fs.FileMode)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("OpenFile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            {
                var __tmp__ = _f.writeAt((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), (1i64 : stdgo.GoInt64));
                _err = __tmp__._1;
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(errWriteAtInAppendMode))) {
                _t.fatalf(("f.WriteAt returned %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(errWriteAtInAppendMode));
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
function _writeFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _fname:stdgo.GoString, _flag:stdgo.GoInt, _text:stdgo.GoString):stdgo.GoString {
        var __tmp__ = openFile(_fname?.__copy__(), _flag, (438u32 : stdgo._internal.io.fs.Fs.FileMode)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Open: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.io.Io.writeString(stdgo.Go.asInterface(_f), _text?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("WriteString: %d, %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _f.close();
        var __tmp__ = readFile(_fname?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("ReadFile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        return (_data : stdgo.GoString)?.__copy__();
    }
function testAppend(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            {};
            var _s = _writeFile(_t, ("append.txt" : stdgo.GoString), (578 : stdgo.GoInt), ("new" : stdgo.GoString))?.__copy__();
            if (_s != (("new" : stdgo.GoString))) {
                _t.fatalf(("writeFile: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("new" : stdgo.GoString)));
            };
            _s = _writeFile(_t, ("append.txt" : stdgo.GoString), (1026 : stdgo.GoInt), ("|append" : stdgo.GoString))?.__copy__();
            if (_s != (("new|append" : stdgo.GoString))) {
                _t.fatalf(("writeFile: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("new|append" : stdgo.GoString)));
            };
            _s = _writeFile(_t, ("append.txt" : stdgo.GoString), (1090 : stdgo.GoInt), ("|append" : stdgo.GoString))?.__copy__();
            if (_s != (("new|append|append" : stdgo.GoString))) {
                _t.fatalf(("writeFile: have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("new|append|append" : stdgo.GoString)));
            };
            var _err = remove(("append.txt" : stdgo.GoString));
            if (_err != null) {
                _t.fatalf(("Remove: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _s = _writeFile(_t, ("append.txt" : stdgo.GoString), (1090 : stdgo.GoInt), ("new&append" : stdgo.GoString))?.__copy__();
            if (_s != (("new&append" : stdgo.GoString))) {
                _t.fatalf(("writeFile: after append have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("new&append" : stdgo.GoString)));
            };
            _s = _writeFile(_t, ("append.txt" : stdgo.GoString), (66 : stdgo.GoInt), ("old" : stdgo.GoString))?.__copy__();
            if (_s != (("old&append" : stdgo.GoString))) {
                _t.fatalf(("writeFile: after create have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("old&append" : stdgo.GoString)));
            };
            _s = _writeFile(_t, ("append.txt" : stdgo.GoString), (578 : stdgo.GoInt), ("new" : stdgo.GoString))?.__copy__();
            if (_s != (("new" : stdgo.GoString))) {
                _t.fatalf(("writeFile: after truncate have %q want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("new" : stdgo.GoString)));
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
function testStatDirWithTrailingSlash(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _path = _t.tempDir()?.__copy__();
        {
            var __tmp__ = stat(_path?.__copy__()), __16:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        _path = (_path + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = stat(_path?.__copy__()), __25:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
    }
function testNilProcessStateString(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _ps:stdgo.Ref<ProcessState> = (null : stdgo.Ref<stdgo._internal.os.Os.ProcessState>);
        var _s = (_ps.string() : stdgo.GoString)?.__copy__();
        if (_s != (("<nil>" : stdgo.GoString))) {
            _t.errorf(("(*ProcessState)(nil).String() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(("<nil>" : stdgo.GoString)));
        };
    }
function testSameFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> _chtmpdir(_t)());
            var __tmp__ = create(("a" : stdgo.GoString)), _fa:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Create(a): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _fa.close();
            var __tmp__ = create(("b" : stdgo.GoString)), _fb:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Create(b): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _fb.close();
            var __tmp__ = stat(("a" : stdgo.GoString)), _ia1:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat(a): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stat(("a" : stdgo.GoString)), _ia2:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat(a): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (!sameFile(_ia1, _ia2)) {
                _t.errorf(("files should be same" : stdgo.GoString));
            };
            var __tmp__ = stat(("b" : stdgo.GoString)), _ib:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat(b): %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if (sameFile(_ia1, _ib)) {
                _t.errorf(("files should be different" : stdgo.GoString));
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
function _testDevNullFileInfo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _statname:stdgo.GoString, _devNullName:stdgo.GoString, _fi:FileInfo):Void {
        var _pre = stdgo._internal.fmt.Fmt.sprintf(("%s(%q): " : stdgo.GoString), stdgo.Go.toInterface(_statname), stdgo.Go.toInterface(_devNullName))?.__copy__();
        if (_fi.size() != ((0i64 : stdgo.GoInt64))) {
            _t.errorf((_pre + ("wrong file size have %d want 0" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_fi.size()));
        };
        if ((_fi.mode() & (67108864u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
            _t.errorf((_pre + ("wrong file mode %q: ModeDevice is not set" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
        };
        if ((_fi.mode() & (2097152u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
            _t.errorf((_pre + ("wrong file mode %q: ModeCharDevice is not set" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
        };
        if (_fi.mode().isRegular()) {
            _t.errorf((_pre + ("wrong file mode %q: IsRegular returns true" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
        };
    }
function _testDevNullFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _devNullName:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = open(_devNullName?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Open(%s): %v" : stdgo.GoString), stdgo.Go.toInterface(_devNullName), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat(%s): %v" : stdgo.GoString), stdgo.Go.toInterface(_devNullName), stdgo.Go.toInterface(_err));
            };
            _testDevNullFileInfo(_t, ("f.Stat" : stdgo.GoString), _devNullName?.__copy__(), _fi);
            {
                var __tmp__ = stat(_devNullName?.__copy__());
                _fi = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("Stat(%s): %v" : stdgo.GoString), stdgo.Go.toInterface(_devNullName), stdgo.Go.toInterface(_err));
            };
            _testDevNullFileInfo(_t, ("Stat" : stdgo.GoString), _devNullName?.__copy__(), _fi);
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
function testDevNullFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        _testDevNullFile(_t, ("/dev/null" : stdgo.GoString));
        if (false) {
            _testDevNullFile(_t, ("./nul" : stdgo.GoString));
            _testDevNullFile(_t, ("//./nul" : stdgo.GoString));
        };
    }
function testLargeWriteToConsole(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (!_testLargeWrite.value) {
            _t.skip(stdgo.Go.toInterface(("skipping console-flooding test; enable with -large_write" : stdgo.GoString)));
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((32000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _b) {
            _b[(_i : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
        };
        _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
        var __tmp__ = stdout.write(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Write to os.Stdout failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((_b.length))) {
            _t.errorf(("Write to os.Stdout should return %d; got %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface(_n));
        };
        {
            var __tmp__ = stderr.write(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("Write to os.Stderr failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (_n != ((_b.length))) {
            _t.errorf(("Write to os.Stderr should return %d; got %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface(_n));
        };
    }
function testStatDirModeExec(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("Chmod is not supported on js" : stdgo.GoString)));
        };
        _t.parallel();
        {};
        var _path = _t.tempDir()?.__copy__();
        {
            var _err = chmod(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatalf(("Chmod %q 0777: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = stat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Stat %q (looking for mode %#o): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface((73 : stdgo.GoInt)), stdgo.Go.toInterface(_err));
        };
        if ((_dir.mode() & (73u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != ((73u32 : stdgo._internal.io.fs.Fs.FileMode))) {
            _t.errorf(("Stat %q: mode %#o want %#o" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo.Go.asInterface((_dir.mode() & (73u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode))), stdgo.Go.toInterface((73 : stdgo.GoInt)));
        };
    }
function testStatStdin(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString))) {
                _t.skipf(("%s doesn\'t have /bin/sh" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
        };
        if (getenv(("GO_WANT_HELPER_PROCESS" : stdgo.GoString)) == (("1" : stdgo.GoString))) {
            var __tmp__ = stdin.stat(), _st:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Stat failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo.Go.asInterface((_st.mode() & (33554432u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode))));
            exit((0 : stdgo.GoInt));
        };
        stdgo._internal.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
        _t.parallel();
        var __tmp__ = stdin.stat(), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _mode = _fi.mode();
            if ((((_mode & (2097152u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != (0u32 : stdgo._internal.io.fs.Fs.FileMode)) && ((_mode & (67108864u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != (0u32 : stdgo._internal.io.fs.Fs.FileMode)) : Bool)) {} else if ((_mode & (33554432u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {} else {
                _t.fatalf(("unexpected Stdin mode (%v), want ModeCharDevice or ModeNamedPipe" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
            };
        };
        var _cmd:stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd> = (null : stdgo.Ref<stdgo._internal.os.exec.Exec.Cmd>);
        if (false) {
            _cmd = stdgo._internal.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), ("cmd" : stdgo.GoString), ("/c" : stdgo.GoString), ((("echo output | " : stdgo.GoString) + args[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + (" -test.run=TestStatStdin" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        } else {
            _cmd = stdgo._internal.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), ("/bin/sh" : stdgo.GoString), ("-c" : stdgo.GoString), ((("echo output | " : stdgo.GoString) + args[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) + (" -test.run=TestStatStdin" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        _cmd.env = (environ_().__append__(("GO_WANT_HELPER_PROCESS=1" : stdgo.GoString)));
        var __tmp__ = _cmd.combinedOutput(), _output:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Failed to spawn child process: %v %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_output : stdgo.GoString)));
        };
        if ((((_output.length) < (1 : stdgo.GoInt) : Bool) || (_output[(0 : stdgo.GoInt)] != (112 : stdgo.GoUInt8)) : Bool)) {
            _t.fatalf(("Child process reports stdin is not pipe \'%v\'" : stdgo.GoString), stdgo.Go.toInterface((_output : stdgo.GoString)));
        };
    }
function testStatRelativeSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
            _t.parallel();
            var _tmpdir = _t.tempDir()?.__copy__();
            var _target = stdgo._internal.path.filepath.Filepath.join(_tmpdir?.__copy__(), ("target" : stdgo.GoString))?.__copy__();
            var __tmp__ = create(_target?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _st:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var _link = stdgo._internal.path.filepath.Filepath.join(_tmpdir?.__copy__(), ("link" : stdgo.GoString))?.__copy__();
            _err = symlink(stdgo._internal.path.filepath.Filepath.base(_target?.__copy__())?.__copy__(), _link?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var __tmp__ = stat(_link?.__copy__()), _st1:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (!sameFile(_st, _st1)) {
                _t.error(stdgo.Go.toInterface(("Stat doesn\'t follow relative symlink" : stdgo.GoString)));
            };
            if (false) {
                remove(_link?.__copy__());
                _err = symlink((_target.__slice__((stdgo._internal.path.filepath.Filepath.volumeName(_target?.__copy__()).length)) : stdgo.GoString)?.__copy__(), _link?.__copy__());
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                var __tmp__ = stat(_link?.__copy__()), _st1:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
                if (!sameFile(_st, _st1)) {
                    _t.error(stdgo.Go.toInterface(("Stat doesn\'t follow relative symlink" : stdgo.GoString)));
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
function testReadAtEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _f = _newFile(("TestReadAtEOF" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.readAt((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64)), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                final __value__ = _err;
                if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {} else if (__value__ == null) {
                    _t.fatalf(("ReadAt succeeded" : stdgo.GoString));
                } else {
                    _t.fatalf(("ReadAt failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
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
function testLongPath(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _tmpdir = _newDir(("TestLongPath" : stdgo.GoString), _t)?.__copy__();
            {
                var _a0 = _tmpdir;
                __deferstack__.unshift(() -> {
                    var a = function(_d:stdgo.GoString):Void {
                        {
                            var _err = removeAll(_d?.__copy__());
                            if (_err != null) {
                                _t.fatalf(("RemoveAll failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                    };
                    a(_a0?.__copy__());
                });
            };
            var _sizes = (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(247 : stdgo.GoInt), (248 : stdgo.GoInt), (249 : stdgo.GoInt), (400 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            while (((_tmpdir.length) < (400 : stdgo.GoInt) : Bool)) {
                _tmpdir = (_tmpdir + (("/dir3456789" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            for (__8 => _sz in _sizes) {
                _t.run(stdgo._internal.fmt.Fmt.sprintf(("length=%d" : stdgo.GoString), stdgo.Go.toInterface(_sz))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                    var _sizedTempDir = ((_tmpdir.__slice__(0, (_sz - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) + ("x" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    {
                        var _err = mkdirAll(_sizedTempDir?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
                        if (_err != null) {
                            _t.fatalf(("MkdirAll failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    };
                    var _data = (("hello world\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
                    {
                        var _err = writeFile((_sizedTempDir + ("/foo.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _data, (420u32 : stdgo._internal.io.fs.Fs.FileMode));
                        if (_err != null) {
                            _t.fatalf(("os.WriteFile() failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    };
                    {
                        var _err = rename((_sizedTempDir + ("/foo.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (_sizedTempDir + ("/bar.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        if (_err != null) {
                            _t.fatalf(("Rename failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    };
                    var _mtime = stdgo._internal.time.Time.now().truncate((60000000000i64 : stdgo._internal.time.Time.Duration))?.__copy__();
                    {
                        var _err = chtimes((_sizedTempDir + ("/bar.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _mtime?.__copy__(), _mtime?.__copy__());
                        if (_err != null) {
                            _t.fatalf(("Chtimes failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    };
                    var _names = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("bar.txt" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                    if (stdgo._internal.internal.testenv.Testenv.hasSymlink()) {
                        {
                            var _err = symlink((_sizedTempDir + ("/bar.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (_sizedTempDir + ("/symlink.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                            if (_err != null) {
                                _t.fatalf(("Symlink failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                        _names = (_names.__append__(("symlink.txt" : stdgo.GoString)));
                    };
                    if (stdgo._internal.internal.testenv.Testenv.hasLink()) {
                        {
                            var _err = link((_sizedTempDir + ("/bar.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (_sizedTempDir + ("/link.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                            if (_err != null) {
                                _t.fatalf(("Link failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
                        _names = (_names.__append__(("link.txt" : stdgo.GoString)));
                    };
                    for (__65 => _wantSize in (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[(_data.length : stdgo.GoInt64), (0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
                        for (__66 => _name in _names) {
                            var _path = ((_sizedTempDir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
                            var __tmp__ = stat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _t.fatalf(("Stat(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                            };
                            var _filesize = _size(_path?.__copy__(), _t);
                            if (((_dir.size() != _filesize) || (_filesize != _wantSize) : Bool)) {
                                _t.errorf(("Size(%q) is %d, len(ReadFile()) is %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_dir.size()), stdgo.Go.toInterface(_filesize), stdgo.Go.toInterface(_wantSize));
                            };
                            if (true) {
                                _err = chmod(_path?.__copy__(), _dir.mode());
                                if (_err != null) {
                                    _t.fatalf(("Chmod(%q) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                                };
                            };
                        };
                        {
                            var _err = truncate((_sizedTempDir + ("/bar.txt" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (0i64 : stdgo.GoInt64));
                            if (_err != null) {
                                _t.fatalf(("Truncate failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                            };
                        };
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
function _testKillProcess(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _processKiller:(_p:stdgo.Ref<Process>) -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
            _t.parallel();
            var _cmd = stdgo._internal.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), args[(0 : stdgo.GoInt)]?.__copy__());
            _cmd.env = (_cmd.environ_().__append__(("GO_OS_TEST_DRAIN_STDIN=1" : stdgo.GoString)));
            var __tmp__ = _cmd.stdoutPipe(), _stdout:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            var __tmp__ = _cmd.stdinPipe(), _stdin:stdgo._internal.io.Io.WriteCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _err = _cmd.start();
            if (_err != null) {
                _t.fatalf(("Failed to start test process: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _err = _cmd.wait_();
                        if (_err == null) {
                            _t.errorf(("Test process succeeded, but expected to fail" : stdgo.GoString));
                        };
                    };
                    _stdin.close();
                };
                a();
            });
            stdgo._internal.io.Io.copy(stdgo._internal.io.Io.discard, _stdout);
            _processKiller(_cmd.process);
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
function testKillStartProcess(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testKillProcess(_t, function(_p:stdgo.Ref<Process>):Void {
            var _err = _p.kill();
            if (_err != null) {
                _t.fatalf(("Failed to kill test process: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
    }
function testGetppid(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.skipf(("skipping test on plan9; see issue 8206" : stdgo.GoString));
        };
        if (getenv(("GO_WANT_HELPER_PROCESS" : stdgo.GoString)) == (("1" : stdgo.GoString))) {
            stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(getppid()));
            exit((0 : stdgo.GoInt));
        };
        stdgo._internal.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _cmd = stdgo._internal.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), args[(0 : stdgo.GoInt)]?.__copy__(), ("-test.run=TestGetppid" : stdgo.GoString));
        _cmd.env = (environ_().__append__(("GO_WANT_HELPER_PROCESS=1" : stdgo.GoString)));
        var __tmp__ = _cmd.combinedOutput(), _output:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Failed to spawn child process: %v %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_output : stdgo.GoString)));
        };
        var _childPpid = (_output : stdgo.GoString)?.__copy__();
        var _ourPid = stdgo._internal.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(getpid()))?.__copy__();
        if (_childPpid != (_ourPid)) {
            _t.fatalf(("Child process reports parent process id \'%v\', expected \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_childPpid), stdgo.Go.toInterface(_ourPid));
        };
    }
function testKillFindProcess(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testKillProcess(_t, function(_p:stdgo.Ref<Process>):Void {
            var __tmp__ = findProcess(_p.pid), _p2:stdgo.Ref<stdgo._internal.os.Os.Process> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Failed to find test process: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = _p2.kill();
            if (_err != null) {
                _t.fatalf(("Failed to kill test process: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
    }
function testNilFileMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        for (__8 => _tt in _nilFileMethodTests) {
            var _file:stdgo.Ref<File> = (null : stdgo.Ref<stdgo._internal.os.Os.File>);
            var _got = _tt._f(_file);
            if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(errInvalid))) {
                _t.errorf(("%v should fail when f is nil; got %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._name), stdgo.Go.toInterface(_got));
            };
        };
    }
function _mkdirTree(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _root:stdgo.GoString, _level:stdgo.GoInt, _max:stdgo.GoInt):Void {
        if ((_level >= _max : Bool)) {
            return;
        };
        _level++;
        {
            var _i = (97 : stdgo.GoInt32);
            stdgo.Go.cfor((_i < (99 : stdgo.GoInt32) : Bool), _i++, {
                var _dir = stdgo._internal.path.filepath.Filepath.join(_root?.__copy__(), (_i : stdgo.GoString)?.__copy__())?.__copy__();
                {
                    var _err = mkdir(_dir?.__copy__(), (448u32 : stdgo._internal.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                _mkdirTree(_t, _dir?.__copy__(), _level, _max);
            });
        };
    }
function testRemoveAllRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                _t.skip(stdgo.Go.toInterface(("skipping on windows" : stdgo.GoString)));
            };
            if (false) {
                stdgo._internal.internal.testenv.Testenv.skipFlaky(stdgo.Go.asInterface(_t), (52301 : stdgo.GoInt));
            };
            var _n = stdgo._internal.runtime.Runtime.gomaxprocs((16 : stdgo.GoInt));
            {
                var _a0 = _n;
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            var __tmp__ = mkdirTemp(stdgo.Go.str()?.__copy__(), ("issue" : stdgo.GoString)), _root:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            _mkdirTree(_t, _root?.__copy__(), (1 : stdgo.GoInt), (6 : stdgo.GoInt));
            var _hold = (new stdgo.Chan<T__struct_4>(0, () -> ({  } : T__struct_4)) : stdgo.Chan<T__struct_4>);
            var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                _hold.__get__();
                                var _err = removeAll(_root?.__copy__());
                                if (_err != null) {
                                    _t.errorf(("unexpected error: %T, %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_err));
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
                        a();
                    });
                });
            };
            if (_hold != null) _hold.__close__();
            _wg.wait_();
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
function testPipeThreads(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("illumos" : stdgo.GoString)) || __value__ == (("solaris" : stdgo.GoString))) {
                    _t.skip(stdgo.Go.toInterface(("skipping on Solaris and illumos; issue 19111" : stdgo.GoString)));
                } else if (__value__ == (("windows" : stdgo.GoString))) {
                    _t.skip(stdgo.Go.toInterface(("skipping on Windows; issue 19098" : stdgo.GoString)));
                } else if (__value__ == (("plan9" : stdgo.GoString))) {
                    _t.skip(stdgo.Go.toInterface(("skipping on Plan 9; does not support runtime poller" : stdgo.GoString)));
                } else if (__value__ == (("js" : stdgo.GoString))) {
                    _t.skip(stdgo.Go.toInterface(("skipping on js; no support for os.Pipe" : stdgo.GoString)));
                } else if (__value__ == (("wasip1" : stdgo.GoString))) {
                    _t.skip(stdgo.Go.toInterface(("skipping on wasip1; no support for os.Pipe" : stdgo.GoString)));
                };
            };
            var _threads = (100 : stdgo.GoInt);
            if (false) {
                _threads = (50 : stdgo.GoInt);
            };
            var _r = (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>((_threads : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>);
            var _w = (new stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>((_threads : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os.File>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _threads : Bool), _i++, {
                    var __tmp__ = pipe(), _rp:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _wp:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < _i : Bool), _j++, {
                                _r[(_j : stdgo.GoInt)].close();
                                _w[(_j : stdgo.GoInt)].close();
                            });
                        };
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    _r[(_i : stdgo.GoInt)] = _rp;
                    _w[(_i : stdgo.GoInt)] = _wp;
                });
            };
            {
                var _a0 = stdgo._internal.runtime.debug.Debug.setMaxThreads((_threads / (2 : stdgo.GoInt) : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug.setMaxThreads(_a0));
            };
            var _creading = (new stdgo.Chan<Bool>((_threads : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            var _cdone = (new stdgo.Chan<Bool>((_threads : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _threads : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function(_i:stdgo.GoInt):Void {
                            var _b:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
                            _creading.__send__(true);
                            {
                                var __tmp__ = _r[(_i : stdgo.GoInt)].read((_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __48:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    _t.error(stdgo.Go.toInterface(_err));
                                };
                            };
                            {
                                var _err = _r[(_i : stdgo.GoInt)].close();
                                if (_err != null) {
                                    _t.error(stdgo.Go.toInterface(_err));
                                };
                            };
                            _cdone.__send__(true);
                        };
                        a(_i);
                    });
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _threads : Bool), _i++, {
                    _creading.__get__();
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _threads : Bool), _i++, {
                    {
                        var __tmp__ = _w[(_i : stdgo.GoInt)].write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __48:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(_err));
                        };
                    };
                    {
                        var _err = _w[(_i : stdgo.GoInt)].close();
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(_err));
                        };
                    };
                    _cdone.__get__();
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
function _testDoubleCloseError(_path:stdgo.GoString):stdgo.Ref<stdgo._internal.testing.Testing.T_> -> Void {
        return function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            _t.parallel();
            var __tmp__ = open(_path?.__copy__()), _file:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _err = _file.close();
                if (_err != null) {
                    _t.fatalf(("unexpected error from Close: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _err = _file.close();
                if (_err == null) {
                    _t.error(stdgo.Go.toInterface(("second Close did not fail" : stdgo.GoString)));
                } else {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
                    }, _pe = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        _t.errorf(("second Close: got %T, want %T" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(stdgo.Go.asInterface(_pe)));
                    } else if (stdgo.Go.toInterface(_pe.err) != (stdgo.Go.toInterface(errClosed))) {
                        _t.errorf(("second Close: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_pe.err), stdgo.Go.toInterface(errClosed));
                    } else {
                        _t.logf(("second close returned expected error %q" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
            };
        };
    }
function testDoubleCloseError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        _t.run(("file" : stdgo.GoString), _testDoubleCloseError(stdgo._internal.path.filepath.Filepath.join(_sfdir?.__copy__(), _sfname?.__copy__())?.__copy__()));
        _t.run(("dir" : stdgo.GoString), _testDoubleCloseError(_sfdir?.__copy__()));
    }
function testUserHomeDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = userHomeDir(), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_dir == stdgo.Go.str()) && (_err == null) : Bool)) {
            _t.fatal(stdgo.Go.toInterface(("UserHomeDir returned an empty string but no error" : stdgo.GoString)));
        };
        if (_err != null) {
            _t.skipf(("skipping: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stat(_dir?.__copy__()), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (isNotExist(_err)) {
                _t.log(stdgo.Go.toInterface(_err));
                return;
            };
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (!_fi.isDir()) {
            _t.fatalf(("dir %s is not directory; type = %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
        };
    }
function testDirSeek(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = open(_wd?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _f.readdirnames((0 : stdgo.GoInt)), _dirnames1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _f.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), _ret:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (_ret != ((0i64 : stdgo.GoInt64))) {
            _t.fatalf(("seek result not zero: %d" : stdgo.GoString), stdgo.Go.toInterface(_ret));
        };
        var __tmp__ = _f.readdirnames((0 : stdgo.GoInt)), _dirnames2:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_dirnames1.length) != ((_dirnames2.length))) {
            _t.fatalf(("listings have different lengths: %d and %d\n" : stdgo.GoString), stdgo.Go.toInterface((_dirnames1.length)), stdgo.Go.toInterface((_dirnames2.length)));
        };
        for (_i => _n1 in _dirnames1) {
            var _n2 = _dirnames2[(_i : stdgo.GoInt)]?.__copy__();
            if (_n1 != (_n2)) {
                _t.fatalf(("different name i=%d n1=%s n2=%s\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_n2));
            };
        };
    }
function testReaddirSmallSeek(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = open(stdgo._internal.path.filepath.Filepath.join(_wd?.__copy__(), ("testdata" : stdgo.GoString), ("issue37161" : stdgo.GoString))?.__copy__()), _df:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = _df.readdirnames((1 : stdgo.GoInt)), _names1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            {
                var __tmp__ = _df.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = _df.readdirnames((0 : stdgo.GoInt)), _names2:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_names2.length) != ((3 : stdgo.GoInt))) {
            _t.fatalf(("first names: %v, second names: %v" : stdgo.GoString), stdgo.Go.toInterface(_names1), stdgo.Go.toInterface(_names2));
        };
    }
function _isDeadlineExceeded(_err:stdgo.Error):Bool {
        if (!isTimeout(_err)) {
            return false;
        };
        if (!stdgo._internal.errors.Errors.is_(_err, errDeadlineExceeded)) {
            return false;
        };
        return true;
    }
function testOpenFileKeepsPermissions(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _dir = _t.tempDir()?.__copy__();
        var _name = stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("x" : stdgo.GoString))?.__copy__();
        var __tmp__ = create(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _err = _f.close();
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = openFile(_name?.__copy__(), (577 : stdgo.GoInt), (0u32 : stdgo._internal.io.fs.Fs.FileMode));
            _f = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _f.stat(), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            } else if ((_fi.mode() & (146u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
                _t.errorf(("f.Stat.Mode after OpenFile is %v, should be writable" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
            };
        };
        {
            var _err = _f.close();
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = stat(_name?.__copy__()), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            } else if ((_fi.mode() & (146u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
                _t.errorf(("Stat after OpenFile is %v, should be writable" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
            };
        };
    }
function testDirFS(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        if (false) {
            {
                var _err = stdgo._internal.path.filepath.Filepath.walkDir(("./testdata/dirfs" : stdgo.GoString), function(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs.DirEntry, _err:stdgo.Error):stdgo.Error {
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    var __tmp__ = _d.info(), _info:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    var __tmp__ = stat(_path?.__copy__()), _stat:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                    if (stdgo.Go.toInterface(_stat.modTime()) == stdgo.Go.toInterface(_info.modTime())) {
                        return (null : stdgo.Error);
                    };
                    {
                        var _err = chtimes(_path?.__copy__(), _stat.modTime()?.__copy__(), _stat.modTime()?.__copy__());
                        if (_err != null) {
                            _t.log(stdgo.Go.toInterface(_err));
                        };
                    };
                    return (null : stdgo.Error);
                });
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
        };
        var _fsys = dirFS(("./testdata/dirfs" : stdgo.GoString));
        {
            var _err = stdgo._internal.testing.fstest.Fstest.testFS(_fsys, ("a" : stdgo.GoString), ("b" : stdgo.GoString), ("dir/x" : stdgo.GoString));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fsys) : stdgo._internal.io.fs.Fs.ReadDirFS)) : stdgo._internal.io.fs.Fs.ReadDirFS), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.fs.Fs.ReadDirFS), _1 : false };
        }, _rdfs = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.error(stdgo.Go.toInterface(("expected DirFS result to implement fs.ReadDirFS" : stdgo.GoString)));
        };
        {
            var __tmp__ = _rdfs.readDir(("nonexistent" : stdgo.GoString)), __32:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("fs.ReadDir of nonexistent directory succeeded" : stdgo.GoString)));
            };
        };
        {};
        var __tmp__ = _fsys.open(("dir/nonesuch" : stdgo.GoString)), __41:stdgo._internal.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("fs.Open of nonexistent file succeeded" : stdgo.GoString)));
        } else {
            if (!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("dir/nonesuch" : stdgo.GoString))) {
                _t.errorf(("error %q does not contain %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("dir/nonesuch" : stdgo.GoString)));
            };
            if (stdgo._internal.strings.Strings.contains((stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>).path?.__copy__(), ("testdata" : stdgo.GoString))) {
                _t.errorf(("error %q contains %q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("testdata" : stdgo.GoString)));
            };
        };
        var _d = dirFS(("." : stdgo.GoString));
        {
            var __tmp__ = _d.open(("testdata\\dirfs" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.fatalf(("Open testdata\\dirfs succeeded" : stdgo.GoString));
        };
        {
            var __tmp__ = _d.open(("NUL" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err == null) {
            _t.errorf(("Open NUL succeeded" : stdgo.GoString));
        };
    }
function testDirFSRootDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _cwd = (_cwd.__slice__((stdgo._internal.path.filepath.Filepath.volumeName(_cwd?.__copy__()).length)) : stdgo.GoString)?.__copy__();
        _cwd = stdgo._internal.path.filepath.Filepath.toSlash(_cwd?.__copy__())?.__copy__();
        _cwd = stdgo._internal.strings.Strings.trimPrefix(_cwd?.__copy__(), ("/" : stdgo.GoString))?.__copy__();
        var _d = dirFS(("/" : stdgo.GoString));
        var __tmp__ = _d.open((_cwd + ("/testdata/dirfs/a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()), _f:stdgo._internal.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        _f.close();
    }
function testDirFSEmptyDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _d = dirFS(stdgo.Go.str()?.__copy__());
        var __tmp__ = getwd(), _cwd:stdgo.GoString = __tmp__._0, __8:stdgo.Error = __tmp__._1;
        for (__9 => _path in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("testdata/dirfs/a" : stdgo.GoString), (stdgo._internal.path.filepath.Filepath.toSlash(_cwd?.__copy__()) + ("/testdata/dirfs/a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var __tmp__ = _d.open(_path?.__copy__()), __10:stdgo._internal.io.fs.Fs.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatalf(("DirFS(\"\").Open(%q) succeeded" : stdgo.GoString), stdgo.Go.toInterface(_path));
            };
        };
    }
function testDirFSPathsValid(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            _t.skipf(("skipping on Windows" : stdgo.GoString));
        };
        _t.parallel();
        var _d = _t.tempDir()?.__copy__();
        {
            var _err = writeFile(stdgo._internal.path.filepath.Filepath.join(_d?.__copy__(), ("control.txt" : stdgo.GoString))?.__copy__(), ((("Hello, world!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (420u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = writeFile(stdgo._internal.path.filepath.Filepath.join(_d?.__copy__(), ("e:xperi\\ment.txt" : stdgo.GoString))?.__copy__(), ((("Hello, colon and backslash!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (420u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _fsys = dirFS(_d?.__copy__());
        var _err = stdgo._internal.io.fs.Fs.walkDir(_fsys, ("." : stdgo.GoString), function(_path:stdgo.GoString, _e:stdgo._internal.io.fs.Fs.DirEntry, _err:stdgo.Error):stdgo.Error {
            if (stdgo._internal.io.fs.Fs.validPath(_e.name()?.__copy__())) {
                _t.logf(("%q ok" : stdgo.GoString), stdgo.Go.toInterface(_e.name()));
            } else {
                _t.errorf(("%q INVALID" : stdgo.GoString), stdgo.Go.toInterface(_e.name()));
            };
            return (null : stdgo.Error);
        });
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
function testReadFileProc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _name = ("/proc/sys/fs/pipe-max-size" : stdgo.GoString);
        {
            var __tmp__ = stat(_name?.__copy__()), __8:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.skip(stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = readFile(_name?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (((_data.length == (0 : stdgo.GoInt)) || (_data[((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
            _t.fatalf(("read %s: not newline-terminated: %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_data));
        };
    }
function testDirFSReadFileProc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _fsys = dirFS(("/" : stdgo.GoString));
        var _name = ("proc/sys/fs/pipe-max-size" : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.io.fs.Fs.stat(_fsys, _name?.__copy__()), __8:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.skip();
            };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs.readFile(_fsys, _name?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (((_data.length == (0 : stdgo.GoInt)) || (_data[((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
            _t.fatalf(("read %s: not newline-terminated: %q" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_data));
        };
    }
function testWriteStringAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skip(stdgo.Go.toInterface(("js allocates a lot during File.WriteString" : stdgo.GoString)));
            };
            var _d = _t.tempDir()?.__copy__();
            var __tmp__ = create(stdgo._internal.path.filepath.Filepath.join(_d?.__copy__(), ("whiteboard.txt" : stdgo.GoString))?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            var _allocs = stdgo._internal.testing.Testing.allocsPerRun((100 : stdgo.GoInt), function():Void {
                _f.writeString(("I will not allocate when passed a string longer than 32 bytes.\n" : stdgo.GoString));
            });
            if (_allocs != (0 : stdgo.GoFloat64)) {
                _t.errorf(("expected 0 allocs for File.WriteString, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
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
function testPipeIOCloseRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (true) {
            _t.skipf(("skipping on %s: no pipes" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
        };
        _t.parallel();
        var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        _wg.add((3 : stdgo.GoInt));
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> _wg.done());
                    while (true) {
                        var __tmp__ = _w.write((("hi" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            if (stdgo._internal.errors.Errors.is_(_err, errClosed) || stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("broken pipe" : stdgo.GoString)) || stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("pipe is being closed" : stdgo.GoString)) || stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("hungup channel" : stdgo.GoString))) {} else {
                                _t.error(stdgo.Go.toInterface(_err));
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                        if (_n != ((2 : stdgo.GoInt))) {
                            _t.errorf(("wrote %d bytes, expected 2" : stdgo.GoString), stdgo.Go.toInterface(_n));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
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
            a();
        });
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> _wg.done());
                    while (true) {
                        var _buf:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
                        var __tmp__ = _r.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            if (((stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) && !stdgo._internal.errors.Errors.is_(_err, errClosed) : Bool)) {
                                _t.error(stdgo.Go.toInterface(_err));
                            };
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                        if (_n != ((2 : stdgo.GoInt))) {
                            _t.errorf(("read %d bytes, want 2" : stdgo.GoString), stdgo.Go.toInterface(_n));
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
            a();
        });
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> _wg.done());
                    stdgo._internal.time.Time.sleep((1000000i64 : stdgo._internal.time.Time.Duration));
                    {
                        var _err = _r.close();
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(_err));
                        };
                    };
                    {
                        var _err = _w.close();
                        if (_err != null) {
                            _t.error(stdgo.Go.toInterface(_err));
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
            a();
        });
        _wg.wait_();
    }
function testPipeCloseRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (true) {
            _t.skipf(("skipping on %s: no pipes" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
        };
        _t.parallel();
        var __tmp__ = pipe(), _r:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _w:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        var _c = (new stdgo.Chan<stdgo.Error>((4 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        var _f = function():Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                __deferstack__.unshift(() -> _wg.done());
                _c.__send__(_r.close());
                _c.__send__(_w.close());
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
        _wg.add((2 : stdgo.GoInt));
        stdgo.Go.routine(() -> _f());
        stdgo.Go.routine(() -> _f());
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _errs = __1, _nils = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                var _err = _c.__get__();
                if (_err == null) {
                    _nils++;
                } else {
                    _errs++;
                };
            });
        };
        if (((_nils != (2 : stdgo.GoInt)) || (_errs != (2 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("got nils %d errs %d, want 2 2" : stdgo.GoString), stdgo.Go.toInterface(_nils), stdgo.Go.toInterface(_errs));
        };
    }
function _checkUidGid(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString, _uid:stdgo.GoInt, _gid:stdgo.GoInt):Void {
        var __tmp__ = lstat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Lstat %q (looking for uid/gid %d/%d): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_uid), stdgo.Go.toInterface(_gid), stdgo.Go.toInterface(_err));
        };
        var _sys = (stdgo.Go.typeAssert((_dir.sys() : stdgo.Ref<stdgo._internal.syscall.Syscall.Stat_t>)) : stdgo.Ref<stdgo._internal.syscall.Syscall.Stat_t>);
        if ((_sys.uid : stdgo.GoInt) != (_uid)) {
            _t.errorf(("Lstat %q: uid %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_sys.uid), stdgo.Go.toInterface(_uid));
        };
        if ((_sys.gid : stdgo.GoInt) != (_gid)) {
            _t.errorf(("Lstat %q: gid %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_sys.gid), stdgo.Go.toInterface(_gid));
        };
    }
function testChown(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                _t.skip(stdgo.Go.toInterface(("file ownership not supported on js" : stdgo.GoString)));
            };
            _t.parallel();
            var _f = _newFile(("TestChown" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_err));
            };
            var _gid = getgid();
            _t.log(stdgo.Go.toInterface(("gid:" : stdgo.GoString)), stdgo.Go.toInterface(_gid));
            {
                _err = chown(_f.name()?.__copy__(), (-1 : stdgo.GoInt), _gid);
                if (_err != null) {
                    _t.fatalf(("chown %s -1 %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_gid), stdgo.Go.toInterface(_err));
                };
            };
            var _sys = (stdgo.Go.typeAssert((_dir.sys() : stdgo.Ref<stdgo._internal.syscall.Syscall.Stat_t>)) : stdgo.Ref<stdgo._internal.syscall.Syscall.Stat_t>);
            _checkUidGid(_t, _f.name()?.__copy__(), (_sys.uid : stdgo.GoInt), _gid);
            var __tmp__ = getgroups(), _groups:stdgo.Slice<stdgo.GoInt> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("getgroups: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _t.log(stdgo.Go.toInterface(("groups: " : stdgo.GoString)), stdgo.Go.toInterface(_groups));
            for (__56 => _g in _groups) {
                {
                    _err = chown(_f.name()?.__copy__(), (-1 : stdgo.GoInt), _g);
                    if (_err != null) {
                        _t.fatalf(("chown %s -1 %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_err));
                    };
                };
                _checkUidGid(_t, _f.name()?.__copy__(), (_sys.uid : stdgo.GoInt), _g);
                {
                    _err = _f.chown((-1 : stdgo.GoInt), _gid);
                    if (_err != null) {
                        _t.fatalf(("fchown %s -1 %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_gid), stdgo.Go.toInterface(_err));
                    };
                };
                _checkUidGid(_t, _f.name()?.__copy__(), (_sys.uid : stdgo.GoInt), _gid);
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
function testFileChown(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                _t.skip(stdgo.Go.toInterface(("file ownership not supported on js" : stdgo.GoString)));
            };
            _t.parallel();
            var _f = _newFile(("TestFileChown" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_err));
            };
            var _gid = getgid();
            _t.log(stdgo.Go.toInterface(("gid:" : stdgo.GoString)), stdgo.Go.toInterface(_gid));
            {
                _err = _f.chown((-1 : stdgo.GoInt), _gid);
                if (_err != null) {
                    _t.fatalf(("fchown %s -1 %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_gid), stdgo.Go.toInterface(_err));
                };
            };
            var _sys = (stdgo.Go.typeAssert((_dir.sys() : stdgo.Ref<stdgo._internal.syscall.Syscall.Stat_t>)) : stdgo.Ref<stdgo._internal.syscall.Syscall.Stat_t>);
            _checkUidGid(_t, _f.name()?.__copy__(), (_sys.uid : stdgo.GoInt), _gid);
            var __tmp__ = getgroups(), _groups:stdgo.Slice<stdgo.GoInt> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("getgroups: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _t.log(stdgo.Go.toInterface(("groups: " : stdgo.GoString)), stdgo.Go.toInterface(_groups));
            for (__56 => _g in _groups) {
                {
                    _err = _f.chown((-1 : stdgo.GoInt), _g);
                    if (_err != null) {
                        _t.fatalf(("fchown %s -1 %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_err));
                    };
                };
                _checkUidGid(_t, _f.name()?.__copy__(), (_sys.uid : stdgo.GoInt), _g);
                {
                    _err = _f.chown((-1 : stdgo.GoInt), _gid);
                    if (_err != null) {
                        _t.fatalf(("fchown %s -1 %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_gid), stdgo.Go.toInterface(_err));
                    };
                };
                _checkUidGid(_t, _f.name()?.__copy__(), (_sys.uid : stdgo.GoInt), _gid);
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
function testLchown(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
            _t.parallel();
            var _f = _newFile(("TestLchown" : stdgo.GoString), _t);
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("stat %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_err));
            };
            var _linkname = (_f.name() + ("2" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            {
                var _err = symlink(_f.name()?.__copy__(), _linkname?.__copy__());
                if (_err != null) {
                    if ((false && isPermission(_err) : Bool)) {
                        _t.skip(stdgo.Go.toInterface(("skipping test on Android; permission error creating symlink" : stdgo.GoString)));
                    };
                    _t.fatalf(("link %s -> %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_linkname), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _linkname;
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            var _gid = getgid();
            _t.log(stdgo.Go.toInterface(("gid:" : stdgo.GoString)), stdgo.Go.toInterface(_gid));
            {
                _err = lchown(_linkname?.__copy__(), (-1 : stdgo.GoInt), _gid);
                if (_err != null) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
                        }, _err = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && (stdgo.Go.toInterface(_err.err) == stdgo.Go.toInterface(stdgo.Go.asInterface((38 : stdgo._internal.syscall.Syscall.Errno)))) : Bool)) {
                            _t.skip(stdgo.Go.toInterface(("lchown is unavailable" : stdgo.GoString)));
                        };
                    };
                    _t.fatalf(("lchown %s -1 %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_linkname), stdgo.Go.toInterface(_gid), stdgo.Go.toInterface(_err));
                };
            };
            var _sys = (stdgo.Go.typeAssert((_dir.sys() : stdgo.Ref<stdgo._internal.syscall.Syscall.Stat_t>)) : stdgo.Ref<stdgo._internal.syscall.Syscall.Stat_t>);
            _checkUidGid(_t, _linkname?.__copy__(), (_sys.uid : stdgo.GoInt), _gid);
            var __tmp__ = getgroups(), _groups:stdgo.Slice<stdgo.GoInt> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("getgroups: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _t.log(stdgo.Go.toInterface(("groups: " : stdgo.GoString)), stdgo.Go.toInterface(_groups));
            for (__72 => _g in _groups) {
                {
                    _err = lchown(_linkname?.__copy__(), (-1 : stdgo.GoInt), _g);
                    if (_err != null) {
                        _t.fatalf(("lchown %s -1 %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_linkname), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_err));
                    };
                };
                _checkUidGid(_t, _linkname?.__copy__(), (_sys.uid : stdgo.GoInt), _g);
                _checkUidGid(_t, _f.name()?.__copy__(), (_sys.uid : stdgo.GoInt), (_sys.gid : stdgo.GoInt));
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
function testReaddirRemoveRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _oldStat = (lstatP : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs.FileInfo; var _1 : stdgo.Error; });
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    lstatP = _oldStat;
                };
                a();
            });
            lstatP = function(_name:stdgo.GoString):{ var _0 : FileInfo; var _1 : stdgo.Error; } {
                if (stdgo._internal.strings.Strings.hasSuffix(_name?.__copy__(), ("some-file" : stdgo.GoString))) {
                    return { _0 : (null : stdgo._internal.io.fs.Fs.FileInfo), _1 : errNotExist };
                };
                return _oldStat(_name?.__copy__());
            };
            var _dir = _newDir(("TestReaddirRemoveRace" : stdgo.GoString), _t)?.__copy__();
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> removeAll(_a0?.__copy__()));
            };
            {
                var _err = writeFile(stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("some-file" : stdgo.GoString))?.__copy__(), (("hello" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>), (420u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = open(_dir?.__copy__()), _d:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _d.close());
            var __tmp__ = _d.readdir((2 : stdgo.GoInt)), _fis:stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_fis.length == (0 : stdgo.GoInt)) && (_err == null) : Bool)) {
                _t.fatal(stdgo.Go.toInterface(("Readdir = empty slice & err == nil" : stdgo.GoString)));
            };
            if (((_fis.length != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                _t.errorf(("Readdir = %d entries: %v; want 0, io.EOF" : stdgo.GoString), stdgo.Go.toInterface((_fis.length)), stdgo.Go.toInterface(_err));
                for (_i => _fi in _fis) {
                    _t.errorf(("  entry[%d]: %q, %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_fi.name()), stdgo.Go.toInterface(stdgo.Go.asInterface(_fi.mode())));
                };
                _t.failNow();
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
function testMkdirStickyUmask(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                _t.skip(stdgo.Go.toInterface(("file permissions not supported on js" : stdgo.GoString)));
            };
            _t.parallel();
            {};
            var _dir = _newDir(("TestMkdirStickyUmask" : stdgo.GoString), _t)?.__copy__();
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> removeAll(_a0?.__copy__()));
            };
            var _oldUmask = stdgo._internal.syscall.Syscall.umask((63 : stdgo.GoInt));
            {
                var _a0 = _oldUmask;
                __deferstack__.unshift(() -> stdgo._internal.syscall.Syscall.umask(_a0));
            };
            var _p = stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("dir1" : stdgo.GoString))?.__copy__();
            {
                var _err = mkdir(_p?.__copy__(), (1049069u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = stat(_p?.__copy__()), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _mode = _fi.mode();
                if ((((_mode & (63u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != (0u32 : stdgo._internal.io.fs.Fs.FileMode)) || ((_mode & (((511u32 : stdgo._internal.io.fs.Fs.FileMode) ^ (-1i32 : stdgo.GoInt) : stdgo._internal.io.fs.Fs.FileMode)) : stdgo._internal.io.fs.Fs.FileMode) != (-2146435072u32 : stdgo._internal.io.fs.Fs.FileMode)) : Bool)) {
                    _t.errorf(("unexpected mode %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
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
function _newFileTest(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _blocking:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skipf(("syscall.Pipe is not available on %s." : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
            var _p = (new stdgo.Slice<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            {
                var _err = stdgo._internal.syscall.Syscall.pipe(_p);
                if (_err != null) {
                    _t.fatalf(("pipe: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _p[(1 : stdgo.GoInt)];
                __deferstack__.unshift(() -> stdgo._internal.syscall.Syscall.close(_a0));
            };
            if (!_blocking) {
                {
                    var _err = stdgo._internal.syscall.Syscall.setNonblock(_p[(0 : stdgo.GoInt)], true);
                    if (_err != null) {
                        stdgo._internal.syscall.Syscall.close(_p[(0 : stdgo.GoInt)]);
                        _t.fatalf(("SetNonblock: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
            };
            var _file = newFile((_p[(0 : stdgo.GoInt)] : stdgo.GoUIntptr), ("notapipe" : stdgo.GoString));
            if (_file == null || (_file : Dynamic).__nil__) {
                stdgo._internal.syscall.Syscall.close(_p[(0 : stdgo.GoInt)]);
                _t.fatalf(("failed to convert fd to file!" : stdgo.GoString));
            };
            __deferstack__.unshift(() -> _file.close());
            var _timeToWrite = (100000000i64 : stdgo._internal.time.Time.Duration);
            var _timeToDeadline = (1000000i64 : stdgo._internal.time.Time.Duration);
            if (!_blocking) {
                _timeToWrite = (1000000000i64 : stdgo._internal.time.Time.Duration);
            };
            var _b = (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _timer = stdgo._internal.time.Time.afterFunc(_timeToWrite, function():Void {
                stdgo._internal.syscall.Syscall.write(_p[(1 : stdgo.GoInt)], (("a" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            });
            __deferstack__.unshift(() -> _timer.stop());
            _file.setReadDeadline(stdgo._internal.time.Time.now().add(_timeToDeadline)?.__copy__());
            var __tmp__ = _file.read(_b), __32:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!_blocking) {
                if (!_isDeadlineExceeded(_err)) {
                    _t.fatalf(("No timeout reading from file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            } else {
                if (_err != null) {
                    _t.fatalf(("Error reading from file: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
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
function testNewFileBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        _newFileTest(_t, true);
    }
function testNewFileNonBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        _newFileTest(_t, false);
    }
function testNewFileInvalid(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        {};
        {
            var _f = newFile((4294967295 : stdgo.GoUIntptr), ("invalid" : stdgo.GoString));
            if (_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) {
                _t.errorf(("NewFile(-1) got %v want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
            };
        };
    }
function testSplitPath(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        for (__8 => _tt in (new stdgo.Slice<T__struct_6>(15, 15, ...[
({ _path : ("a" : stdgo.GoString), _wantDir : ("." : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : T__struct_6),
({ _path : ("a/" : stdgo.GoString), _wantDir : ("." : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : T__struct_6),
({ _path : ("a//" : stdgo.GoString), _wantDir : ("." : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : T__struct_6),
({ _path : ("a/b" : stdgo.GoString), _wantDir : ("a" : stdgo.GoString), _wantBase : ("b" : stdgo.GoString) } : T__struct_6),
({ _path : ("a/b/" : stdgo.GoString), _wantDir : ("a" : stdgo.GoString), _wantBase : ("b" : stdgo.GoString) } : T__struct_6),
({ _path : ("a/b/c" : stdgo.GoString), _wantDir : ("a/b" : stdgo.GoString), _wantBase : ("c" : stdgo.GoString) } : T__struct_6),
({ _path : ("/a" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : T__struct_6),
({ _path : ("/a/" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : T__struct_6),
({ _path : ("/a/b" : stdgo.GoString), _wantDir : ("/a" : stdgo.GoString), _wantBase : ("b" : stdgo.GoString) } : T__struct_6),
({ _path : ("/a/b/" : stdgo.GoString), _wantDir : ("/a" : stdgo.GoString), _wantBase : ("b" : stdgo.GoString) } : T__struct_6),
({ _path : ("/a/b/c" : stdgo.GoString), _wantDir : ("/a/b" : stdgo.GoString), _wantBase : ("c" : stdgo.GoString) } : T__struct_6),
({ _path : ("//a" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : T__struct_6),
({ _path : ("//a/" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : T__struct_6),
({ _path : ("///a" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : T__struct_6),
({ _path : ("///a/" : stdgo.GoString), _wantDir : ("/" : stdgo.GoString), _wantBase : ("a" : stdgo.GoString) } : T__struct_6)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({ _path : ("" : stdgo.GoString), _wantDir : ("" : stdgo.GoString), _wantBase : ("" : stdgo.GoString) } : T__struct_6)])) : stdgo.Slice<T__struct_6>)) {
            {
                var __tmp__ = splitPath(_tt._path?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _base:stdgo.GoString = __tmp__._1;
                if (((_dir != _tt._wantDir) || (_base != _tt._wantBase) : Bool)) {
                    _t.errorf(("splitPath(%q) = %q, %q, want %q, %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._path), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_base), stdgo.Go.toInterface(_tt._wantDir), stdgo.Go.toInterface(_tt._wantBase));
                };
            };
        };
    }
function testMkdirAll(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _tmpDir = tempDir()?.__copy__();
            var _path = (_tmpDir + ("/_TestMkdirAll_/dir/./dir2" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            var _err = mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = (_tmpDir + ("/_TestMkdirAll_" : stdgo.GoString)?.__copy__() : stdgo.GoString);
                __deferstack__.unshift(() -> removeAll(_a0?.__copy__()));
            };
            _err = mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatalf(("MkdirAll %q (second time): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
            var _fpath = (_path + ("/file" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            var __tmp__ = create(_fpath?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            _err = mkdirAll(_fpath?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err == null) {
                _t.fatalf(("MkdirAll %q: no error" : stdgo.GoString), stdgo.Go.toInterface(_fpath));
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
            }, _perr = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.fatalf(("MkdirAll %q returned %T, not *PathError" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
            };
            if (stdgo._internal.path.filepath.Filepath.clean(_perr.path?.__copy__()) != (stdgo._internal.path.filepath.Filepath.clean(_fpath?.__copy__()))) {
                _t.fatalf(("MkdirAll %q returned wrong error path: %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.clean(_perr.path?.__copy__())), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.clean(_fpath?.__copy__())));
            };
            var _ffpath = (_fpath + ("/subdir" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            _err = mkdirAll(_ffpath?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err == null) {
                _t.fatalf(("MkdirAll %q: no error" : stdgo.GoString), stdgo.Go.toInterface(_ffpath));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
                };
                _perr = __tmp__._0;
                _ok = __tmp__._1;
            };
            if (!_ok) {
                _t.fatalf(("MkdirAll %q returned %T, not *PathError" : stdgo.GoString), stdgo.Go.toInterface(_ffpath), stdgo.Go.toInterface(_err));
            };
            if (stdgo._internal.path.filepath.Filepath.clean(_perr.path?.__copy__()) != (stdgo._internal.path.filepath.Filepath.clean(_fpath?.__copy__()))) {
                _t.fatalf(("MkdirAll %q returned wrong error path: %q not %q" : stdgo.GoString), stdgo.Go.toInterface(_ffpath), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.clean(_perr.path?.__copy__())), stdgo.Go.toInterface(stdgo._internal.path.filepath.Filepath.clean(_fpath?.__copy__())));
            };
            if (false) {
                var _path = (_tmpDir + ("\\_TestMkdirAll_\\dir\\.\\dir2\\" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                var _err = mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
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
function testMkdirAllWithSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _tmpDir = _t.tempDir()?.__copy__();
        var _dir = (_tmpDir + ("/dir" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        {
            var _err = mkdir(_dir?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatalf(("Mkdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_err));
            };
        };
        var _link = (_tmpDir + ("/link" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        {
            var _err = symlink(("dir" : stdgo.GoString), _link?.__copy__());
            if (_err != null) {
                _t.fatalf(("Symlink %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_link), stdgo.Go.toInterface(_err));
            };
        };
        var _path = (_link + ("/foo" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        {
            var _err = mkdirAll(_path?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.errorf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
    }
function testMkdirAllAtSlash(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("android" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString)) || __value__ == (("plan9" : stdgo.GoString)) || __value__ == (("windows" : stdgo.GoString))) {
                _t.skipf(("skipping on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
        };
        if (stdgo._internal.internal.testenv.Testenv.builder() == (stdgo.Go.str())) {
            _t.skipf(("skipping non-hermetic test outside of Go builders" : stdgo.GoString));
        };
        removeAll(("/_go_os_test" : stdgo.GoString));
        {};
        var _err = mkdirAll(("/_go_os_test/dir" : stdgo.GoString), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
        if (_err != null) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
            }, _pathErr = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && (((stdgo.Go.toInterface(_pathErr.err) == stdgo.Go.toInterface(stdgo.Go.asInterface((13 : stdgo._internal.syscall.Syscall.Errno)))) || _isReadonlyError(_pathErr.err) : Bool)) : Bool)) {
                _t.skipf(("could not create %v: %v" : stdgo.GoString), stdgo.Go.toInterface(("/_go_os_test/dir" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            _t.fatalf(("MkdirAll \"/_go_os_test/dir\": %v, %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_pathErr.err));
        };
        removeAll(("/_go_os_test" : stdgo.GoString));
    }
function _checkNamedSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString, _size:stdgo.GoInt64):Void {
        var __tmp__ = stat(_path?.__copy__()), _dir:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("Stat %q (looking for size %d): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_err));
        };
        if (_dir.size() != (_size)) {
            _t.errorf(("Stat %q: size %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_dir.size()), stdgo.Go.toInterface(_size));
        };
    }
function testReadFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _filename = ("rumpelstilzchen" : stdgo.GoString);
        var __tmp__ = readFile(_filename?.__copy__()), _contents:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatalf(("ReadFile %s: error expected, none found" : stdgo.GoString), stdgo.Go.toInterface(_filename));
        };
        _filename = ("read_test.go" : stdgo.GoString);
        {
            var __tmp__ = readFile(_filename?.__copy__());
            _contents = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("ReadFile %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err));
        };
        _checkNamedSize(_t, _filename?.__copy__(), (_contents.length : stdgo.GoInt64));
    }
function testWriteFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = createTemp(stdgo.Go.str()?.__copy__(), ("ioutil-test" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _f.close());
            {
                var _a0 = _f.name();
                __deferstack__.unshift(() -> remove(_a0?.__copy__()));
            };
            var _msg = ("Programming today is a race between software engineers striving to build bigger and better idiot-proof programs, and the Universe trying to produce bigger and better idiots. So far, the Universe is winning." : stdgo.GoString);
            {
                var _err = writeFile(_f.name()?.__copy__(), (_msg : stdgo.Slice<stdgo.GoByte>), (420u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatalf(("WriteFile %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_err));
                };
            };
            var __tmp__ = readFile(_f.name()?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ReadFile %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_err));
            };
            if ((_data : stdgo.GoString) != (_msg)) {
                _t.fatalf(("ReadFile: wrong data:\nhave %q\nwant %q" : stdgo.GoString), stdgo.Go.toInterface((_data : stdgo.GoString)), stdgo.Go.toInterface(_msg));
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
function testReadOnlyWriteFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (getuid() == ((0 : stdgo.GoInt))) {
                _t.skipf(("Root can write to read-only files anyway, so skip the read-only test." : stdgo.GoString));
            };
            if (false) {
                _t.skip(stdgo.Go.toInterface(("no support for file permissions on js" : stdgo.GoString)));
            };
            _t.parallel();
            var __tmp__ = mkdirTemp(stdgo.Go.str()?.__copy__(), _t.name()?.__copy__()), _tempDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tempDir;
                __deferstack__.unshift(() -> removeAll(_a0?.__copy__()));
            };
            var _filename = stdgo._internal.path.filepath.Filepath.join(_tempDir?.__copy__(), ("blurp.txt" : stdgo.GoString))?.__copy__();
            var _shmorp = (("shmorp" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
            var _florp = (("florp" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
            _err = writeFile(_filename?.__copy__(), _shmorp, (292u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatalf(("WriteFile %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err));
            };
            _err = writeFile(_filename?.__copy__(), _florp, (292u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err == null) {
                _t.fatalf(("Expected an error when writing to read-only file %s" : stdgo.GoString), stdgo.Go.toInterface(_filename));
            };
            var __tmp__ = readFile(_filename?.__copy__()), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ReadFile %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.bytes.Bytes.equal(_got, _shmorp)) {
                _t.fatalf(("want %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(_shmorp), stdgo.Go.toInterface(_got));
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
function testReadDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _dirname = ("rumpelstilzchen" : stdgo.GoString);
        var __tmp__ = readDir(_dirname?.__copy__()), __8:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _t.fatalf(("ReadDir %s: error expected, none found" : stdgo.GoString), stdgo.Go.toInterface(_dirname));
        };
        _dirname = ("." : stdgo.GoString);
        var __tmp__ = readDir(_dirname?.__copy__()), _list:stdgo.Slice<stdgo._internal.io.fs.Fs.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("ReadDir %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_dirname), stdgo.Go.toInterface(_err));
        };
        var _foundFile = false;
        var _foundSubDir = false;
        for (__25 => _dir in _list) {
            if ((!_dir.isDir() && (_dir.name() == ("read_test.go" : stdgo.GoString)) : Bool)) {
                _foundFile = true;
            } else if ((_dir.isDir() && (_dir.name() == ("exec" : stdgo.GoString)) : Bool)) {
                _foundSubDir = true;
            };
        };
        if (!_foundFile) {
            _t.fatalf(("ReadDir %s: read_test.go file not found" : stdgo.GoString), stdgo.Go.toInterface(_dirname));
        };
        if (!_foundSubDir) {
            _t.fatalf(("ReadDir %s: exec directory not found" : stdgo.GoString), stdgo.Go.toInterface(_dirname));
        };
    }
function testRemoveAll(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _tmpDir = _t.tempDir()?.__copy__();
        {
            var _err = removeAll(stdgo.Go.str()?.__copy__());
            if (_err != null) {
                _t.errorf(("RemoveAll(\"\"): %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _file = stdgo._internal.path.filepath.Filepath.join(_tmpDir?.__copy__(), ("file" : stdgo.GoString))?.__copy__();
        var _path = stdgo._internal.path.filepath.Filepath.join(_tmpDir?.__copy__(), ("_TestRemoveAll_" : stdgo.GoString))?.__copy__();
        var _fpath = stdgo._internal.path.filepath.Filepath.join(_path?.__copy__(), ("file" : stdgo.GoString))?.__copy__();
        var _dpath = stdgo._internal.path.filepath.Filepath.join(_path?.__copy__(), ("dir" : stdgo.GoString))?.__copy__();
        var __tmp__ = create(_file?.__copy__()), _fd:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_err));
        };
        _fd.close();
        {
            _err = removeAll(_file?.__copy__());
            if (_err != null) {
                _t.fatalf(("RemoveAll %q (first): %s" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = lstat(_file?.__copy__());
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.fatalf(("Lstat %q succeeded after RemoveAll (first)" : stdgo.GoString), stdgo.Go.toInterface(_file));
            };
        };
        {
            var _err = mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = create(_fpath?.__copy__());
            _fd = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
        };
        _fd.close();
        {
            _err = removeAll(_path?.__copy__());
            if (_err != null) {
                _t.fatalf(("RemoveAll %q (second): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = lstat(_path?.__copy__());
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.fatalf(("Lstat %q succeeded after RemoveAll (second)" : stdgo.GoString), stdgo.Go.toInterface(_path));
            };
        };
        {
            _err = mkdirAll(_dpath?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_dpath), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = create(_fpath?.__copy__());
            _fd = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
        };
        _fd.close();
        {
            var __tmp__ = create((_dpath + ("/file" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            _fd = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
        };
        _fd.close();
        {
            _err = removeAll(_path?.__copy__());
            if (_err != null) {
                _t.fatalf(("RemoveAll %q (third): %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = lstat(_path?.__copy__()), __112:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatalf(("Lstat %q succeeded after RemoveAll (third)" : stdgo.GoString), stdgo.Go.toInterface(_path));
            };
        };
        if ((true && (getuid() != (0 : stdgo.GoInt)) : Bool)) {
            {
                _err = mkdirAll(_dpath?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_dpath), stdgo.Go.toInterface(_err));
                };
            };
            for (__129 => _s in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[_fpath?.__copy__(), (_dpath + ("/file1" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (_path + ("/zzz" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                {
                    var __tmp__ = create(_s?.__copy__());
                    _fd = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
                };
                _fd.close();
            };
            {
                _err = chmod(_dpath?.__copy__(), (0u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatalf(("Chmod %q 0: %s" : stdgo.GoString), stdgo.Go.toInterface(_dpath), stdgo.Go.toInterface(_err));
                };
            };
            removeAll(_path?.__copy__());
            chmod(_dpath?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            for (__146 => _s in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_fpath?.__copy__(), (_path + ("/zzz" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                {
                    {
                        var __tmp__ = lstat(_s?.__copy__());
                        _err = __tmp__._1;
                    };
                    if (_err == null) {
                        _t.fatalf(("Lstat %q succeeded after partial RemoveAll" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    };
                };
            };
        };
        {
            _err = removeAll(_path?.__copy__());
            if (_err != null) {
                _t.fatalf(("RemoveAll %q after partial RemoveAll: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = lstat(_path?.__copy__());
                _err = __tmp__._1;
            };
            if (_err == null) {
                _t.fatalf(("Lstat %q succeeded after RemoveAll (final)" : stdgo.GoString), stdgo.Go.toInterface(_path));
            };
        };
    }
function testRemoveAllLarge(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
        };
        _t.parallel();
        var _tmpDir = _t.tempDir()?.__copy__();
        var _path = stdgo._internal.path.filepath.Filepath.join(_tmpDir?.__copy__(), ("_TestRemoveAllLarge_" : stdgo.GoString))?.__copy__();
        {
            var _err = mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _fpath = stdgo._internal.fmt.Fmt.sprintf(("%s/file%d" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_i))?.__copy__();
                var __tmp__ = create(_fpath?.__copy__()), _fd:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
                };
                _fd.close();
            });
        };
        {
            var _err = removeAll(_path?.__copy__());
            if (_err != null) {
                _t.fatalf(("RemoveAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = lstat(_path?.__copy__()), __48:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatalf(("Lstat %q succeeded after RemoveAll" : stdgo.GoString), stdgo.Go.toInterface(_path));
            };
        };
    }
function testRemoveAllLongPath(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = ("js" : stdgo.GoString);
                        if (__value__ == (("aix" : stdgo.GoString)) || __value__ == (("darwin" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString)) || __value__ == (("dragonfly" : stdgo.GoString)) || __value__ == (("freebsd" : stdgo.GoString)) || __value__ == (("linux" : stdgo.GoString)) || __value__ == (("netbsd" : stdgo.GoString)) || __value__ == (("openbsd" : stdgo.GoString)) || __value__ == (("illumos" : stdgo.GoString)) || __value__ == (("solaris" : stdgo.GoString))) {
                            break;
                            break;
                        } else {
                            _t.skip(stdgo.Go.toInterface(("skipping for not implemented platforms" : stdgo.GoString)));
                        };
                    };
                    break;
                };
            };
            var __tmp__ = getwd(), _prevDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Could not get wd: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = mkdirTemp(stdgo.Go.str()?.__copy__(), ("TestRemoveAllLongPath-" : stdgo.GoString)), _startPath:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Could not create TempDir: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _startPath;
                __deferstack__.unshift(() -> removeAll(_a0?.__copy__()));
            };
            _err = chdir(_startPath?.__copy__());
            if (_err != null) {
                _t.fatalf(("Could not chdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_startPath), stdgo.Go.toInterface(_err));
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (41 : stdgo.GoInt) : Bool), _i++, {
                    var _name = stdgo._internal.strings.Strings.repeat(("a" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__();
                    _err = mkdir(_name?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatalf(("Could not mkdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
                    };
                    _err = chdir(_name?.__copy__());
                    if (_err != null) {
                        _t.fatalf(("Could not chdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
                    };
                });
            };
            _err = chdir(_prevDir?.__copy__());
            if (_err != null) {
                _t.fatalf(("Could not chdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_prevDir), stdgo.Go.toInterface(_err));
            };
            _err = removeAll(_startPath?.__copy__());
            if (_err != null) {
                _t.errorf(("RemoveAll could not remove long file path %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_startPath), stdgo.Go.toInterface(_err));
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
function testRemoveAllDot(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = getwd(), _prevDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Could not get wd: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = mkdirTemp(stdgo.Go.str()?.__copy__(), ("TestRemoveAllDot-" : stdgo.GoString)), _tempDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("Could not create TempDir: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tempDir;
                __deferstack__.unshift(() -> removeAll(_a0?.__copy__()));
            };
            _err = chdir(_tempDir?.__copy__());
            if (_err != null) {
                _t.fatalf(("Could not chdir to tempdir: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = removeAll(("." : stdgo.GoString));
            if (_err == null) {
                _t.errorf(("RemoveAll succeed to remove ." : stdgo.GoString));
            };
            _err = chdir(_prevDir?.__copy__());
            if (_err != null) {
                _t.fatalf(("Could not chdir %s: %s" : stdgo.GoString), stdgo.Go.toInterface(_prevDir), stdgo.Go.toInterface(_err));
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
function testRemoveAllDotDot(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var _tempDir = _t.tempDir()?.__copy__();
        var _subdir = stdgo._internal.path.filepath.Filepath.join(_tempDir?.__copy__(), ("x" : stdgo.GoString))?.__copy__();
        var _subsubdir = stdgo._internal.path.filepath.Filepath.join(_subdir?.__copy__(), ("y" : stdgo.GoString))?.__copy__();
        {
            var _err = mkdirAll(_subsubdir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = removeAll(stdgo._internal.path.filepath.Filepath.join(_subsubdir?.__copy__(), (".." : stdgo.GoString))?.__copy__());
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        for (__32 => _dir in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_subsubdir?.__copy__(), _subdir?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            {
                var __tmp__ = stat(_dir?.__copy__()), __33:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.errorf(("%s: exists after RemoveAll" : stdgo.GoString), stdgo.Go.toInterface(_dir));
                };
            };
        };
    }
function testRemoveReadOnlyDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _tempDir = _t.tempDir()?.__copy__();
            var _subdir = stdgo._internal.path.filepath.Filepath.join(_tempDir?.__copy__(), ("x" : stdgo.GoString))?.__copy__();
            {
                var _err = mkdir(_subdir?.__copy__(), (0u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _subdir;
                var _a1 = (511u32 : stdgo._internal.io.fs.Fs.FileMode);
                __deferstack__.unshift(() -> chmod(_a0?.__copy__(), _a1));
            };
            {
                var _err = removeAll(_subdir?.__copy__());
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var __tmp__ = stat(_subdir?.__copy__()), __32:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.error(stdgo.Go.toInterface(("subdirectory was not removed" : stdgo.GoString)));
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
function testRemoveAllButReadOnlyAndPathError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                final __value__ = ("js" : stdgo.GoString);
                if (__value__ == (("js" : stdgo.GoString)) || __value__ == (("wasip1" : stdgo.GoString)) || __value__ == (("windows" : stdgo.GoString))) {
                    _t.skipf(("skipping test on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
                };
            };
            if (getuid() == ((0 : stdgo.GoInt))) {
                _t.skip(stdgo.Go.toInterface(("skipping test when running as root" : stdgo.GoString)));
            };
            _t.parallel();
            var _tempDir = _t.tempDir()?.__copy__();
            var _dirs = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("a" : stdgo.GoString), ("a/x" : stdgo.GoString), ("a/x/1" : stdgo.GoString), ("b" : stdgo.GoString), ("b/y" : stdgo.GoString), ("b/y/2" : stdgo.GoString), ("c" : stdgo.GoString), ("c/z" : stdgo.GoString), ("c/z/3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _readonly = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _inReadonly = function(_d:stdgo.GoString):Bool {
                for (__32 => _ro in _readonly) {
                    if (_d == (_ro)) {
                        return true;
                    };
                    var __tmp__ = stdgo._internal.path.filepath.Filepath.split(_d?.__copy__()), _dd:stdgo.GoString = __tmp__._0, __33:stdgo.GoString = __tmp__._1;
                    if (stdgo._internal.path.filepath.Filepath.clean(_dd?.__copy__()) == (_ro)) {
                        return true;
                    };
                };
                return false;
            };
            for (__32 => _dir in _dirs) {
                {
                    var _err = mkdir(stdgo._internal.path.filepath.Filepath.join(_tempDir?.__copy__(), _dir?.__copy__())?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            };
            for (__41 => _dir in _readonly) {
                var _d = stdgo._internal.path.filepath.Filepath.join(_tempDir?.__copy__(), _dir?.__copy__())?.__copy__();
                {
                    var _err = chmod(_d?.__copy__(), (365u32 : stdgo._internal.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _a0 = _d;
                    var _a1 = (511u32 : stdgo._internal.io.fs.Fs.FileMode);
                    __deferstack__.unshift(() -> chmod(_a0?.__copy__(), _a1));
                };
            };
            var _err = removeAll(_tempDir?.__copy__());
            if (_err == null) {
                _t.fatal(stdgo.Go.toInterface(("RemoveAll succeeded unexpectedly" : stdgo.GoString)));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<PathError>)) : stdgo.Ref<PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
                }, _pathErr = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    var _want = stdgo._internal.path.filepath.Filepath.join(_tempDir?.__copy__(), ("b" : stdgo.GoString), ("y" : stdgo.GoString))?.__copy__();
                    if (_pathErr.path != (_want)) {
                        _t.errorf(("RemoveAll(%q): err.Path=%q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tempDir), stdgo.Go.toInterface(_pathErr.path), stdgo.Go.toInterface(_want));
                    };
                } else {
                    _t.errorf(("RemoveAll(%q): error has type %T, want *fs.PathError" : stdgo.GoString), stdgo.Go.toInterface(_tempDir), stdgo.Go.toInterface(_err));
                };
            };
            for (__74 => _dir in _dirs) {
                var __tmp__ = stat(stdgo._internal.path.filepath.Filepath.join(_tempDir?.__copy__(), _dir?.__copy__())?.__copy__()), __75:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_inReadonly(_dir?.__copy__())) {
                    if (_err != null) {
                        _t.errorf(("file %q was deleted but should still exist" : stdgo.GoString), stdgo.Go.toInterface(_dir));
                    };
                } else {
                    if (_err == null) {
                        _t.errorf(("file %q still exists but should have been deleted" : stdgo.GoString), stdgo.Go.toInterface(_dir));
                    };
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
function testRemoveUnreadableDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("js" : stdgo.GoString))) {
                _t.skipf(("skipping test on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
            };
        };
        if (getuid() == ((0 : stdgo.GoInt))) {
            _t.skip(stdgo.Go.toInterface(("skipping test when running as root" : stdgo.GoString)));
        };
        _t.parallel();
        var _tempDir = _t.tempDir()?.__copy__();
        var _target = stdgo._internal.path.filepath.Filepath.join(_tempDir?.__copy__(), ("d0" : stdgo.GoString), ("d1" : stdgo.GoString), ("d2" : stdgo.GoString))?.__copy__();
        {
            var _err = mkdirAll(_target?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = chmod(_target?.__copy__(), (192u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err = removeAll(stdgo._internal.path.filepath.Filepath.join(_tempDir?.__copy__(), ("d0" : stdgo.GoString))?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
    }
function testRemoveAllWithMoreErrorThanReqSize(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (stdgo._internal.testing.Testing.short()) {
                _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
            };
            _t.parallel();
            var _tmpDir = _t.tempDir()?.__copy__();
            var _path = stdgo._internal.path.filepath.Filepath.join(_tmpDir?.__copy__(), ("_TestRemoveAllWithMoreErrorThanReqSize_" : stdgo.GoString))?.__copy__();
            {
                var _err = mkdirAll(_path?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatalf(("MkdirAll %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err));
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1025 : stdgo.GoInt) : Bool), _i++, {
                    var _fpath = stdgo._internal.path.filepath.Filepath.join(_path?.__copy__(), stdgo._internal.fmt.Fmt.sprintf(("file%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__())?.__copy__();
                    var __tmp__ = create(_fpath?.__copy__()), _fd:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.fatalf(("create %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_fpath), stdgo.Go.toInterface(_err));
                    };
                    _fd.close();
                });
            };
            {
                var _err = chmod(_path?.__copy__(), (365u32 : stdgo._internal.io.fs.Fs.FileMode));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                var _a0 = _path;
                var _a1 = (493u32 : stdgo._internal.io.fs.Fs.FileMode);
                __deferstack__.unshift(() -> chmod(_a0?.__copy__(), _a1));
            };
            var _err = removeAll(_path?.__copy__());
            if (getuid() == ((0 : stdgo.GoInt))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (_err == null) {
                if (false) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                _t.fatal(stdgo.Go.toInterface(("RemoveAll(<read-only directory>) = nil; want error" : stdgo.GoString)));
            };
            var __tmp__ = open(_path?.__copy__()), _dir:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            __deferstack__.unshift(() -> _dir.close());
            var __tmp__ = _dir.readdirnames((1025 : stdgo.GoInt)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, __64:stdgo.Error = __tmp__._1;
            if (((_names.length) < (1025 : stdgo.GoInt) : Bool)) {
                _t.fatalf(("RemoveAll(<read-only directory>) unexpectedly removed %d read-only files from that directory" : stdgo.GoString), stdgo.Go.toInterface(((1025 : stdgo.GoInt) - (_names.length) : stdgo.GoInt)));
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
function testRemoveAllNoFcntl(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (stdgo._internal.testing.Testing.short()) {
            _t.skip(stdgo.Go.toInterface(("skipping in short mode" : stdgo.GoString)));
        };
        {};
        {
            var _dir = getenv(("GO_TEST_REMOVE_ALL_NO_FCNTL" : stdgo.GoString))?.__copy__();
            if (_dir != (stdgo.Go.str())) {
                {
                    var _err = removeAll(_dir?.__copy__());
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                return;
            };
        };
        if (true) {
            _t.skipf(("skipping test on %s" : stdgo.GoString), stdgo.Go.toInterface(("js" : stdgo.GoString)));
        };
        {
            var __tmp__ = stat(("/bin/strace" : stdgo.GoString)), __24:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.skipf(("skipping test because /bin/strace not found: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var __tmp__ = executable(), _me:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.skipf(("skipping because Executable failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _tmpdir = _t.tempDir()?.__copy__();
        var _subdir = stdgo._internal.path.filepath.Filepath.join(_tmpdir?.__copy__(), ("subdir" : stdgo.GoString))?.__copy__();
        {
            var _err = mkdir(_subdir?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                var _subsubdir = stdgo._internal.path.filepath.Filepath.join(_subdir?.__copy__(), stdgo._internal.strconv.Strconv.itoa(_i)?.__copy__())?.__copy__();
                {
                    var _err = mkdir(stdgo._internal.path.filepath.Filepath.join(_subdir?.__copy__(), stdgo._internal.strconv.Strconv.itoa(_i)?.__copy__())?.__copy__(), (493u32 : stdgo._internal.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _err = writeFile(stdgo._internal.path.filepath.Filepath.join(_subsubdir?.__copy__(), ("file" : stdgo.GoString))?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>), (420u32 : stdgo._internal.io.fs.Fs.FileMode));
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
        var _cmd = stdgo._internal.internal.testenv.Testenv.command(stdgo.Go.asInterface(_t), ("/bin/strace" : stdgo.GoString), ("-f" : stdgo.GoString), ("-e" : stdgo.GoString), ("fcntl" : stdgo.GoString), _me?.__copy__(), ("-test.run=TestRemoveAllNoFcntl" : stdgo.GoString));
        _cmd = stdgo._internal.internal.testenv.Testenv.cleanCmdEnv(_cmd);
        _cmd.env = (_cmd.env.__append__((("GO_TEST_REMOVE_ALL_NO_FCNTL=" : stdgo.GoString) + _subdir?.__copy__() : stdgo.GoString)?.__copy__()));
        var __tmp__ = _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_out.length) > (0 : stdgo.GoInt) : Bool)) {
            _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _got = stdgo._internal.bytes.Bytes.count(_out, (("fcntl" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            if ((_got >= (100 : stdgo.GoInt) : Bool)) {
                _t.errorf(("found %d fcntl calls, want < 100" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
    }
function _testStatAndLstat(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString, _isLink:Bool, _statCheck:(stdgo.Ref<stdgo._internal.testing.Testing.T_>, stdgo.GoString, stdgo._internal.io.fs.Fs.FileInfo) -> Void, _lstatCheck:(stdgo.Ref<stdgo._internal.testing.Testing.T_>, stdgo.GoString, stdgo._internal.io.fs.Fs.FileInfo) -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.stat(_path?.__copy__()), _sfi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                return;
            };
            _statCheck(_t, _path?.__copy__(), _sfi);
            var __tmp__ = stdgo._internal.os.Os.lstat(_path?.__copy__()), _lsfi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                return;
            };
            _lstatCheck(_t, _path?.__copy__(), _lsfi);
            if (_isLink) {
                if (stdgo._internal.os.Os.sameFile(_sfi, _lsfi)) {
                    _t.errorf(("stat and lstat of %q should not be the same" : stdgo.GoString), stdgo.Go.toInterface(_path));
                };
            } else {
                if (!stdgo._internal.os.Os.sameFile(_sfi, _lsfi)) {
                    _t.errorf(("stat and lstat of %q should be the same" : stdgo.GoString), stdgo.Go.toInterface(_path));
                };
            };
            var __tmp__ = stdgo._internal.os.Os.open(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                return;
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _sfi2:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _statCheck(_t, _path?.__copy__(), _sfi2);
            if (!stdgo._internal.os.Os.sameFile(_sfi, _sfi2)) {
                _t.errorf(("stat of open %q file and stat of %q should be the same" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_path));
            };
            if (_isLink) {
                if (stdgo._internal.os.Os.sameFile(_sfi2, _lsfi)) {
                    _t.errorf(("stat of opened %q file and lstat of %q should not be the same" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_path));
                };
            } else {
                if (!stdgo._internal.os.Os.sameFile(_sfi2, _lsfi)) {
                    _t.errorf(("stat of opened %q file and lstat of %q should be the same" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_path));
                };
            };
            if ((((_path.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.os.Os.isPathSeparator(_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _parentdir = stdgo._internal.path.filepath.Filepath.dir(_path?.__copy__())?.__copy__();
            var __tmp__ = stdgo._internal.os.Os.open(_parentdir?.__copy__()), _parent:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            __deferstack__.unshift(() -> _parent.close());
            var __tmp__ = _parent.readdir((-1 : stdgo.GoInt)), _fis:stdgo.Slice<stdgo._internal.io.fs.Fs.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var _lsfi2:stdgo._internal.io.fs.Fs.FileInfo = (null : stdgo._internal.io.fs.Fs.FileInfo);
            var _base = stdgo._internal.path.filepath.Filepath.base(_path?.__copy__())?.__copy__();
            for (__88 => _fi2 in _fis) {
                if (_fi2.name() == (_base)) {
                    _lsfi2 = _fi2;
                    break;
                };
            };
            if (_lsfi2 == null) {
                _t.errorf(("failed to find %q in its parent" : stdgo.GoString), stdgo.Go.toInterface(_path));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _lstatCheck(_t, _path?.__copy__(), _lsfi2);
            if (!stdgo._internal.os.Os.sameFile(_lsfi, _lsfi2)) {
                _t.errorf(("lstat of %q file in %q directory and %q should be the same" : stdgo.GoString), stdgo.Go.toInterface(_lsfi2.name()), stdgo.Go.toInterface(_parentdir), stdgo.Go.toInterface(_path));
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
function _testIsDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString, _fi:stdgo._internal.io.fs.Fs.FileInfo):Void {
        _t.helper();
        if (!_fi.isDir()) {
            _t.errorf(("%q should be a directory" : stdgo.GoString), stdgo.Go.toInterface(_path));
        };
        if ((_fi.mode() & (134217728u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
            _t.errorf(("%q should not be a symlink" : stdgo.GoString), stdgo.Go.toInterface(_path));
        };
    }
function _testIsSymlink(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString, _fi:stdgo._internal.io.fs.Fs.FileInfo):Void {
        _t.helper();
        if (_fi.isDir()) {
            _t.errorf(("%q should not be a directory" : stdgo.GoString), stdgo.Go.toInterface(_path));
        };
        if ((_fi.mode() & (134217728u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) == ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
            _t.errorf(("%q should be a symlink" : stdgo.GoString), stdgo.Go.toInterface(_path));
        };
    }
function _testIsFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString, _fi:stdgo._internal.io.fs.Fs.FileInfo):Void {
        _t.helper();
        if (_fi.isDir()) {
            _t.errorf(("%q should not be a directory" : stdgo.GoString), stdgo.Go.toInterface(_path));
        };
        if ((_fi.mode() & (134217728u32 : stdgo._internal.io.fs.Fs.FileMode) : stdgo._internal.io.fs.Fs.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs.FileMode))) {
            _t.errorf(("%q should not be a symlink" : stdgo.GoString), stdgo.Go.toInterface(_path));
        };
    }
function _testDirStats(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString):Void {
        _testStatAndLstat(_t, _path?.__copy__(), false, _testIsDir, _testIsDir);
    }
function _testFileStats(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString):Void {
        _testStatAndLstat(_t, _path?.__copy__(), false, _testIsFile, _testIsFile);
    }
function _testSymlinkStats(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString, _isdir:Bool):Void {
        if (_isdir) {
            _testStatAndLstat(_t, _path?.__copy__(), true, _testIsDir, _testIsSymlink);
        } else {
            _testStatAndLstat(_t, _path?.__copy__(), true, _testIsFile, _testIsSymlink);
        };
    }
function _testSymlinkSameFile(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _path:stdgo.GoString, _link:stdgo.GoString):Void {
        var __tmp__ = stdgo._internal.os.Os.stat(_path?.__copy__()), _pathfi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        var __tmp__ = stdgo._internal.os.Os.stat(_link?.__copy__()), _linkfi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        if (!stdgo._internal.os.Os.sameFile(_pathfi, _linkfi)) {
            _t.errorf(("os.Stat(%q) and os.Stat(%q) are not the same file" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_link));
        };
        {
            var __tmp__ = stdgo._internal.os.Os.lstat(_link?.__copy__());
            _linkfi = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        if (stdgo._internal.os.Os.sameFile(_pathfi, _linkfi)) {
            _t.errorf(("os.Stat(%q) and os.Lstat(%q) are the same file" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_link));
        };
    }
function _testSymlinkSameFileOpen(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _link:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.open(_link?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                return;
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = _f.stat(), _fi:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            var __tmp__ = stdgo._internal.os.Os.stat(_link?.__copy__()), _fi2:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if (!stdgo._internal.os.Os.sameFile(_fi, _fi2)) {
                _t.errorf(("os.Open(%q).Stat() and os.Stat(%q) are not the same file" : stdgo.GoString), stdgo.Go.toInterface(_link), stdgo.Go.toInterface(_link));
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
function testDirAndSymlinkStats(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _tmpdir = _t.tempDir()?.__copy__();
        var _dir = stdgo._internal.path.filepath.Filepath.join(_tmpdir?.__copy__(), ("dir" : stdgo.GoString))?.__copy__();
        {
            var _err = stdgo._internal.os.Os.mkdir(_dir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _testDirStats(_t, _dir?.__copy__());
        var _dirlink = stdgo._internal.path.filepath.Filepath.join(_tmpdir?.__copy__(), ("link" : stdgo.GoString))?.__copy__();
        {
            var _err = stdgo._internal.os.Os.symlink(_dir?.__copy__(), _dirlink?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _testSymlinkStats(_t, _dirlink?.__copy__(), true);
        _testSymlinkSameFile(_t, _dir?.__copy__(), _dirlink?.__copy__());
        _testSymlinkSameFileOpen(_t, _dirlink?.__copy__());
        var _linklink = stdgo._internal.path.filepath.Filepath.join(_tmpdir?.__copy__(), ("linklink" : stdgo.GoString))?.__copy__();
        {
            var _err = stdgo._internal.os.Os.symlink(_dirlink?.__copy__(), _linklink?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _testSymlinkStats(_t, _linklink?.__copy__(), true);
        _testSymlinkSameFile(_t, _dir?.__copy__(), _linklink?.__copy__());
        _testSymlinkSameFileOpen(_t, _linklink?.__copy__());
    }
function testFileAndSymlinkStats(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _tmpdir = _t.tempDir()?.__copy__();
        var _file = stdgo._internal.path.filepath.Filepath.join(_tmpdir?.__copy__(), ("file" : stdgo.GoString))?.__copy__();
        {
            var _err = stdgo._internal.os.Os.writeFile(_file?.__copy__(), (stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>), (420u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _testFileStats(_t, _file?.__copy__());
        var _filelink = stdgo._internal.path.filepath.Filepath.join(_tmpdir?.__copy__(), ("link" : stdgo.GoString))?.__copy__();
        {
            var _err = stdgo._internal.os.Os.symlink(_file?.__copy__(), _filelink?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _testSymlinkStats(_t, _filelink?.__copy__(), false);
        _testSymlinkSameFile(_t, _file?.__copy__(), _filelink?.__copy__());
        _testSymlinkSameFileOpen(_t, _filelink?.__copy__());
        var _linklink = stdgo._internal.path.filepath.Filepath.join(_tmpdir?.__copy__(), ("linklink" : stdgo.GoString))?.__copy__();
        {
            var _err = stdgo._internal.os.Os.symlink(_filelink?.__copy__(), _linklink?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        _testSymlinkStats(_t, _linklink?.__copy__(), false);
        _testSymlinkSameFile(_t, _file?.__copy__(), _linklink?.__copy__());
        _testSymlinkSameFileOpen(_t, _linklink?.__copy__());
    }
function testSymlinkWithTrailingSlash(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveSymlink(stdgo.Go.asInterface(_t));
        _t.parallel();
        var _tmpdir = _t.tempDir()?.__copy__();
        var _dir = stdgo._internal.path.filepath.Filepath.join(_tmpdir?.__copy__(), ("dir" : stdgo.GoString))?.__copy__();
        {
            var _err = stdgo._internal.os.Os.mkdir(_dir?.__copy__(), (511u32 : stdgo._internal.io.fs.Fs.FileMode));
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _dirlink = stdgo._internal.path.filepath.Filepath.join(_tmpdir?.__copy__(), ("link" : stdgo.GoString))?.__copy__();
        {
            var _err = stdgo._internal.os.Os.symlink(_dir?.__copy__(), _dirlink?.__copy__());
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _dirlinkWithSlash = (_dirlink + ((47 : stdgo.GoInt32) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        _testDirStats(_t, _dirlinkWithSlash?.__copy__());
        var __tmp__ = stdgo._internal.os.Os.stat(_dir?.__copy__()), _fi1:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        var __tmp__ = stdgo._internal.os.Os.stat(_dirlinkWithSlash?.__copy__()), _fi2:stdgo._internal.io.fs.Fs.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        if (!stdgo._internal.os.Os.sameFile(_fi1, _fi2)) {
            _t.errorf(("os.Stat(%q) and os.Stat(%q) are not the same file" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_dirlinkWithSlash));
        };
    }
function testCreateTemp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = mkdirTemp(stdgo.Go.str()?.__copy__(), ("TestCreateTempBadDir" : stdgo.GoString)), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> removeAll(_a0?.__copy__()));
            };
            var _nonexistentDir = stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("_not_exists_" : stdgo.GoString))?.__copy__();
            var __tmp__ = createTemp(_nonexistentDir?.__copy__(), ("foo" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((((_f != null) && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) || (_err == null) : Bool)) {
                _t.errorf(("CreateTemp(%q, `foo`) = %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_nonexistentDir), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)), stdgo.Go.toInterface(_err));
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
function testCreateTempPattern(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var _tests = (new stdgo.Slice<T__struct_7>(3, 3, ...[({ _pattern : ("tempfile_test" : stdgo.GoString), _prefix : ("tempfile_test" : stdgo.GoString), _suffix : stdgo.Go.str()?.__copy__() } : T__struct_7), ({ _pattern : ("tempfile_test*" : stdgo.GoString), _prefix : ("tempfile_test" : stdgo.GoString), _suffix : stdgo.Go.str()?.__copy__() } : T__struct_7), ({ _pattern : ("tempfile_test*xyz" : stdgo.GoString), _prefix : ("tempfile_test" : stdgo.GoString), _suffix : ("xyz" : stdgo.GoString) } : T__struct_7)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _prefix : ("" : stdgo.GoString), _suffix : ("" : stdgo.GoString) } : T__struct_7)])) : stdgo.Slice<T__struct_7>);
            for (__8 => _test in _tests) {
                var __tmp__ = createTemp(stdgo.Go.str()?.__copy__(), _test._pattern?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("CreateTemp(..., %q) error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._pattern), stdgo.Go.toInterface(_err));
                    continue;
                };
                {
                    var _a0 = _f.name();
                    __deferstack__.unshift(() -> remove(_a0?.__copy__()));
                };
                var _base = stdgo._internal.path.filepath.Filepath.base(_f.name()?.__copy__())?.__copy__();
                _f.close();
                if (!((stdgo._internal.strings.Strings.hasPrefix(_base?.__copy__(), _test._prefix?.__copy__()) && stdgo._internal.strings.Strings.hasSuffix(_base?.__copy__(), _test._suffix?.__copy__()) : Bool))) {
                    _t.errorf(("CreateTemp pattern %q created bad name %q; want prefix %q & suffix %q" : stdgo.GoString), stdgo.Go.toInterface(_test._pattern), stdgo.Go.toInterface(_base), stdgo.Go.toInterface(_test._prefix), stdgo.Go.toInterface(_test._suffix));
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
function testCreateTempBadPattern(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = mkdirTemp(stdgo.Go.str()?.__copy__(), _t.name()?.__copy__()), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> removeAll(_a0?.__copy__()));
            };
            {};
            var _tests = (new stdgo.Slice<T__struct_8>(7, 7, ...[({ _pattern : ("ioutil*test" : stdgo.GoString), _wantErr : false } : T__struct_8), ({ _pattern : ("tempfile_test*foo" : stdgo.GoString), _wantErr : false } : T__struct_8), ({ _pattern : ("tempfile_test/foo" : stdgo.GoString), _wantErr : true } : T__struct_8), ({ _pattern : ("tempfile_test*/foo" : stdgo.GoString), _wantErr : true } : T__struct_8), ({ _pattern : ("tempfile_test/*foo" : stdgo.GoString), _wantErr : true } : T__struct_8), ({ _pattern : ("/tempfile_test/*foo" : stdgo.GoString), _wantErr : true } : T__struct_8), ({ _pattern : ("tempfile_test*foo/" : stdgo.GoString), _wantErr : true } : T__struct_8)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _wantErr : false } : T__struct_8)])) : stdgo.Slice<T__struct_8>);
            for (__24 => _tt in _tests) {
                _t.run(_tt._pattern?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        var __tmp__ = createTemp(_tmpDir?.__copy__(), _tt._pattern?.__copy__()), _tmpfile:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_tmpfile != null && ((_tmpfile : Dynamic).__nil__ == null || !(_tmpfile : Dynamic).__nil__)) {
                            __deferstack__.unshift(() -> _tmpfile.close());
                        };
                        if (_tt._wantErr) {
                            if (_err == null) {
                                _t.errorf(("CreateTemp(..., %#q) succeeded, expected error" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern));
                            };
                            if (!stdgo._internal.errors.Errors.is_(_err, errPatternHasSeparator)) {
                                _t.errorf(("CreateTemp(..., %#q): %v, expected ErrPatternHasSeparator" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_err));
                            };
                        } else if (_err != null) {
                            _t.errorf(("CreateTemp(..., %#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_err));
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
function testMkdirTemp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _t.parallel();
        var __tmp__ = mkdirTemp(("/_not_exists_" : stdgo.GoString), ("foo" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_name != stdgo.Go.str()) || (_err == null) : Bool)) {
            _t.errorf(("MkdirTemp(`/_not_exists_`, `foo`) = %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
        };
        var _tests = (new stdgo.Slice<T__struct_9>(3, 3, ...[({ _pattern : ("tempfile_test" : stdgo.GoString), _wantPrefix : ("tempfile_test" : stdgo.GoString), _wantSuffix : stdgo.Go.str()?.__copy__() } : T__struct_9), ({ _pattern : ("tempfile_test*" : stdgo.GoString), _wantPrefix : ("tempfile_test" : stdgo.GoString), _wantSuffix : stdgo.Go.str()?.__copy__() } : T__struct_9), ({ _pattern : ("tempfile_test*xyz" : stdgo.GoString), _wantPrefix : ("tempfile_test" : stdgo.GoString), _wantSuffix : ("xyz" : stdgo.GoString) } : T__struct_9)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _wantPrefix : ("" : stdgo.GoString), _wantSuffix : ("" : stdgo.GoString) } : T__struct_9)])) : stdgo.Slice<T__struct_9>);
        var _dir = stdgo._internal.path.filepath.Filepath.clean(tempDir()?.__copy__())?.__copy__();
        var _runTestMkdirTemp = function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _pattern:stdgo.GoString, _wantRePat:stdgo.GoString):Void {
            var __deferstack__:Array<Void -> Void> = [];
            try {
                var __tmp__ = mkdirTemp(_dir?.__copy__(), _pattern?.__copy__()), _name:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_name == stdgo.Go.str()) || (_err != null) : Bool)) {
                    _t.fatalf(("MkdirTemp(dir, `tempfile_test`) = %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err));
                };
                {
                    var _a0 = _name;
                    __deferstack__.unshift(() -> remove(_a0?.__copy__()));
                };
                var _re = stdgo._internal.regexp.Regexp.mustCompile(_wantRePat?.__copy__());
                if (!_re.matchString(_name?.__copy__())) {
                    _t.errorf(("MkdirTemp(%q, %q) created bad name\n\t%q\ndid not match pattern\n\t%q" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_wantRePat));
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
        for (__16 => _tt in _tests) {
            _t.run(_tt._pattern?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                var _wantRePat = ((((("^" : stdgo.GoString) + stdgo._internal.regexp.Regexp.quoteMeta(stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), _tt._wantPrefix?.__copy__())?.__copy__())?.__copy__() : stdgo.GoString) + ("[0-9]+" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.regexp.Regexp.quoteMeta(_tt._wantSuffix?.__copy__())?.__copy__() : stdgo.GoString) + ("$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                _runTestMkdirTemp(_t, _tt._pattern?.__copy__(), _wantRePat?.__copy__());
            });
        };
        _t.run(("*xyz" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
            var _wantRePat = (((("^" : stdgo.GoString) + stdgo._internal.regexp.Regexp.quoteMeta(stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__())?.__copy__())?.__copy__() : stdgo.GoString) + stdgo._internal.regexp.Regexp.quoteMeta(((47 : stdgo.GoInt32) : stdgo.GoString))?.__copy__() : stdgo.GoString) + ("[0-9]+xyz$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            _runTestMkdirTemp(_t, ("*xyz" : stdgo.GoString), _wantRePat?.__copy__());
        });
    }
function testMkdirTempBadDir(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = mkdirTemp(stdgo.Go.str()?.__copy__(), ("MkdirTempBadDir" : stdgo.GoString)), _dir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _dir;
                __deferstack__.unshift(() -> removeAll(_a0?.__copy__()));
            };
            var _badDir = stdgo._internal.path.filepath.Filepath.join(_dir?.__copy__(), ("not-exist" : stdgo.GoString))?.__copy__();
            {
                var __tmp__ = mkdirTemp(_badDir?.__copy__(), ("foo" : stdgo.GoString));
                _err = __tmp__._1;
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>), _1 : false };
                }, _pe = __tmp__._0, _ok = __tmp__._1;
                if (((!_ok || !isNotExist(_err) : Bool) || (_pe.path != _badDir) : Bool)) {
                    _t.errorf(("TempDir error = %#v; want PathError for path %q satisfying IsNotExist" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_badDir));
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
function testMkdirTempBadPattern(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.parallel();
            var __tmp__ = mkdirTemp(stdgo.Go.str()?.__copy__(), _t.name()?.__copy__()), _tmpDir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            {
                var _a0 = _tmpDir;
                __deferstack__.unshift(() -> removeAll(_a0?.__copy__()));
            };
            {};
            var _tests = (new stdgo.Slice<T__struct_8>(7, 7, ...[({ _pattern : ("ioutil*test" : stdgo.GoString), _wantErr : false } : T__struct_8), ({ _pattern : ("tempfile_test*foo" : stdgo.GoString), _wantErr : false } : T__struct_8), ({ _pattern : ("tempfile_test/foo" : stdgo.GoString), _wantErr : true } : T__struct_8), ({ _pattern : ("tempfile_test*/foo" : stdgo.GoString), _wantErr : true } : T__struct_8), ({ _pattern : ("tempfile_test/*foo" : stdgo.GoString), _wantErr : true } : T__struct_8), ({ _pattern : ("/tempfile_test/*foo" : stdgo.GoString), _wantErr : true } : T__struct_8), ({ _pattern : ("tempfile_test*foo/" : stdgo.GoString), _wantErr : true } : T__struct_8)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _wantErr : false } : T__struct_8)])) : stdgo.Slice<T__struct_8>);
            for (__24 => _tt in _tests) {
                _t.run(_tt._pattern?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
                    var __tmp__ = mkdirTemp(_tmpDir?.__copy__(), _tt._pattern?.__copy__()), __33:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_tt._wantErr) {
                        if (_err == null) {
                            _t.errorf(("MkdirTemp(..., %#q) succeeded, expected error" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern));
                        };
                        if (!stdgo._internal.errors.Errors.is_(_err, errPatternHasSeparator)) {
                            _t.errorf(("MkdirTemp(..., %#q): %v, expected ErrPatternHasSeparator" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_err));
                        };
                    } else if (_err != null) {
                        _t.errorf(("MkdirTemp(..., %#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._pattern), stdgo.Go.toInterface(_err));
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
@:keep var _ = {
        try {
            _isExistTests = (_isExistTests.__append__(({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)), _is : true, _isnot : false } : stdgo._internal.os_test.Os_test.T_isExistTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((39 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)), _is : true, _isnot : false } : stdgo._internal.os_test.Os_test.T_isExistTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>)), _is : true, _isnot : false } : stdgo._internal.os_test.Os_test.T_isExistTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((39 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>)), _is : true, _isnot : false } : stdgo._internal.os_test.Os_test.T_isExistTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.os.Os.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os.SyscallError>)), _is : true, _isnot : false } : stdgo._internal.os_test.Os_test.T_isExistTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((39 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.os.Os.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os.SyscallError>)), _is : true, _isnot : false } : stdgo._internal.os_test.Os_test.T_isExistTest)));
            _isPermissionTests = (_isPermissionTests.__append__(({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((13 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)), _want : true } : stdgo._internal.os_test.Os_test.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((1 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)), _want : true } : stdgo._internal.os_test.Os_test.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.io.fs.Fs.PathError)) : stdgo.Ref<stdgo._internal.io.fs.Fs.PathError>)), _want : false } : stdgo._internal.os_test.Os_test.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((13 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>)), _want : true } : stdgo._internal.os_test.Os_test.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((1 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>)), _want : true } : stdgo._internal.os_test.Os_test.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.os.Os.LinkError)) : stdgo.Ref<stdgo._internal.os.Os.LinkError>)), _want : false } : stdgo._internal.os_test.Os_test.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((13 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.os.Os.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os.SyscallError>)), _want : true } : stdgo._internal.os_test.Os_test.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((1 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.os.Os.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os.SyscallError>)), _want : true } : stdgo._internal.os_test.Os_test.T_isPermissionTest), ({ _err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : stdgo.Go.asInterface((17 : stdgo._internal.syscall.Syscall.Errno)) } : stdgo._internal.os.Os.SyscallError)) : stdgo.Ref<stdgo._internal.os.Os.SyscallError>)), _want : false } : stdgo._internal.os_test.Os_test.T_isPermissionTest)));
            {
                var _e = stdgo._internal.os.Os.getenv(("OSTEST_OUTPUT_EXECPATH" : stdgo.GoString))?.__copy__();
                if (_e != (stdgo.Go.str())) {
                    var _dir = ("/" : stdgo.GoString);
                    if (false) {
                        var __tmp__ = stdgo._internal.os.Os.getwd(), _cwd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            throw stdgo.Go.toInterface(_err);
                        };
                        _dir = stdgo._internal.path.filepath.Filepath.volumeName(_cwd?.__copy__())?.__copy__();
                    };
                    stdgo._internal.os.Os.chdir(_dir?.__copy__());
                    {
                        var __tmp__ = stdgo._internal.os.Os.executable(), _ep:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            stdgo._internal.fmt.Fmt.fprint(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), stdgo.Go.toInterface(("ERROR: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
                        } else {
                            stdgo._internal.fmt.Fmt.fprint(stdgo.Go.asInterface(stdgo._internal.os.Os.stderr), stdgo.Go.toInterface(_ep));
                        };
                    };
                    Sys.exit((0 : stdgo.GoInt));
                };
            };
            _isReadonlyError = function(_err:stdgo.Error):Bool {
                return stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo.Go.asInterface((30 : stdgo._internal.syscall.Syscall.Errno))));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_myErrorIs_asInterface {
    @:keep
    public dynamic function is_(_target:stdgo.Error):Bool return __self__.value.is_(_target);
    @:embedded
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_myErrorIs>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.os_test.Os_test.T_myErrorIs_asInterface) class T_myErrorIs_static_extension {
    @:keep
    static public function is_( _e:T_myErrorIs, _target:stdgo.Error):Bool {
        @:recv var _e:T_myErrorIs = _e?.__copy__();
        return stdgo.Go.toInterface(_target) == (stdgo.Go.toInterface(_e._error));
    }
    @:embedded
    public static function error( __self__:T_myErrorIs):stdgo.GoString return __self__.error();
}
