package stdgo._internal.debug.dwarf;
class LineReader_asInterface {
    @:keep
    @:tdfield
    public dynamic function seekPC(_pc:stdgo.GoUInt64, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry>):stdgo.Error return @:_0 __self__.value.seekPC(_pc, _entry);
    @:keep
    @:tdfield
    public dynamic function files():stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_linefile.LineFile>> return @:_0 __self__.value.files();
    @:keep
    @:tdfield
    public dynamic function _resetState():Void @:_0 __self__.value._resetState();
    @:keep
    @:tdfield
    public dynamic function reset():Void @:_0 __self__.value.reset();
    @:keep
    @:tdfield
    public dynamic function seek(_pos:stdgo._internal.debug.dwarf.Dwarf_linereaderpos.LineReaderPos):Void @:_0 __self__.value.seek(_pos);
    @:keep
    @:tdfield
    public dynamic function tell():stdgo._internal.debug.dwarf.Dwarf_linereaderpos.LineReaderPos return @:_0 __self__.value.tell();
    @:keep
    @:tdfield
    public dynamic function _advancePC(_opAdvance:stdgo.GoInt):Void @:_0 __self__.value._advancePC(_opAdvance);
    @:keep
    @:tdfield
    public dynamic function _step(_entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry>):Bool return @:_0 __self__.value._step(_entry);
    @:keep
    @:tdfield
    public dynamic function next(_entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_lineentry.LineEntry>):stdgo.Error return @:_0 __self__.value.next(_entry);
    @:keep
    @:tdfield
    public dynamic function _updateFile():Void @:_0 __self__.value._updateFile();
    @:keep
    @:tdfield
    public dynamic function _readFileEntry():{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value._readFileEntry();
    @:keep
    @:tdfield
    public dynamic function _readLNCT(_s:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_lnctform.T_lnctForm>, _dwarf64:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } return @:_0 __self__.value._readLNCT(_s, _dwarf64);
    @:keep
    @:tdfield
    public dynamic function _readLNCTFormat():stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_t_lnctform.T_lnctForm> return @:_0 __self__.value._readLNCTFormat();
    @:keep
    @:tdfield
    public dynamic function _readHeader(_compDir:stdgo.GoString):stdgo.Error return @:_0 __self__.value._readHeader(_compDir);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.dwarf.Dwarf_linereaderpointer.LineReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
