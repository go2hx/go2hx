package stdgo.testing.fstest;
class T_shuffledFS_static_extension {
    static public function open(_fsys:T_shuffledFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_T_shuffledFS_static_extension.T_shuffledFS_static_extension.open(_fsys, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
