package stdgo.archive.zip;
var store : stdgo.GoUInt16 = 0i32;
var deflate : stdgo.GoUInt16 = 8i32;
var errFormat(get, set) : stdgo.Error;
private function get_errFormat():stdgo.Error return stdgo._internal.archive.zip.Zip_errformat.errFormat;
private function set_errFormat(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_errformat.errFormat = v;
        return v;
    }
var errAlgorithm(get, set) : stdgo.Error;
private function get_errAlgorithm():stdgo.Error return stdgo._internal.archive.zip.Zip_erralgorithm.errAlgorithm;
private function set_errAlgorithm(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_erralgorithm.errAlgorithm = v;
        return v;
    }
var errChecksum(get, set) : stdgo.Error;
private function get_errChecksum():stdgo.Error return stdgo._internal.archive.zip.Zip_errchecksum.errChecksum;
private function set_errChecksum(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_errchecksum.errChecksum = v;
        return v;
    }
var errInsecurePath(get, set) : stdgo.Error;
private function get_errInsecurePath():stdgo.Error return stdgo._internal.archive.zip.Zip_errinsecurepath.errInsecurePath;
private function set_errInsecurePath(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.zip.Zip_errinsecurepath.errInsecurePath = v;
        return v;
    }
typedef Reader = stdgo._internal.archive.zip.Zip_reader.Reader;
typedef ReadCloser = stdgo._internal.archive.zip.Zip_readcloser.ReadCloser;
typedef File = stdgo._internal.archive.zip.Zip_file.File;
typedef FileHeader = stdgo._internal.archive.zip.Zip_fileheader.FileHeader;
typedef Writer = stdgo._internal.archive.zip.Zip_writer.Writer;
typedef Compressor = stdgo._internal.archive.zip.Zip_compressor.Compressor;
typedef Decompressor = stdgo._internal.archive.zip.Zip_decompressor.Decompressor;
typedef ReaderPointer = stdgo._internal.archive.zip.Zip_readerpointer.ReaderPointer;
typedef ReadCloserPointer = stdgo._internal.archive.zip.Zip_readcloserpointer.ReadCloserPointer;
typedef FilePointer = stdgo._internal.archive.zip.Zip_filepointer.FilePointer;
typedef FileHeaderPointer = stdgo._internal.archive.zip.Zip_fileheaderpointer.FileHeaderPointer;
typedef WriterPointer = stdgo._internal.archive.zip.Zip_writerpointer.WriterPointer;
typedef CompressorPointer = stdgo._internal.archive.zip.Zip_compressorpointer.CompressorPointer;
typedef DecompressorPointer = stdgo._internal.archive.zip.Zip_decompressorpointer.DecompressorPointer;
/**
    * 
    * Package zip provides support for reading and writing ZIP archives.
    * 
    * See the [ZIP specification] for details.
    * 
    * This package does not support disk spanning.
    * 
    * A note about ZIP64:
    * 
    * To be backwards compatible the FileHeader has both 32 and 64 bit Size
    * fields. The 64 bit fields will always contain the correct value and
    * for normal archives both fields will be the same. For files requiring
    * the ZIP64 format the 32 bit fields will be 0xffffffff and the 64 bit
    * fields must be used instead.
    * 
    * [ZIP specification]: https://www.pkware.com/appnote
    * 
**/
class Zip {
    /**
        * OpenReader will open the Zip file specified by name and return a ReadCloser.
        * 
        * If any file inside the archive uses a non-local name
        * (as defined by [filepath.IsLocal]) or a name containing backslashes
        * and the GODEBUG environment variable contains `zipinsecurepath=0`,
        * OpenReader returns the reader with an ErrInsecurePath error.
        * A future version of Go may introduce this behavior by default.
        * Programs that want to accept non-local names can ignore
        * the ErrInsecurePath error and use the returned reader.
    **/
    static public inline function openReader(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_readcloser.ReadCloser>; var _1 : stdgo.Error; } return stdgo._internal.archive.zip.Zip_openreader.openReader(_name);
    /**
        * NewReader returns a new Reader reading from r, which is assumed to
        * have the given size in bytes.
        * 
        * If any file inside the archive uses a non-local name
        * (as defined by [filepath.IsLocal]) or a name containing backslashes
        * and the GODEBUG environment variable contains `zipinsecurepath=0`,
        * NewReader returns the reader with an ErrInsecurePath error.
        * A future version of Go may introduce this behavior by default.
        * Programs that want to accept non-local names can ignore
        * the ErrInsecurePath error and use the returned reader.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_readerat.ReaderAt, _size:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_reader.Reader>; var _1 : stdgo.Error; } return stdgo._internal.archive.zip.Zip_newreader.newReader(_r, _size);
    /**
        * RegisterDecompressor allows custom decompressors for a specified method ID.
        * The common methods Store and Deflate are built in.
    **/
    static public inline function registerDecompressor(_method:stdgo.GoUInt16, _dcomp:Decompressor):Void stdgo._internal.archive.zip.Zip_registerdecompressor.registerDecompressor(_method, _dcomp);
    /**
        * RegisterCompressor registers custom compressors for a specified method ID.
        * The common methods Store and Deflate are built in.
    **/
    static public inline function registerCompressor(_method:stdgo.GoUInt16, _comp:Compressor):Void stdgo._internal.archive.zip.Zip_registercompressor.registerCompressor(_method, _comp);
    /**
        * FileInfoHeader creates a partially-populated FileHeader from an
        * fs.FileInfo.
        * Because fs.FileInfo's Name method returns only the base name of
        * the file it describes, it may be necessary to modify the Name field
        * of the returned header to provide the full path name of the file.
        * If compression is desired, callers should set the FileHeader.Method
        * field; it is unset by default.
    **/
    static public inline function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):{ var _0 : stdgo.Ref<stdgo._internal.archive.zip.Zip_fileheader.FileHeader>; var _1 : stdgo.Error; } return stdgo._internal.archive.zip.Zip_fileinfoheader.fileInfoHeader(_fi);
    /**
        * NewWriter returns a new Writer writing a zip file to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.archive.zip.Zip_writer.Writer> return stdgo._internal.archive.zip.Zip_newwriter.newWriter(_w);
}
