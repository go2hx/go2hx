package stdgo._internal.archive.zip;
@:interface typedef T_fileInfoDirEntry = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_fileinfo.FileInfo,
    > stdgo._internal.io.fs.Fs_direntry.DirEntry,
};
