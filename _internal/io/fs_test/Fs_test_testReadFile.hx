package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
function testReadFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.io.fs.Fs_readFile.readFile(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_T_readFileOnly.T_readFileOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys)) : _internal.io.fs_test.Fs_test_T_readFileOnly.T_readFileOnly)), ("hello.txt" : stdgo.GoString)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((((_data : stdgo.GoString) != ("hello, world" : stdgo.GoString)) || (_err != null) : Bool)) {
            _t.fatalf(("ReadFile(readFileOnly, \"hello.txt\") = %q, %v, want %q, nil" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("hello, world" : stdgo.GoString)));
        };
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_readFile.readFile(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_T_openOnly.T_openOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys)) : _internal.io.fs_test.Fs_test_T_openOnly.T_openOnly)), ("hello.txt" : stdgo.GoString));
            _data = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((((_data : stdgo.GoString) != ("hello, world" : stdgo.GoString)) || (_err != null) : Bool)) {
            _t.fatalf(("ReadFile(openOnly, \"hello.txt\") = %q, %v, want %q, nil" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("hello, world" : stdgo.GoString)));
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_sub.sub(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testFsys._testFsys), ("." : stdgo.GoString)), _sub:stdgo._internal.io.fs.Fs_FS.FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_readFile.readFile(_sub, ("hello.txt" : stdgo.GoString));
            _data = __tmp__._0;
            _err = __tmp__._1;
        };
        if ((((_data : stdgo.GoString) != ("hello, world" : stdgo.GoString)) || (_err != null) : Bool)) {
            _t.fatalf(("ReadFile(sub(.), \"hello.txt\") = %q, %v, want %q, nil" : stdgo.GoString), stdgo.Go.toInterface(_data), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(("hello, world" : stdgo.GoString)));
        };
    }
