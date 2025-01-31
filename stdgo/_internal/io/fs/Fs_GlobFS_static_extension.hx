package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:keep class GlobFS_static_extension {
    @:interfacetypeffun
    static public function glob(t:stdgo._internal.io.fs.Fs_GlobFS.GlobFS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return t.glob(_pattern);
}
