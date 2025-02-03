package stdgo.archive.tar;
/**
    Package tar implements access to tar archives.
    
    Tape archives (tar) are a file format for storing a sequence of files that
    can be read and written in a streaming manner.
    This package aims to cover most variations of the format,
    including those produced by GNU and BSD tar tools.
**/
class Tar {
    /**
        FileInfoHeader creates a partially-populated Header from fi.
        If fi describes a symlink, FileInfoHeader records link as the link target.
        If fi describes a directory, a slash is appended to the name.
        
        Since fs.FileInfo's Name method only returns the base name of
        the file it describes, it may be necessary to modify Header.Name
        to provide the full path name of the file.
    **/
    static public inline function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo, _link:String):stdgo.Tuple<Header, stdgo.Error> {
        final _link = (_link : stdgo.GoString);
        return {
            final obj = stdgo._internal.archive.tar.Tar_fileInfoHeader.fileInfoHeader(_fi, _link);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewReader creates a new Reader reading from r.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_Reader.Reader):Reader {
        return stdgo._internal.archive.tar.Tar_newReader.newReader(_r);
    }
    /**
        NewWriter creates a new Writer writing to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.archive.tar.Tar_newWriter.newWriter(_w);
    }
}
