package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack.T_dynamicTable_asInterface) class T_dynamicTable_static_extension {
    @:keep
    static public function _evict( _dt:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable>):Void {
        @:recv var _dt:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable> = _dt;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        while (((_dt._size > _dt._maxSize : Bool) && (_n < _dt._table._len() : Bool) : Bool)) {
            _dt._size = (_dt._size - (_dt._table._ents[(_n : stdgo.GoInt)].size()) : stdgo.GoUInt32);
            _n++;
        };
        _dt._table._evictOldest(_n);
    }
    @:keep
    static public function _add( _dt:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable>, _f:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):Void {
        @:recv var _dt:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable> = _dt;
        _dt._table._addEntry(_f?.__copy__());
        _dt._size = (_dt._size + (_f.size()) : stdgo.GoUInt32);
        _dt._evict();
    }
    @:keep
    static public function _setMaxSize( _dt:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable>, _v:stdgo.GoUInt32):Void {
        @:recv var _dt:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_dynamicTable.T_dynamicTable> = _dt;
        _dt._maxSize = _v;
        _dt._evict();
    }
}
