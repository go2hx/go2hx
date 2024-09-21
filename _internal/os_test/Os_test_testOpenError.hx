package _internal.os_test;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
import stdgo._internal.os.Os;
function testOpenError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        for (__8 => _tt in _internal.os_test.Os_test__openErrorTests._openErrorTests) {
            var __tmp__ = stdgo._internal.os.Os_openFile.openFile(_tt._path?.__copy__(), _tt._mode, (0u32 : stdgo._internal.io.fs.Fs_FileMode.FileMode)), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(("Open(%q, %d) succeeded" : stdgo.GoString), stdgo.Go.toInterface(_tt._path), stdgo.Go.toInterface(_tt._mode));
                _f.close();
                continue;
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>)) : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_PathError.PathError>), _1 : false };
            }, _perr = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _t.errorf(("Open(%q, %d) returns error of %T type; want *PathError" : stdgo.GoString), stdgo.Go.toInterface(_tt._path), stdgo.Go.toInterface(_tt._mode), stdgo.Go.toInterface(_err));
            };
            if (stdgo.Go.toInterface(_perr.err) != (stdgo.Go.toInterface(_tt._error))) {
                if (false) {
                    var _syscallErrStr = (_perr.err.error()?.__copy__() : stdgo.GoString);
                    var _expectedErrStr = (stdgo._internal.strings.Strings_replace.replace(_tt._error.error()?.__copy__(), ("file " : stdgo.GoString), stdgo.Go.str()?.__copy__(), (1 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                    if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_syscallErrStr?.__copy__(), _expectedErrStr?.__copy__())) {
                        if (((stdgo.Go.toInterface(_tt._error) == stdgo.Go.toInterface(stdgo.Go.asInterface((21 : stdgo._internal.syscall.Syscall_Errno.Errno)))) && stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_syscallErrStr?.__copy__(), (13 : stdgo._internal.syscall.Syscall_Errno.Errno).error()?.__copy__()) : Bool)) {
                            continue;
                        };
                        _t.errorf(("Open(%q, %d) = _, %q; want suffix %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._path), stdgo.Go.toInterface(_tt._mode), stdgo.Go.toInterface(_syscallErrStr), stdgo.Go.toInterface(_expectedErrStr));
                    };
                    continue;
                };
                if (false) {
                    if (((stdgo.Go.toInterface(_tt._error) == stdgo.Go.toInterface(stdgo.Go.asInterface((21 : stdgo._internal.syscall.Syscall_Errno.Errno)))) && (stdgo.Go.toInterface(_perr.err) == stdgo.Go.toInterface(stdgo.Go.asInterface((13 : stdgo._internal.syscall.Syscall_Errno.Errno)))) : Bool)) {
                        continue;
                    };
                };
                _t.errorf(("Open(%q, %d) = _, %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._path), stdgo.Go.toInterface(_tt._mode), stdgo.Go.toInterface(_perr.err.error()), stdgo.Go.toInterface(_tt._error.error()));
            };
        };
    }
