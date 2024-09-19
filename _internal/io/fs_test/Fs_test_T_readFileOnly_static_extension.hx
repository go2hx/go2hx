package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
@:keep @:allow(_internal.io.fs_test.Fs_test.T_readFileOnly_asInterface) class T_readFileOnly_static_extension {
    @:keep
    static public function open( _:_internal.io.fs_test.Fs_test_T_readFileOnly.T_readFileOnly, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } {
        @:recv var _:_internal.io.fs_test.Fs_test_T_readFileOnly.T_readFileOnly = _?.__copy__();
        return { _0 : (null : stdgo._internal.io.fs.Fs_File.File), _1 : stdgo._internal.io.fs.Fs_errNotExist.errNotExist };
    }
    @:embedded
    public static function readFile( __self__:_internal.io.fs_test.Fs_test_T_readFileOnly.T_readFileOnly, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readFile(_name);
}
