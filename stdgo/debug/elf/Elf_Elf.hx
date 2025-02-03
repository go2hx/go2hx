package stdgo.debug.elf;
/**
    /|*
    Package elf implements access to ELF object files.
    
    # Security
    
    This package is not designed to be hardened against adversarial inputs, and is
    outside the scope of https://go.dev/security/policy. In particular, only basic
    validation is done when parsing object files. As such, care should be taken when
    parsing untrusted inputs, as parsing malformed files may consume significant
    resources, or cause panics.
    *|/
**/
class Elf {
    static public inline function r_SYM32(_info:std.UInt):std.UInt {
        final _info = (_info : stdgo.GoUInt32);
        return stdgo._internal.debug.elf.Elf_r_SYM32.r_SYM32(_info);
    }
    static public inline function r_TYPE32(_info:std.UInt):std.UInt {
        final _info = (_info : stdgo.GoUInt32);
        return stdgo._internal.debug.elf.Elf_r_TYPE32.r_TYPE32(_info);
    }
    static public inline function r_INFO32(_sym:std.UInt, _typ:std.UInt):std.UInt {
        final _sym = (_sym : stdgo.GoUInt32);
        final _typ = (_typ : stdgo.GoUInt32);
        return stdgo._internal.debug.elf.Elf_r_INFO32.r_INFO32(_sym, _typ);
    }
    static public inline function sT_BIND(_info:std.UInt):SymBind {
        final _info = (_info : stdgo.GoUInt8);
        return stdgo._internal.debug.elf.Elf_sT_BIND.sT_BIND(_info);
    }
    static public inline function sT_TYPE(_info:std.UInt):SymType {
        final _info = (_info : stdgo.GoUInt8);
        return stdgo._internal.debug.elf.Elf_sT_TYPE.sT_TYPE(_info);
    }
    static public inline function sT_INFO(_bind:SymBind, _typ:SymType):std.UInt {
        return stdgo._internal.debug.elf.Elf_sT_INFO.sT_INFO(_bind, _typ);
    }
    static public inline function sT_VISIBILITY(_other:std.UInt):SymVis {
        final _other = (_other : stdgo.GoUInt8);
        return stdgo._internal.debug.elf.Elf_sT_VISIBILITY.sT_VISIBILITY(_other);
    }
    static public inline function r_SYM64(_info:haxe.UInt64):std.UInt {
        final _info = (_info : stdgo.GoUInt64);
        return stdgo._internal.debug.elf.Elf_r_SYM64.r_SYM64(_info);
    }
    static public inline function r_TYPE64(_info:haxe.UInt64):std.UInt {
        final _info = (_info : stdgo.GoUInt64);
        return stdgo._internal.debug.elf.Elf_r_TYPE64.r_TYPE64(_info);
    }
    static public inline function r_INFO(_sym:std.UInt, _typ:std.UInt):haxe.UInt64 {
        final _sym = (_sym : stdgo.GoUInt32);
        final _typ = (_typ : stdgo.GoUInt32);
        return stdgo._internal.debug.elf.Elf_r_INFO.r_INFO(_sym, _typ);
    }
    /**
        Open opens the named file using os.Open and prepares it for use as an ELF binary.
    **/
    static public inline function open(_name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.debug.elf.Elf_open.open(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewFile creates a new File for accessing an ELF binary in an underlying reader.
        The ELF binary is expected to start at position 0 in the ReaderAt.
    **/
    static public inline function newFile(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.elf.Elf_newFile.newFile(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
