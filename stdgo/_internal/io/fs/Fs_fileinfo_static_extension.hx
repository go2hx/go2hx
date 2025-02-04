package stdgo._internal.io.fs;
@:keep class FileInfo_static_extension {
    @:interfacetypeffun
    static public function sys(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo.AnyInterface return t.sys();
    @:interfacetypeffun
    static public function isDir(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):Bool return t.isDir();
    @:interfacetypeffun
    static public function modTime(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo._internal.time.Time_time.Time return t.modTime();
    @:interfacetypeffun
    static public function mode(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo._internal.io.fs.Fs_filemode.FileMode return t.mode();
    @:interfacetypeffun
    static public function size(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo.GoInt64 return t.size();
    @:interfacetypeffun
    static public function name(t:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo.GoString return t.name();
}
