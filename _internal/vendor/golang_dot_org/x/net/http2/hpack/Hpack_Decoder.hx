package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder_static_extension.Decoder_static_extension) class Decoder {
    public var _dynTab : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable = ({} : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable);
    public var _emit : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField -> Void = null;
    public var _emitEnabled : Bool = false;
    public var _maxStrLen : stdgo.GoInt = 0;
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _saveBuf : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var _firstField : Bool = false;
    public function new(?_dynTab:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable, ?_emit:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField -> Void, ?_emitEnabled:Bool, ?_maxStrLen:stdgo.GoInt, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_saveBuf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_firstField:Bool) {
        if (_dynTab != null) this._dynTab = _dynTab;
        if (_emit != null) this._emit = _emit;
        if (_emitEnabled != null) this._emitEnabled = _emitEnabled;
        if (_maxStrLen != null) this._maxStrLen = _maxStrLen;
        if (_buf != null) this._buf = _buf;
        if (_saveBuf != null) this._saveBuf = _saveBuf;
        if (_firstField != null) this._firstField = _firstField;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Decoder(_dynTab, _emit, _emitEnabled, _maxStrLen, _buf, _saveBuf, _firstField);
    }
}
