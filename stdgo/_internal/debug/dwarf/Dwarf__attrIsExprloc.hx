package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
var _attrIsExprloc : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Attr.Attr, Bool> = ({
        final x = new stdgo.GoMap.GoIntMap<Bool>();
        x.__defaultValue__ = () -> false;
        x.set((2u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((11u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((12u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((13u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((25u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((34u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((42u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((46u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((47u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((55u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((56u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((64u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((70u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((72u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((74u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((77u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((78u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((79u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((80u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
x.set((81u32 : stdgo._internal.debug.dwarf.Dwarf_Attr.Attr), true);
        x;
    } : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Attr.Attr, Bool>);
