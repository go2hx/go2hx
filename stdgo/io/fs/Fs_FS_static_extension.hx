package stdgo.io.fs;
class FS_static_extension {
    static public function open(t:stdgo._internal.io.fs.Fs_FS.FS, _name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_FS_static_extension.FS_static_extension.open(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
