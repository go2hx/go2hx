package stdgo._internal.testing.fstest;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_fsOnly_asInterface) class T_fsOnly_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function open( __self__:stdgo._internal.testing.fstest.Fstest_T_fsOnly.T_fsOnly, _0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return @:_5 __self__.open(_0);
}
