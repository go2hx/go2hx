package stdgo.internal.xcoff;
/**
    Package xcoff implements access to XCOFF (Extended Common Object File Format) files.
**/
class Xcoff {
    /**
        OpenArchive opens the named archive using os.Open and prepares it for use
        as an AIX big archive.
    **/
    static public inline function openArchive(_name:String):stdgo.Tuple<Archive, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.xcoff.Xcoff_openArchive.openArchive(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewArchive creates a new Archive for accessing an AIX big archive in an underlying reader.
    **/
    static public inline function newArchive(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Tuple<Archive, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.xcoff.Xcoff_newArchive.newArchive(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Open opens the named file using os.Open and prepares it for use as an XCOFF binary.
    **/
    static public inline function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.xcoff.Xcoff_open.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewFile creates a new File for accessing an XCOFF binary in an underlying reader.
    **/
    static public inline function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.xcoff.Xcoff_newFile.newFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
