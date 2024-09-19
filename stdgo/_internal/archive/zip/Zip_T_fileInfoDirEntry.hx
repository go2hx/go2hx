package stdgo._internal.archive.zip;
typedef T_fileInfoDirEntry = stdgo.StructType & {
    > stdgo._internal.io.fs.Fs_FileInfo.FileInfo,
    > stdgo._internal.io.fs.Fs_DirEntry.DirEntry,
};
