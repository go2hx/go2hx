package stdgo._internal.debug.dwarf;
function _makeBuf(_d:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, _format:stdgo._internal.debug.dwarf.Dwarf_t_dataformat.T_dataFormat, _name:stdgo.GoString, _off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf {
        return (new stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf(_d, (@:checkr _d ?? throw "null pointer dereference")._order, _format, _name?.__copy__(), _off, _data, (null : stdgo.Error)) : stdgo._internal.debug.dwarf.Dwarf_t_buf.T_buf);
    }
