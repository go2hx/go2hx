package stdgo.archive.zip;
/**
    /|*
    Package zip provides support for reading and writing ZIP archives.
    
    See the [ZIP specification] for details.
    
    This package does not support disk spanning.
    
    A note about ZIP64:
    
    To be backwards compatible the FileHeader has both 32 and 64 bit Size
    fields. The 64 bit fields will always contain the correct value and
    for normal archives both fields will be the same. For files requiring
    the ZIP64 format the 32 bit fields will be 0xffffffff and the 64 bit
    fields must be used instead.
    
    [ZIP specification]: https://www.pkware.com/appnote
    *|/
**/
class Zip {
    /**
        OpenReader will open the Zip file specified by name and return a ReadCloser.
        
        If any file inside the archive uses a non-local name
        (as defined by [filepath.IsLocal]) or a name containing backslashes
        and the GODEBUG environment variable contains `zipinsecurepath=0`,
        OpenReader returns the reader with an ErrInsecurePath error.
        A future version of Go may introduce this behavior by default.
        Programs that want to accept non-local names can ignore
        the ErrInsecurePath error and use the returned reader.
    **/
    static public inline function openReader(_name:String):stdgo.Tuple<ReadCloser, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.archive.zip.Zip_openReader.openReader(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewReader returns a new Reader reading from r, which is assumed to
        have the given size in bytes.
        
        If any file inside the archive uses a non-local name
        (as defined by [filepath.IsLocal]) or a name containing backslashes
        and the GODEBUG environment variable contains `zipinsecurepath=0`,
        NewReader returns the reader with an ErrInsecurePath error.
        A future version of Go may introduce this behavior by default.
        Programs that want to accept non-local names can ignore
        the ErrInsecurePath error and use the returned reader.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt, _size:haxe.Int64):stdgo.Tuple<Reader, stdgo.Error> {
        final _size = (_size : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.archive.zip.Zip_newReader.newReader(_r, _size);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        RegisterDecompressor allows custom decompressors for a specified method ID.
        The common methods Store and Deflate are built in.
    **/
    static public inline function registerDecompressor(_method:std.UInt, _dcomp:Decompressor):Void {
        final _method = (_method : stdgo.GoUInt16);
        stdgo._internal.archive.zip.Zip_registerDecompressor.registerDecompressor(_method, _dcomp);
    }
    /**
        RegisterCompressor registers custom compressors for a specified method ID.
        The common methods Store and Deflate are built in.
    **/
    static public inline function registerCompressor(_method:std.UInt, _comp:Compressor):Void {
        final _method = (_method : stdgo.GoUInt16);
        stdgo._internal.archive.zip.Zip_registerCompressor.registerCompressor(_method, _comp);
    }
    /**
        FileInfoHeader creates a partially-populated FileHeader from an
        fs.FileInfo.
        Because fs.FileInfo's Name method returns only the base name of
        the file it describes, it may be necessary to modify the Name field
        of the returned header to provide the full path name of the file.
        If compression is desired, callers should set the FileHeader.Method
        field; it is unset by default.
    **/
    static public inline function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo.Tuple<FileHeader, stdgo.Error> {
        return {
            final obj = stdgo._internal.archive.zip.Zip_fileInfoHeader.fileInfoHeader(_fi);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewWriter returns a new Writer writing a zip file to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):Writer {
        return stdgo._internal.archive.zip.Zip_newWriter.newWriter(_w);
    }
}
