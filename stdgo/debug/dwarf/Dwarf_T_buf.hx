package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.T_buf_static_extension) abstract T_buf(stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf) from stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf to stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf {
    public var _dwarf(get, set) : Data;
    function get__dwarf():Data return this._dwarf;
    function set__dwarf(v:Data):Data {
        this._dwarf = (v : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>);
        return v;
    }
    public var _order(get, set) : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder;
    function get__order():stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder return this._order;
    function set__order(v:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder):stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder {
        this._order = v;
        return v;
    }
    public var _format(get, set) : T_dataFormat;
    function get__format():T_dataFormat return this._format;
    function set__format(v:T_dataFormat):T_dataFormat {
        this._format = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _off(get, set) : Offset;
    function get__off():Offset return this._off;
    function set__off(v:Offset):Offset {
        this._off = v;
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_dwarf:Data, ?_order:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, ?_format:T_dataFormat, ?_name:String, ?_off:Offset, ?_data:Array<std.UInt>, ?_err:stdgo.Error) this = new stdgo._internal.debug.dwarf.Dwarf_T_buf.T_buf((_dwarf : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>), _order, _format, (_name : stdgo.GoString), _off, ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
