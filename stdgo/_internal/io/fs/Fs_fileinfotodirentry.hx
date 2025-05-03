package stdgo._internal.io.fs;
function fileInfoToDirEntry(_info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo._internal.io.fs.Fs_direntry.DirEntry {
        //"file:///home/runner/.go/go1.21.3/src/io/fs/readdir.go#L77"
        if (_info == null) {
            //"file:///home/runner/.go/go1.21.3/src/io/fs/readdir.go#L78"
            return (null : stdgo._internal.io.fs.Fs_direntry.DirEntry);
        };
        //"file:///home/runner/.go/go1.21.3/src/io/fs/readdir.go#L80"
        return stdgo.Go.asInterface(({ _fileInfo : _info } : stdgo._internal.io.fs.Fs_t_dirinfo.T_dirInfo));
    }
