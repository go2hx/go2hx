package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack.T_headerFieldTable_asInterface) class T_headerFieldTable_static_extension {
    @:keep
    static public function _idToIndex( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable>, _id:stdgo.GoUInt64):stdgo.GoUInt64 {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable> = _t;
        if ((_id <= _t._evictCount : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("id (%v) <= evictCount (%v)" : stdgo.GoString), stdgo.Go.toInterface(_id), stdgo.Go.toInterface(_t._evictCount)));
        };
        var _k = ((_id - _t._evictCount : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_t != (_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack__staticTable._staticTable)) {
            return ((_t._len() : stdgo.GoUInt64) - _k : stdgo.GoUInt64);
        };
        return (_k + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    static public function _search( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable>, _f:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable> = _t;
        var _i = (0 : stdgo.GoUInt64), _nameValueMatch = false;
        if (!_f.sensitive) {
            {
                var _id = (_t._byNameValue[(new _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue(_f.name?.__copy__(), _f.value?.__copy__()) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue)] ?? (0 : stdgo.GoUInt64) : stdgo.GoUInt64);
                if (_id != ((0i64 : stdgo.GoUInt64))) {
                    return { _0 : _t._idToIndex(_id), _1 : true };
                };
            };
        };
        {
            var _id = (_t._byName[_f.name] ?? (0 : stdgo.GoUInt64) : stdgo.GoUInt64);
            if (_id != ((0i64 : stdgo.GoUInt64))) {
                return { _0 : _t._idToIndex(_id), _1 : false };
            };
        };
        return { _0 : (0i64 : stdgo.GoUInt64), _1 : false };
    }
    @:keep
    static public function _evictOldest( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable>, _n:stdgo.GoInt):Void {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable> = _t;
        if ((_n > _t._len() : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("evictOldest(%v) on table with %v entries" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_t._len())));
        };
        {
            var _k = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_k < _n : Bool), _k++, {
                var _f = (_t._ents[(_k : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField);
                var _id = ((_t._evictCount + (_k : stdgo.GoUInt64) : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                if ((_t._byName[_f.name] ?? (0 : stdgo.GoUInt64)) == (_id)) {
                    if (_t._byName != null) _t._byName.remove(_f.name);
                };
                {
                    var _p = ((new _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue(_f.name?.__copy__(), _f.value?.__copy__()) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue);
                    if ((_t._byNameValue[_p] ?? (0 : stdgo.GoUInt64)) == (_id)) {
                        if (_t._byNameValue != null) _t._byNameValue.remove(_p);
                    };
                };
            });
        };
        stdgo.Go.copySlice(_t._ents, (_t._ents.__slice__(_n) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>));
        {
            var _k = (_t._len() - _n : stdgo.GoInt);
            stdgo.Go.cfor((_k < _t._len() : Bool), _k++, {
                _t._ents[(_k : stdgo.GoInt)] = (new _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField() : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField);
            });
        };
        _t._ents = (_t._ents.__slice__(0, (_t._len() - _n : stdgo.GoInt)) : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>);
        if (((_t._evictCount + (_n : stdgo.GoUInt64) : stdgo.GoUInt64) < _t._evictCount : Bool)) {
            throw stdgo.Go.toInterface(("evictCount overflow" : stdgo.GoString));
        };
        _t._evictCount = (_t._evictCount + ((_n : stdgo.GoUInt64)) : stdgo.GoUInt64);
    }
    @:keep
    static public function _addEntry( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable>, _f:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):Void {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable> = _t;
        var _id = (((_t._len() : stdgo.GoUInt64) + _t._evictCount : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _t._byName[_f.name] = _id;
        _t._byNameValue[(new _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue(_f.name?.__copy__(), _f.value?.__copy__()) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue)] = _id;
        _t._ents = (_t._ents.__append__(_f?.__copy__()));
    }
    @:keep
    static public function _len( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable> = _t;
        return (_t._ents.length);
    }
    @:keep
    static public function _init( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable>):Void {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_headerFieldTable.T_headerFieldTable> = _t;
        _t._byName = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoUInt64>();
            x.__defaultValue__ = () -> (0 : stdgo.GoUInt64);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>);
        _t._byNameValue = ({
            final x = new stdgo.GoMap.GoObjectMap<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue, stdgo.GoUInt64>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "_value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }));
            x.__defaultValue__ = () -> (0 : stdgo.GoUInt64);
            {};
            cast x;
        } : stdgo.GoMap<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_pairNameValue.T_pairNameValue, stdgo.GoUInt64>);
    }
}
