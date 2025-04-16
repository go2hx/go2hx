package stdgo.archive.tar;
var typeReg : stdgo.GoInt32 = 48i32;
var typeRegA : stdgo.GoInt32 = 0i32;
var typeLink : stdgo.GoInt32 = 49i32;
var typeSymlink : stdgo.GoInt32 = 50i32;
var typeChar : stdgo.GoInt32 = 51i32;
var typeBlock : stdgo.GoInt32 = 52i32;
var typeDir : stdgo.GoInt32 = 53i32;
var typeFifo : stdgo.GoInt32 = 54i32;
var typeCont : stdgo.GoInt32 = 55i32;
var typeXHeader : stdgo.GoInt32 = 120i32;
var typeXGlobalHeader : stdgo.GoInt32 = 103i32;
var typeGNUSparse : stdgo.GoInt32 = 83i32;
var typeGNULongName : stdgo.GoInt32 = 76i32;
var typeGNULongLink : stdgo.GoInt32 = 75i32;
var formatUnknown : Format = 0i32;
var formatUSTAR : Format = 2i32;
var formatPAX : Format = 4i32;
var formatGNU : Format = 8i32;
var errHeader(get, set) : stdgo.Error;
private function get_errHeader():stdgo.Error return stdgo._internal.archive.tar.Tar_errheader.errHeader;
private function set_errHeader(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.tar.Tar_errheader.errHeader = v;
        return v;
    }
var errWriteTooLong(get, set) : stdgo.Error;
private function get_errWriteTooLong():stdgo.Error return stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong;
private function set_errWriteTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.tar.Tar_errwritetoolong.errWriteTooLong = v;
        return v;
    }
var errFieldTooLong(get, set) : stdgo.Error;
private function get_errFieldTooLong():stdgo.Error return stdgo._internal.archive.tar.Tar_errfieldtoolong.errFieldTooLong;
private function set_errFieldTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.tar.Tar_errfieldtoolong.errFieldTooLong = v;
        return v;
    }
var errWriteAfterClose(get, set) : stdgo.Error;
private function get_errWriteAfterClose():stdgo.Error return stdgo._internal.archive.tar.Tar_errwriteafterclose.errWriteAfterClose;
private function set_errWriteAfterClose(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.tar.Tar_errwriteafterclose.errWriteAfterClose = v;
        return v;
    }
var errInsecurePath(get, set) : stdgo.Error;
private function get_errInsecurePath():stdgo.Error return stdgo._internal.archive.tar.Tar_errinsecurepath.errInsecurePath;
private function set_errInsecurePath(v:stdgo.Error):stdgo.Error {
        stdgo._internal.archive.tar.Tar_errinsecurepath.errInsecurePath = v;
        return v;
    }
typedef Header = stdgo._internal.archive.tar.Tar_header.Header;
typedef Reader = stdgo._internal.archive.tar.Tar_reader.Reader;
typedef Writer = stdgo._internal.archive.tar.Tar_writer.Writer;
typedef Format = stdgo._internal.archive.tar.Tar_format.Format;
typedef HeaderPointer = stdgo._internal.archive.tar.Tar_headerpointer.HeaderPointer;
typedef ReaderPointer = stdgo._internal.archive.tar.Tar_readerpointer.ReaderPointer;
typedef WriterPointer = stdgo._internal.archive.tar.Tar_writerpointer.WriterPointer;
typedef FormatPointer = stdgo._internal.archive.tar.Tar_formatpointer.FormatPointer;
/**
    * Package tar implements access to tar archives.
    * 
    * Tape archives (tar) are a file format for storing a sequence of files that
    * can be read and written in a streaming manner.
    * This package aims to cover most variations of the format,
    * including those produced by GNU and BSD tar tools.
**/
class Tar {
    /**
        * FileInfoHeader creates a partially-populated Header from fi.
        * If fi describes a symlink, FileInfoHeader records link as the link target.
        * If fi describes a directory, a slash is appended to the name.
        * 
        * Since fs.FileInfo's Name method only returns the base name of
        * the file it describes, it may be necessary to modify Header.Name
        * to provide the full path name of the file.
    **/
    static public inline function fileInfoHeader(_fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo, _link:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.archive.tar.Tar_header.Header>; var _1 : stdgo.Error; } return stdgo._internal.archive.tar.Tar_fileinfoheader.fileInfoHeader(_fi, _link);
    /**
        * NewReader creates a new Reader reading from r.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.archive.tar.Tar_reader.Reader> return stdgo._internal.archive.tar.Tar_newreader.newReader(_r);
    /**
        * NewWriter creates a new Writer writing to w.
    **/
    static public inline function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.archive.tar.Tar_writer.Writer> return stdgo._internal.archive.tar.Tar_newwriter.newWriter(_w);
}
