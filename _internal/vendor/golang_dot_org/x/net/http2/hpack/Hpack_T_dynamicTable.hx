package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable_static_extension.T_dynamicTable_static_extension) class T_dynamicTable {
    public var _table : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable = ({} : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable);
    public var _size : stdgo.GoUInt32 = 0;
    public var _maxSize : stdgo.GoUInt32 = 0;
    public var _allowedMaxSize : stdgo.GoUInt32 = 0;
    public function new(?_table:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable, ?_size:stdgo.GoUInt32, ?_maxSize:stdgo.GoUInt32, ?_allowedMaxSize:stdgo.GoUInt32) {
        if (_table != null) this._table = _table;
        if (_size != null) this._size = _size;
        if (_maxSize != null) this._maxSize = _maxSize;
        if (_allowedMaxSize != null) this._allowedMaxSize = _allowedMaxSize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dynamicTable(_table, _size, _maxSize, _allowedMaxSize);
    }
}
