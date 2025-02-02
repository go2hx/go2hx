package stdgo._internal.io.fs;
function fileInfoToDirEntry(_info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo._internal.io.fs.Fs_DirEntry.DirEntry {
        if (_info == null) {
            return (null : stdgo._internal.io.fs.Fs_DirEntry.DirEntry);
        };
        return stdgo.Go.asInterface(({ _fileInfo : _info } : stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo));
    }
