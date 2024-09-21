package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
var _sysdir : stdgo.Ref<_internal.os_test.Os_test_T_sysDir.T_sysDir> = {
        var a = function():stdgo.Ref<_internal.os_test.Os_test_T_sysDir.T_sysDir> {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = ("js" : stdgo.GoString);
                        if (__value__ == (("android" : stdgo.GoString))) {
                            return (stdgo.Go.setRef((new _internal.os_test.Os_test_T_sysDir.T_sysDir(("/system/lib" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("libmedia.so" : stdgo.GoString), ("libpowermanager.so" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.os_test.Os_test_T_sysDir.T_sysDir)) : stdgo.Ref<_internal.os_test.Os_test_T_sysDir.T_sysDir>);
                            break;
                        } else if (__value__ == (("ios" : stdgo.GoString))) {
                            var __tmp__ = stdgo._internal.syscall.Syscall_getwd.getwd(), _wd:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _wd = _err.error()?.__copy__();
                            };
                            var _sd = (stdgo.Go.setRef((new _internal.os_test.Os_test_T_sysDir.T_sysDir(stdgo._internal.path.filepath.Filepath_join.join(_wd?.__copy__(), (".." : stdgo.GoString), (".." : stdgo.GoString))?.__copy__(), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("ResourceRules.plist" : stdgo.GoString), ("Info.plist" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.os_test.Os_test_T_sysDir.T_sysDir)) : stdgo.Ref<_internal.os_test.Os_test_T_sysDir.T_sysDir>);
                            var _found = (true : Bool);
                            for (__0 => _f in _sd._files) {
                                var _path = (stdgo._internal.path.filepath.Filepath_join.join(_sd._name?.__copy__(), _f?.__copy__())?.__copy__() : stdgo.GoString);
                                {
                                    var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), __1:stdgo._internal.io.fs.Fs_FileInfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                            return (stdgo.Go.setRef((new _internal.os_test.Os_test_T_sysDir.T_sysDir((stdgo._internal.os.Os_getenv.getenv(("SystemRoot" : stdgo.GoString)) + ("\\system32\\drivers\\etc" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("networks" : stdgo.GoString), ("protocol" : stdgo.GoString), ("services" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.os_test.Os_test_T_sysDir.T_sysDir)) : stdgo.Ref<_internal.os_test.Os_test_T_sysDir.T_sysDir>);
                            break;
                        } else if (__value__ == (("plan9" : stdgo.GoString))) {
                            return (stdgo.Go.setRef((new _internal.os_test.Os_test_T_sysDir.T_sysDir(("/lib/ndb" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("common" : stdgo.GoString), ("local" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.os_test.Os_test_T_sysDir.T_sysDir)) : stdgo.Ref<_internal.os_test.Os_test_T_sysDir.T_sysDir>);
                            break;
                        } else if (__value__ == (("wasip1" : stdgo.GoString))) {
                            return (stdgo.Go.setRef((new _internal.os_test.Os_test_T_sysDir.T_sysDir(stdgo._internal.runtime.Runtime_goroot.goroot()?.__copy__(), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("go.env" : stdgo.GoString), ("LICENSE" : stdgo.GoString), ("CONTRIBUTING.md" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.os_test.Os_test_T_sysDir.T_sysDir)) : stdgo.Ref<_internal.os_test.Os_test_T_sysDir.T_sysDir>);
                            break;
                        };
                    };
                    break;
                };
            };
            return (stdgo.Go.setRef((new _internal.os_test.Os_test_T_sysDir.T_sysDir(("/etc" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("group" : stdgo.GoString), ("hosts" : stdgo.GoString), ("passwd" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.os_test.Os_test_T_sysDir.T_sysDir)) : stdgo.Ref<_internal.os_test.Os_test_T_sysDir.T_sysDir>);
        };
        a();
    };
