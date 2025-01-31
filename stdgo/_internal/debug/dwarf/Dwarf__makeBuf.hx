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
function _makeBuf(_d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _format:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat, _name:stdgo.GoString, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf {
        return (new stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf(_d, (@:checkr _d ?? throw "null pointer dereference")._order, _format, _name?.__copy__(), _off, _data, (null : stdgo.Error)) : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
    }
