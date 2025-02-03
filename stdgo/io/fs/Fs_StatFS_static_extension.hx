package stdgo.io.fs;
class StatFS_static_extension {
    static public function stat(t:stdgo._internal.io.fs.Fs_StatFS.StatFS, _name:String):stdgo.Tuple<FileInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_StatFS_static_extension.StatFS_static_extension.stat(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
