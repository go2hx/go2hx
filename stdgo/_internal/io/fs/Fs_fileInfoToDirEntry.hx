package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function fileInfoToDirEntry(_info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo._internal.io.fs.Fs_DirEntry.DirEntry {
        if (_info == null) {
            return (null : stdgo._internal.io.fs.Fs_DirEntry.DirEntry);
        };
        return stdgo.Go.asInterface(({ _fileInfo : _info } : stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo));
    }
