package stdgo._internal.io.fs;
function glob(_fsys:stdgo._internal.io.fs.Fs_FS.FS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        return stdgo._internal.io.fs.Fs__globWithLimit._globWithLimit(_fsys, _pattern?.__copy__(), (0 : stdgo.GoInt));
    }
