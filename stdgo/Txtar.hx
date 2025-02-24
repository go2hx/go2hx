package stdgo;
@:structInit @:using(stdgo.internal.txtar.Txtar.Archive_static_extension) abstract Archive(stdgo._internal.internal.txtar.Txtar_archive.Archive) from stdgo._internal.internal.txtar.Txtar_archive.Archive to stdgo._internal.internal.txtar.Txtar_archive.Archive {
    public var comment(get, set) : Array<std.UInt>;
    function get_comment():Array<std.UInt> return [for (i in this.comment) i];
    function set_comment(v:Array<std.UInt>):Array<std.UInt> {
        this.comment = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var files(get, set) : Array<File>;
    function get_files():Array<File> return [for (i in this.files) i];
    function set_files(v:Array<File>):Array<File> {
        this.files = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.txtar.Txtar_file.File>);
        return v;
    }
    public function new(?comment:Array<std.UInt>, ?files:Array<File>) this = new stdgo._internal.internal.txtar.Txtar_archive.Archive(([for (i in comment) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in files) i] : stdgo.Slice<stdgo._internal.internal.txtar.Txtar_file.File>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.txtar.Txtar.File_static_extension) abstract File(stdgo._internal.internal.txtar.Txtar_file.File) from stdgo._internal.internal.txtar.Txtar_file.File to stdgo._internal.internal.txtar.Txtar_file.File {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var data(get, set) : Array<std.UInt>;
    function get_data():Array<std.UInt> return [for (i in this.data) i];
    function set_data(v:Array<std.UInt>):Array<std.UInt> {
        this.data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?name:String, ?data:Array<std.UInt>) this = new stdgo._internal.internal.txtar.Txtar_file.File((name : stdgo.GoString), ([for (i in data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef ArchivePointer = stdgo._internal.internal.txtar.Txtar_archivepointer.ArchivePointer;
class Archive_static_extension {

}
typedef FilePointer = stdgo._internal.internal.txtar.Txtar_filepointer.FilePointer;
class File_static_extension {

}
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
    static public inline function format(_a:Archive):Array<std.UInt> {
        final _a = (_a : stdgo.Ref<stdgo._internal.internal.txtar.Txtar_archive.Archive>);
        return [for (i in stdgo._internal.internal.txtar.Txtar_format.format(_a)) i];
    }
    /**
        * ParseFile parses the named file as an archive.
    **/
    static public inline function parseFile(_file:String):stdgo.Tuple<Archive, stdgo.Error> {
        final _file = (_file : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.txtar.Txtar_parsefile.parseFile(_file);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Parse parses the serialized form of an Archive.
        * The returned Archive holds slices of data.
    **/
    static public inline function parse(_data:Array<std.UInt>):Archive {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.txtar.Txtar_parse.parse(_data);
    }
}
