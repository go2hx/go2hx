package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:keep class FileInfo_static_extension {
    @:interfacetypeffun
    static public function sys(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo.AnyInterface return t.sys();
    @:interfacetypeffun
    static public function isDir(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):Bool return t.isDir();
    @:interfacetypeffun
    static public function modTime(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo._internal.time.Time_Time.Time return t.modTime();
    @:interfacetypeffun
    static public function mode(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo._internal.io.fs.Fs_FileMode.FileMode return t.mode();
    @:interfacetypeffun
    static public function size(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo.GoInt64 return t.size();
    @:interfacetypeffun
    static public function name(t:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo.GoString return t.name();
}
