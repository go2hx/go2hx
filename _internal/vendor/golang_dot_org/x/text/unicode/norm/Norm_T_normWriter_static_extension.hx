package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm.T_normWriter_asInterface) class T_normWriter_static_extension {
    @:keep
    static public function close( _w:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_normWriter.T_normWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_normWriter.T_normWriter> = _w;
        if (((_w._buf.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = _w._w.write(_w._buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function write( _w:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_normWriter.T_normWriter>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_normWriter.T_normWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {};
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _m = (_data.length : stdgo.GoInt);
            if ((_m > (4000 : stdgo.GoInt) : Bool)) {
                _m = (4000 : stdgo.GoInt);
            };
            _w._rb._src = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__inputBytes._inputBytes((_data.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
            _w._rb._nsrc = _m;
            _w._buf = _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__doAppend._doAppend((stdgo.Go.setRef(_w._rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer>), _w._buf, (0 : stdgo.GoInt));
            _data = (_data.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>);
            _n = (_n + (_m) : stdgo.GoInt);
            var _i = (_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm__lastBoundary._lastBoundary((stdgo.Go.setRef(_w._rb._f) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_formInfo.T_formInfo>), _w._buf) : stdgo.GoInt);
            if (_i == ((-1 : stdgo.GoInt))) {
                _i = (0 : stdgo.GoInt);
            };
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                {
                    {
                        var __tmp__ = _w._w.write((_w._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        break;
                    };
                };
                var _bn = (stdgo.Go.copySlice(_w._buf, (_w._buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                _w._buf = (_w._buf.__slice__(0, _bn) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        return { _0 : _n, _1 : _err };
    }
}
