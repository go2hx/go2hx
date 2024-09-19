package _internal.vendor.golang_dot_org.x.net.idna;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.idna.Idna.T_info_asInterface) class T_info_static_extension {
    @:keep
    static public function _isViramaModifier( _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info):Bool {
        @:recv var _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info = _c;
        return (_c & (6147 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) == ((6144 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info));
    }
    @:keep
    static public function _isModifier( _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info):Bool {
        @:recv var _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info = _c;
        return (_c & (4099 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) == ((4096 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info));
    }
    @:keep
    static public function _joinType( _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info):_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info {
        @:recv var _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info = _c;
        if (_c._isMapped()) {
            return (0 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info);
        };
        return (((_c >> (8i64 : stdgo.GoUInt64) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info)) & (7 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info);
    }
    @:keep
    static public function _category( _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info):_internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category {
        @:recv var _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info = _c;
        var _small = (_c & (3 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info);
        if (_small != ((0 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info))) {
            return (_small : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category);
        };
        return ((_c & (248 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category);
    }
    @:keep
    static public function _isMapped( _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info):Bool {
        @:recv var _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info = _c;
        return (_c & (3 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) != ((0 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info));
    }
    @:keep
    static public function _appendMapping( _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info = _c;
        var _index = ((_c >> (3i64 : stdgo.GoUInt64) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : stdgo.GoInt);
        if ((_c & (4 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) == ((0 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info))) {
            var _p = (_index : stdgo.GoInt);
            return (_b.__append__(...((_internal.vendor.golang_dot_org.x.net.idna.Idna__mappings._mappings.__slice__(_internal.vendor.golang_dot_org.x.net.idna.Idna__mappingIndex._mappingIndex[(_p : stdgo.GoInt)], _internal.vendor.golang_dot_org.x.net.idna.Idna__mappingIndex._mappingIndex[(_p + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        };
        _b = (_b.__append__(...(_s : Array<stdgo.GoUInt8>)));
        if ((_c & (57344 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) == ((57344 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info))) {
            _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] ^ ((_index : stdgo.GoUInt8)) : stdgo.GoUInt8);
        } else {
            {
                var _p = ((_b.length) - (_internal.vendor.golang_dot_org.x.net.idna.Idna__xorData._xorData[(_index : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_p < (_b.length) : Bool), _p++, {
                    _index++;
                    _b[(_p : stdgo.GoInt)] = (_b[(_p : stdgo.GoInt)] ^ (_internal.vendor.golang_dot_org.x.net.idna.Idna__xorData._xorData[(_index : stdgo.GoInt)]) : stdgo.GoUInt8);
                });
            };
        };
        return _b;
    }
    @:keep
    static public function _isBidi( _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info, _s:stdgo.GoString):Bool {
        @:recv var _c:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info = _c;
        if (!_c._isMapped()) {
            return (_c & (6144 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info) == ((2048 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info));
        };
        var __tmp__ = _internal.golang_dot_org.x.text.unicode.bidi.Bidi_lookupString.lookupString(_s?.__copy__()), _p:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        {
            final __value__ = _p.class_();
            if (__value__ == ((1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((13u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                return true;
            };
        };
        return false;
    }
}
