package stdgo.debug.macho;
/**
    /|*
    Package macho implements access to Mach-O object files.
    
    # Security
    
    This package is not designed to be hardened against adversarial inputs, and is
    outside the scope of https://go.dev/security/policy. In particular, only basic
    validation is done when parsing object files. As such, care should be taken when
    parsing untrusted inputs, as parsing malformed files may consume significant
    resources, or cause panics.
    *|/
**/
class Macho {
    /**
        NewFatFile creates a new FatFile for accessing all the Mach-O images in a
        universal binary. The Mach-O binary is expected to start at position 0 in
        the ReaderAt.
    **/
    static public inline function newFatFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Tuple<FatFile, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_newFatFile.newFatFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        OpenFat opens the named file using os.Open and prepares it for use as a Mach-O
        universal binary.
    **/
    static public inline function openFat(_name:String):stdgo.Tuple<FatFile, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.debug.macho.Macho_openFat.openFat(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Open opens the named file using os.Open and prepares it for use as a Mach-O binary.
    **/
    static public inline function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.debug.macho.Macho_open.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewFile creates a new File for accessing a Mach-O binary in an underlying reader.
        The Mach-O binary is expected to start at position 0 in the ReaderAt.
    **/
    static public inline function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.macho.Macho_newFile.newFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
