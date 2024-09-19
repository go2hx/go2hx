package stdgo._internal.debug.dwarf;
class LineReader_asInterface {
    @:keep
    public dynamic function seekPC(_pc:stdgo.GoUInt64, _entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>):stdgo.Error return __self__.value.seekPC(_pc, _entry);
    @:keep
    public dynamic function files():stdgo.Slice<stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineFile.LineFile>> return __self__.value.files();
    @:keep
    public dynamic function _resetState():Void __self__.value._resetState();
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    @:keep
    public dynamic function seek(_pos:stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos):Void __self__.value.seek(_pos);
    @:keep
    public dynamic function tell():stdgo._internal.debug.dwarf.Dwarf_LineReaderPos.LineReaderPos return __self__.value.tell();
    @:keep
    public dynamic function _advancePC(_opAdvance:stdgo.GoInt):Void __self__.value._advancePC(_opAdvance);
    @:keep
    public dynamic function _step(_entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>):Bool return __self__.value._step(_entry);
    @:keep
    public dynamic function next(_entry:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineEntry.LineEntry>):stdgo.Error return __self__.value.next(_entry);
    @:keep
    public dynamic function _updateFile():Void __self__.value._updateFile();
    @:keep
    public dynamic function _readFileEntry():{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value._readFileEntry();
    @:keep
    public dynamic function _readLNCT(_s:stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm>, _dwarf64:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoUInt64; var _3 : stdgo.Error; } return __self__.value._readLNCT(_s, _dwarf64);
    @:keep
    public dynamic function _readLNCTFormat():stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_lnctForm.T_lnctForm> return __self__.value._readLNCTFormat();
    @:keep
    public dynamic function _readHeader(_compDir:stdgo.GoString):stdgo.Error return __self__.value._readHeader(_compDir);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
