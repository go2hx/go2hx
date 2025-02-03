package stdgo.io.fs;
class ReadFileFS_static_extension {
    static public function readFile(t:stdgo._internal.io.fs.Fs_ReadFileFS.ReadFileFS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_ReadFileFS_static_extension.ReadFileFS_static_extension.readFile(t, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
