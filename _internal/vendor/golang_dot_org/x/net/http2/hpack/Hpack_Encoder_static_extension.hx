package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    static public function _shouldIndex( _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>, _f:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):Bool {
        @:recv var _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = _e;
        return (!_f.sensitive && (_f.size() <= _e._dynTab._maxSize : Bool) : Bool);
    }
    @:keep
    static public function setMaxDynamicTableSizeLimit( _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>, _v:stdgo.GoUInt32):Void {
        @:recv var _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = _e;
        _e._maxSizeLimit = _v;
        if ((_e._dynTab._maxSize > _v : Bool)) {
            _e._tableSizeUpdate = true;
            _e._dynTab._setMaxSize(_v);
        };
    }
    @:keep
    static public function maxDynamicTableSize( _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>):stdgo.GoUInt32 {
        @:recv var _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = _e;
        var _v = (0 : stdgo.GoUInt32);
        return _e._dynTab._maxSize;
    }
    @:keep
    static public function setMaxDynamicTableSize( _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>, _v:stdgo.GoUInt32):Void {
        @:recv var _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = _e;
        if ((_v > _e._maxSizeLimit : Bool)) {
            _v = _e._maxSizeLimit;
        };
        if ((_v < _e._minSize : Bool)) {
            _e._minSize = _v;
        };
        _e._tableSizeUpdate = true;
        _e._dynTab._setMaxSize(_v);
    }
    @:keep
    static public function _searchTable( _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>, _f:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = _e;
        var _i = (0 : stdgo.GoUInt64), _nameValueMatch = false;
        {
            var __tmp__ = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__staticTable._staticTable._search(_f?.__copy__());
            _i = __tmp__._0;
            _nameValueMatch = __tmp__._1;
        };
        if (_nameValueMatch) {
            return { _0 : _i, _1 : true };
        };
        var __tmp__ = _e._dynTab._table._search(_f?.__copy__()), _j:stdgo.GoUInt64 = __tmp__._0, _nameValueMatch:Bool = __tmp__._1;
        if ((_nameValueMatch || (((_i == (0i64 : stdgo.GoUInt64)) && (_j != (0i64 : stdgo.GoUInt64)) : Bool)) : Bool)) {
            return { _0 : (_j + (_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__staticTable._staticTable._len() : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : _nameValueMatch };
        };
        return { _0 : _i, _1 : false };
    }
    @:keep
    static public function writeField( _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>, _f:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):stdgo.Error {
        @:recv var _e:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = _e;
        _e._buf = (_e._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if (_e._tableSizeUpdate) {
            _e._tableSizeUpdate = false;
            if ((_e._minSize < _e._dynTab._maxSize : Bool)) {
                _e._buf = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendTableSize._appendTableSize(_e._buf, _e._minSize);
            };
            _e._minSize = (-1u32 : stdgo.GoUInt32);
            _e._buf = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendTableSize._appendTableSize(_e._buf, _e._dynTab._maxSize);
        };
        var __tmp__ = _e._searchTable(_f?.__copy__()), _idx:stdgo.GoUInt64 = __tmp__._0, _nameValueMatch:Bool = __tmp__._1;
        if (_nameValueMatch) {
            _e._buf = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendIndexed._appendIndexed(_e._buf, _idx);
        } else {
            var _indexing = (_e._shouldIndex(_f?.__copy__()) : Bool);
            if (_indexing) {
                _e._dynTab._add(_f?.__copy__());
            };
            if (_idx == ((0i64 : stdgo.GoUInt64))) {
                _e._buf = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendNewName._appendNewName(_e._buf, _f?.__copy__(), _indexing);
            } else {
                _e._buf = _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__appendIndexedName._appendIndexedName(_e._buf, _f?.__copy__(), _idx, _indexing);
            };
        };
        var __tmp__ = _e._w.write(_e._buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err == null) && (_n != (_e._buf.length)) : Bool)) {
            _err = stdgo._internal.io.Io_errShortWrite.errShortWrite;
        };
        return _err;
    }
}
