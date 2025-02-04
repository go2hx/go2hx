package stdgo._internal.testing.fstest;
function _formatInfoEntry(_info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo.GoString {
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s IsDir=%v Type=%v" : stdgo.GoString), stdgo.Go.toInterface(_info.name()), stdgo.Go.toInterface(_info.isDir()), stdgo.Go.toInterface(stdgo.Go.asInterface(_info.mode().type())))?.__copy__();
    }
