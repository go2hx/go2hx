package stdgo._internal.debug.dwarf;
function _makeBuf(_d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>, _format:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat, _name:stdgo.GoString, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf {
        return (new stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf(_d, _d._order, _format, _name?.__copy__(), _off, _data, (null : stdgo.Error)) : stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf);
    }
