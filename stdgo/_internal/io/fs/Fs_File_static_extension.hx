package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:keep class File_static_extension {
    @:interfacetypeffun
    static public function close(t:stdgo._internal.io.fs.Fs_File.File):stdgo.Error return t.close();
    @:interfacetypeffun
    static public function read(t:stdgo._internal.io.fs.Fs_File.File, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.read(_0);
    @:interfacetypeffun
    static public function stat(t:stdgo._internal.io.fs.Fs_File.File):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return t.stat();
}
