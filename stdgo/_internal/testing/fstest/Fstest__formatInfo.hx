package stdgo._internal.testing.fstest;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
function _formatInfo(_info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo.GoString {
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s IsDir=%v Mode=%v Size=%d ModTime=%v" : stdgo.GoString), stdgo.Go.toInterface(_info.name()), stdgo.Go.toInterface(_info.isDir()), stdgo.Go.toInterface(stdgo.Go.asInterface(_info.mode())), stdgo.Go.toInterface(_info.size()), stdgo.Go.toInterface(stdgo.Go.asInterface(_info.modTime())))?.__copy__();
    }
