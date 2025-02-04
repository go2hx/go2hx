package stdgo._internal.text.tabwriter;
class Writer_asInterface {
    @:keep
    @:tdfield
    public dynamic function write(_buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_buf);
    @:keep
    @:tdfield
    public dynamic function _flushNoDefers():Void @:_0 __self__.value._flushNoDefers();
    @:keep
    @:tdfield
    public dynamic function _flush():stdgo.Error return @:_0 __self__.value._flush();
    @:keep
    @:tdfield
    public dynamic function flush():stdgo.Error return @:_0 __self__.value.flush();
    @:keep
    @:tdfield
    public dynamic function _handlePanic(_err:stdgo.Ref<stdgo.Error>, _op:stdgo.GoString):Void @:_0 __self__.value._handlePanic(_err, _op);
    @:keep
    @:tdfield
    public dynamic function _terminateCell(_htab:Bool):stdgo.GoInt return @:_0 __self__.value._terminateCell(_htab);
    @:keep
    @:tdfield
    public dynamic function _endEscape():Void @:_0 __self__.value._endEscape();
    @:keep
    @:tdfield
    public dynamic function _startEscape(_ch:stdgo.GoUInt8):Void @:_0 __self__.value._startEscape(_ch);
    @:keep
    @:tdfield
    public dynamic function _updateWidth():Void @:_0 __self__.value._updateWidth();
    @:keep
    @:tdfield
    public dynamic function _append(_text:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._append(_text);
    @:keep
    @:tdfield
    public dynamic function _format(_pos0:stdgo.GoInt, _line0:stdgo.GoInt, _line1:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._format(_pos0, _line0, _line1);
    @:keep
    @:tdfield
    public dynamic function _writeLines(_pos0:stdgo.GoInt, _line0:stdgo.GoInt, _line1:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._writeLines(_pos0, _line0, _line1);
    @:keep
    @:tdfield
    public dynamic function _writePadding(_textw:stdgo.GoInt, _cellw:stdgo.GoInt, _useTabs:Bool):Void @:_0 __self__.value._writePadding(_textw, _cellw, _useTabs);
    @:keep
    @:tdfield
    public dynamic function _writeN(_src:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):Void @:_0 __self__.value._writeN(_src, _n);
    @:keep
    @:tdfield
    public dynamic function _write0(_buf:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._write0(_buf);
    @:keep
    @:tdfield
    public dynamic function _dump():Void @:_0 __self__.value._dump();
    @:keep
    @:tdfield
    public dynamic function init(_output:stdgo._internal.io.Io_writer.Writer, _minwidth:stdgo.GoInt, _tabwidth:stdgo.GoInt, _padding:stdgo.GoInt, _padchar:stdgo.GoUInt8, _flags:stdgo.GoUInt):stdgo.Ref<stdgo._internal.text.tabwriter.Tabwriter_writer.Writer> return @:_0 __self__.value.init(_output, _minwidth, _tabwidth, _padding, _padchar, _flags);
    @:keep
    @:tdfield
    public dynamic function _reset():Void @:_0 __self__.value._reset();
    @:keep
    @:tdfield
    public dynamic function _addLine(_flushed:Bool):Void @:_0 __self__.value._addLine(_flushed);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.tabwriter.Tabwriter_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
