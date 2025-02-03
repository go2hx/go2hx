package stdgo.debug.dwarf;
@:structInit @:using(stdgo.debug.dwarf.Dwarf.Data_static_extension) abstract Data(stdgo._internal.debug.dwarf.Dwarf_Data.Data) from stdgo._internal.debug.dwarf.Dwarf_Data.Data to stdgo._internal.debug.dwarf.Dwarf_Data.Data {
    public var _abbrev(get, set) : Array<std.UInt>;
    function get__abbrev():Array<std.UInt> return [for (i in this._abbrev) i];
    function set__abbrev(v:Array<std.UInt>):Array<std.UInt> {
        this._abbrev = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _aranges(get, set) : Array<std.UInt>;
    function get__aranges():Array<std.UInt> return [for (i in this._aranges) i];
    function set__aranges(v:Array<std.UInt>):Array<std.UInt> {
        this._aranges = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _frame(get, set) : Array<std.UInt>;
    function get__frame():Array<std.UInt> return [for (i in this._frame) i];
    function set__frame(v:Array<std.UInt>):Array<std.UInt> {
        this._frame = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _info(get, set) : Array<std.UInt>;
    function get__info():Array<std.UInt> return [for (i in this._info) i];
    function set__info(v:Array<std.UInt>):Array<std.UInt> {
        this._info = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _line(get, set) : Array<std.UInt>;
    function get__line():Array<std.UInt> return [for (i in this._line) i];
    function set__line(v:Array<std.UInt>):Array<std.UInt> {
        this._line = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _pubnames(get, set) : Array<std.UInt>;
    function get__pubnames():Array<std.UInt> return [for (i in this._pubnames) i];
    function set__pubnames(v:Array<std.UInt>):Array<std.UInt> {
        this._pubnames = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _ranges(get, set) : Array<std.UInt>;
    function get__ranges():Array<std.UInt> return [for (i in this._ranges) i];
    function set__ranges(v:Array<std.UInt>):Array<std.UInt> {
        this._ranges = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _str(get, set) : Array<std.UInt>;
    function get__str():Array<std.UInt> return [for (i in this._str) i];
    function set__str(v:Array<std.UInt>):Array<std.UInt> {
        this._str = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _addr(get, set) : Array<std.UInt>;
    function get__addr():Array<std.UInt> return [for (i in this._addr) i];
    function set__addr(v:Array<std.UInt>):Array<std.UInt> {
        this._addr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _lineStr(get, set) : Array<std.UInt>;
    function get__lineStr():Array<std.UInt> return [for (i in this._lineStr) i];
    function set__lineStr(v:Array<std.UInt>):Array<std.UInt> {
        this._lineStr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _strOffsets(get, set) : Array<std.UInt>;
    function get__strOffsets():Array<std.UInt> return [for (i in this._strOffsets) i];
    function set__strOffsets(v:Array<std.UInt>):Array<std.UInt> {
        this._strOffsets = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _rngLists(get, set) : Array<std.UInt>;
    function get__rngLists():Array<std.UInt> return [for (i in this._rngLists) i];
    function set__rngLists(v:Array<std.UInt>):Array<std.UInt> {
        this._rngLists = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _abbrevCache(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable>;
    function get__abbrevCache():stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable> return this._abbrevCache;
    function set__abbrevCache(v:stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable>):stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable> {
        this._abbrevCache = (v : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable>);
        return v;
    }
    public var _bigEndian(get, set) : Bool;
    function get__bigEndian():Bool return this._bigEndian;
    function set__bigEndian(v:Bool):Bool {
        this._bigEndian = v;
        return v;
    }
    public var _order(get, set) : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder;
    function get__order():stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder return this._order;
    function set__order(v:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder):stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder {
        this._order = v;
        return v;
    }
    public var _typeCache(get, set) : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>;
    function get__typeCache():stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_> return this._typeCache;
    function set__typeCache(v:stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>):stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_> {
        this._typeCache = (v : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>);
        return v;
    }
    public var _typeSigs(get, set) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>>;
    function get__typeSigs():stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>> return this._typeSigs;
    function set__typeSigs(v:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>>):stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>> {
        this._typeSigs = (v : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>>);
        return v;
    }
    public var _unit(get, set) : Array<T_unit>;
    function get__unit():Array<T_unit> return [for (i in this._unit) i];
    function set__unit(v:Array<T_unit>):Array<T_unit> {
        this._unit = ([for (i in v) i] : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>);
        return v;
    }
    public function new(?_abbrev:Array<std.UInt>, ?_aranges:Array<std.UInt>, ?_frame:Array<std.UInt>, ?_info:Array<std.UInt>, ?_line:Array<std.UInt>, ?_pubnames:Array<std.UInt>, ?_ranges:Array<std.UInt>, ?_str:Array<std.UInt>, ?_addr:Array<std.UInt>, ?_lineStr:Array<std.UInt>, ?_strOffsets:Array<std.UInt>, ?_rngLists:Array<std.UInt>, ?_abbrevCache:stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable>, ?_bigEndian:Bool, ?_order:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, ?_typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>, ?_typeSigs:stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>>, ?_unit:Array<T_unit>) this = new stdgo._internal.debug.dwarf.Dwarf_Data.Data(
([for (i in _abbrev) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _aranges) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _frame) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _info) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _line) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _pubnames) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _ranges) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _str) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _addr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _lineStr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _strOffsets) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _rngLists) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_abbrevCache : stdgo.GoMap<stdgo.GoUInt64, stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable>),
_bigEndian,
_order,
(_typeCache : stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>),
(_typeSigs : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeUnit.T_typeUnit>>),
([for (i in _unit) i] : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
