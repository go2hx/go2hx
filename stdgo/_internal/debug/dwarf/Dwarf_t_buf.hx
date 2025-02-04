package stdgo._internal.debug.dwarf;
@:structInit @:using(stdgo._internal.debug.dwarf.Dwarf_t_buf_static_extension.T_buf_static_extension) class T_buf {
    public var _dwarf : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data> = (null : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>);
    public var _order : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder = (null : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
    public var _format : stdgo._internal.debug.dwarf.Dwarf_t_dataformat.T_dataFormat = (null : stdgo._internal.debug.dwarf.Dwarf_t_dataformat.T_dataFormat);
    public var _name : stdgo.GoString = "";
    public var _off : stdgo._internal.debug.dwarf.Dwarf_offset.Offset = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.dwarf.Dwarf_offset.Offset);
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_dwarf:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>, ?_order:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, ?_format:stdgo._internal.debug.dwarf.Dwarf_t_dataformat.T_dataFormat, ?_name:stdgo.GoString, ?_off:stdgo._internal.debug.dwarf.Dwarf_offset.Offset, ?_data:stdgo.Slice<stdgo.GoUInt8>, ?_err:stdgo.Error) {
        if (_dwarf != null) this._dwarf = _dwarf;
        if (_order != null) this._order = _order;
        if (_format != null) this._format = _format;
        if (_name != null) this._name = _name;
        if (_off != null) this._off = _off;
        if (_data != null) this._data = _data;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_buf(_dwarf, _order, _format, _name, _off, _data, _err);
    }
}
