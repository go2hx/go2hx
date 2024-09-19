package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
@:keep @:allow(_internal.io.fs_test.Fs_test.T_formatTest_asInterface) class T_formatTest_static_extension {
    @:keep
    static public function info( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest>):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest> = _fs;
        return { _0 : stdgo.Go.asInterface(_fs), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function type( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest>):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest> = _fs;
        return _fs._mode.type();
    }
    @:keep
    static public function sys( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest>):stdgo.AnyInterface {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest> = _fs;
        return (null : stdgo.AnyInterface);
    }
    @:keep
    static public function isDir( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest>):Bool {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest> = _fs;
        return _fs._isDir;
    }
    @:keep
    static public function modTime( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest>):stdgo._internal.time.Time_Time.Time {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest> = _fs;
        return _fs._modTime?.__copy__();
    }
    @:keep
    static public function mode( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest>):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest> = _fs;
        return _fs._mode;
    }
    @:keep
    static public function size( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest>):stdgo.GoInt64 {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest> = _fs;
        return _fs._size;
    }
    @:keep
    static public function name( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest>):stdgo.GoString {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_T_formatTest.T_formatTest> = _fs;
        return _fs._name?.__copy__();
    }
}
