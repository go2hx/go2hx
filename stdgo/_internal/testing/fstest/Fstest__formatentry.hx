package stdgo._internal.testing.fstest;
function _formatEntry(_entry:stdgo._internal.io.fs.Fs_direntry.DirEntry):stdgo.GoString {
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s IsDir=%v Type=%v" : stdgo.GoString), stdgo.Go.toInterface(_entry.name()), stdgo.Go.toInterface(_entry.isDir()), stdgo.Go.toInterface(stdgo.Go.asInterface(_entry.type())))?.__copy__();
    }
