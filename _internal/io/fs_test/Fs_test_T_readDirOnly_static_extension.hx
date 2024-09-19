package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
@:keep @:allow(_internal.io.fs_test.Fs_test.T_readDirOnly_asInterface) class T_readDirOnly_static_extension {
    @:keep
    static public function open( _:_internal.io.fs_test.Fs_test_T_readDirOnly.T_readDirOnly, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } {
        @:recv var _:_internal.io.fs_test.Fs_test_T_readDirOnly.T_readDirOnly = _?.__copy__();
        return { _0 : (null : stdgo._internal.io.fs.Fs_File.File), _1 : stdgo._internal.io.fs.Fs_errNotExist.errNotExist };
    }
    @:embedded
    public static function readDir( __self__:_internal.io.fs_test.Fs_test_T_readDirOnly.T_readDirOnly, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return __self__.readDir(_name);
}
