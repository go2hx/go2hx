package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:keep class SubFS_static_extension {
    @:interfacetypeffun
    static public function sub(t:stdgo._internal.io.fs.Fs_SubFS.SubFS, _dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FS.FS; var _1 : stdgo.Error; } return t.sub(_dir);
}
