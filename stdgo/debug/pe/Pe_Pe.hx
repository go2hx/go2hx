package stdgo.debug.pe;
/**
    /|*
    Package pe implements access to PE (Microsoft Windows Portable Executable) files.
    
    # Security
    
    This package is not designed to be hardened against adversarial inputs, and is
    outside the scope of https://go.dev/security/policy. In particular, only basic
    validation is done when parsing object files. As such, care should be taken when
    parsing untrusted inputs, as parsing malformed files may consume significant
    resources, or cause panics.
    *|/
**/
class Pe {
    /**
        Open opens the named file using os.Open and prepares it for use as a PE binary.
    **/
    static public inline function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.debug.pe.Pe_open.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewFile creates a new File for accessing a PE binary in an underlying reader.
    **/
    static public inline function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.pe.Pe_newFile.newFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
