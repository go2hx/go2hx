package stdgo._internal.debug.elf;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.internal.zstd.Zstd;
function _canApplyRelocation(_sym:stdgo.Ref<stdgo._internal.debug.elf.Elf_Symbol.Symbol>):Bool {
        return (((@:checkr _sym ?? throw "null pointer dereference").section != (0 : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex)) && ((@:checkr _sym ?? throw "null pointer dereference").section < (65280 : stdgo._internal.debug.elf.Elf_SectionIndex.SectionIndex) : Bool) : Bool);
    }
