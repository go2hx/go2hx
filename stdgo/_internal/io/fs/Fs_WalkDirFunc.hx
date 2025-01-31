package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:named @:using(stdgo._internal.io.fs.Fs_WalkDirFunc_static_extension.WalkDirFunc_static_extension) typedef WalkDirFunc = (stdgo.GoString, stdgo._internal.io.fs.Fs_DirEntry.DirEntry, stdgo.Error) -> stdgo.Error;
