package stdgo.debug.dwarf;
/**
    /|*
    Package dwarf provides access to DWARF debugging information loaded from
    executable files, as defined in the DWARF 2.0 Standard at
    http://dwarfstd.org/doc/dwarf-2.0.0.pdf.
    
    # Security
    
    This package is not designed to be hardened against adversarial inputs, and is
    outside the scope of https://go.dev/security/policy. In particular, only basic
    validation is done when parsing object files. As such, care should be taken when
    parsing untrusted inputs, as parsing malformed files may consume significant
    resources, or cause panics.
    *|/
**/
class Dwarf {
    /**
        New returns a new Data object initialized from the given parameters.
        Rather than calling this function directly, clients should typically use
        the DWARF method of the File type of the appropriate package debug/elf,
        debug/macho, or debug/pe.
        
        The []byte arguments are the data from the corresponding debug section
        in the object file; for example, for an ELF object, abbrev is the contents of
        the ".debug_abbrev" section.
    **/
    static public inline function new_(_abbrev:Array<std.UInt>, _aranges:Array<std.UInt>, _frame:Array<std.UInt>, _info:Array<std.UInt>, _line:Array<std.UInt>, _pubnames:Array<std.UInt>, _ranges:Array<std.UInt>, _str:Array<std.UInt>):stdgo.Tuple<Data, stdgo.Error> {
        final _abbrev = ([for (i in _abbrev) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _aranges = ([for (i in _aranges) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _frame = ([for (i in _frame) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _info = ([for (i in _info) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _line = ([for (i in _line) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _pubnames = ([for (i in _pubnames) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _ranges = ([for (i in _ranges) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _str = ([for (i in _str) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.debug.dwarf.Dwarf_new_.new_(_abbrev, _aranges, _frame, _info, _line, _pubnames, _ranges, _str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
