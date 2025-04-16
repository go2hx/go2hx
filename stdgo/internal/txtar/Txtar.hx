package stdgo.internal.txtar;
typedef Archive = stdgo._internal.internal.txtar.Txtar_archive.Archive;
typedef File = stdgo._internal.internal.txtar.Txtar_file.File;
typedef ArchivePointer = stdgo._internal.internal.txtar.Txtar_archivepointer.ArchivePointer;
typedef FilePointer = stdgo._internal.internal.txtar.Txtar_filepointer.FilePointer;
/**
    * Package txtar implements a trivial text-based file archive format.
    * 
    * The goals for the format are:
    * 
    *   - be trivial enough to create and edit by hand.
    *   - be able to store trees of text files describing go command test cases.
    *   - diff nicely in git history and code reviews.
    * 
    * Non-goals include being a completely general archive format,
    * storing binary data, storing file modes, storing special files like
    * symbolic links, and so on.
    * 
    * # Txtar format
    * 
    * A txtar archive is zero or more comment lines and then a sequence of file entries.
    * Each file entry begins with a file marker line of the form "-- FILENAME --"
    * and is followed by zero or more file content lines making up the file data.
    * The comment or file content ends at the next file marker line.
    * The file marker line must begin with the three-byte sequence "-- "
    * and end with the three-byte sequence " --", but the enclosed
    * file name can be surrounding by additional white space,
    * all of which is stripped.
    * 
    * If the txtar file is missing a trailing newline on the final line,
    * parsers should consider a final newline to be present anyway.
    * 
    * There are no possible syntax errors in a txtar archive.
**/
class Txtar {
    /**
        * Format returns the serialized form of an Archive.
        * It is assumed that the Archive data structure is well-formed:
        * a.Comment and all a.File[i].Data contain no file marker lines,
        * and all a.File[i].Name is non-empty.
    **/
    static public inline function format(_a:stdgo.Ref<stdgo._internal.internal.txtar.Txtar_archive.Archive>):stdgo.Slice<stdgo.GoUInt8> return stdgo._internal.internal.txtar.Txtar_format.format(_a);
    /**
        * ParseFile parses the named file as an archive.
    **/
    static public inline function parseFile(_file:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.txtar.Txtar_archive.Archive>; var _1 : stdgo.Error; } return stdgo._internal.internal.txtar.Txtar_parsefile.parseFile(_file);
    /**
        * Parse parses the serialized form of an Archive.
        * The returned Archive holds slices of data.
    **/
    static public inline function parse(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.internal.txtar.Txtar_archive.Archive> return stdgo._internal.internal.txtar.Txtar_parse.parse(_data);
}
