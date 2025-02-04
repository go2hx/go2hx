package stdgo._internal.io.fs;
function fileInfoToDirEntry(_info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo._internal.io.fs.Fs_direntry.DirEntry {
        if (_info == null) {
            return (null : stdgo._internal.io.fs.Fs_direntry.DirEntry);
        };
        return stdgo.Go.asInterface(({ _fileInfo : _info } : stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo));
    }
