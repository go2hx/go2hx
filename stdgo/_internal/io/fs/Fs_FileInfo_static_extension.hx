package stdgo._internal.io.fs;
@:keep class FileInfo_static_extension {
    static public function sys(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo.AnyInterface return t.sys();
    static public function isDir(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):Bool return t.isDir();
    static public function modTime(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo._internal.time.Time_Time.Time return t.modTime();
    static public function mode(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode return t.mode();
    static public function size(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo.GoInt64 return t.size();
    static public function name(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo.GoString return t.name();
}
