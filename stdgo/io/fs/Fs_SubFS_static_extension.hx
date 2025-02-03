package stdgo.io.fs;
class SubFS_static_extension {
    static public function sub(t:stdgo._internal.io.fs.Fs_SubFS.SubFS, _dir:String):stdgo.Tuple<FS, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_SubFS_static_extension.SubFS_static_extension.sub(t, _dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
