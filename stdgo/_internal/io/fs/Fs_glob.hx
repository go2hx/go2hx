package stdgo._internal.io.fs;
function glob(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _matches = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        return ({
            @:assignTranslate final __tmp__ = stdgo._internal.io.fs.Fs__globwithlimit._globWithLimit(_fsys, _pattern?.__copy__(), (0 : stdgo.GoInt));
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
