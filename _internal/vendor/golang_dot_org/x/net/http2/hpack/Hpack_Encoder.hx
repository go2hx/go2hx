package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder_static_extension.Encoder_static_extension) class Encoder {
    public var _dynTab : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable = ({} : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable);
    public var _minSize : stdgo.GoUInt32 = 0;
    public var _maxSizeLimit : stdgo.GoUInt32 = 0;
    public var _tableSizeUpdate : Bool = false;
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_dynTab:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable, ?_minSize:stdgo.GoUInt32, ?_maxSizeLimit:stdgo.GoUInt32, ?_tableSizeUpdate:Bool, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_dynTab != null) this._dynTab = _dynTab;
        if (_minSize != null) this._minSize = _minSize;
        if (_maxSizeLimit != null) this._maxSizeLimit = _maxSizeLimit;
        if (_tableSizeUpdate != null) this._tableSizeUpdate = _tableSizeUpdate;
        if (_w != null) this._w = _w;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoder(_dynTab, _minSize, _maxSizeLimit, _tableSizeUpdate, _w, _buf);
    }
}
