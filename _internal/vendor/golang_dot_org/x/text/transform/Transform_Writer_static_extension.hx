package _internal.vendor.golang_dot_org.x.text.transform;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.transform.Transform.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function close( _w:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_Writer.Writer> = _w;
        var _src = (_w._src.__slice__(0, _w._n) : stdgo.Slice<stdgo.GoUInt8>);
        while (true) {
            var __tmp__ = _w._t.transform(_w._dst, _src, true), _nDst:stdgo.GoInt = __tmp__._0, _nSrc:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            {
                var __tmp__ = _w._w.write((_w._dst.__slice__(0, _nDst) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _werr:stdgo.Error = __tmp__._1;
                if (_werr != null) {
                    return _werr;
                };
            };
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst))) {
                return _err;
            };
            _src = (_src.__slice__(_nSrc) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
    @:keep
    static public function write( _w:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_Writer.Writer>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_Writer.Writer> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _src = _data;
        if ((_w._n > (0 : stdgo.GoInt) : Bool)) {
            _n = stdgo.Go.copySlice((_w._src.__slice__(_w._n) : stdgo.Slice<stdgo.GoUInt8>), _data);
            _w._n = (_w._n + (_n) : stdgo.GoInt);
            _src = (_w._src.__slice__(0, _w._n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        while (true) {
            var __tmp__ = _w._t.transform(_w._dst, _src, false), _nDst:stdgo.GoInt = __tmp__._0, _nSrc:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            {
                var __tmp__ = _w._w.write((_w._dst.__slice__(0, _nDst) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _werr:stdgo.Error = __tmp__._1;
                if (_werr != null) {
                    return { _0 : _n, _1 : _werr };
                };
            };
            _src = (_src.__slice__(_nSrc) : stdgo.Slice<stdgo.GoUInt8>);
            if (_w._n == ((0 : stdgo.GoInt))) {
                _n = (_n + (_nSrc) : stdgo.GoInt);
            } else if (((_src.length) <= _n : Bool)) {
                _w._n = (0 : stdgo.GoInt);
                _n = (_n - ((_src.length)) : stdgo.GoInt);
                _src = (_data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n < (_data.length) : Bool) && (((_err == null) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc)) : Bool)) : Bool)) {
                    continue;
                };
            };
            {
                final __value__ = _err;
                if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst))) {
                    if (((_nDst > (0 : stdgo.GoInt) : Bool) || (_nSrc > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        continue;
                    };
                } else if (stdgo.Go.toInterface(__value__) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc))) {
                    if (((_src.length) < (_w._src.length) : Bool)) {
                        var _m = (stdgo.Go.copySlice(_w._src, _src) : stdgo.GoInt);
                        if (_w._n == ((0 : stdgo.GoInt))) {
                            _n = (_n + (_m) : stdgo.GoInt);
                        };
                        _w._n = _m;
                        _err = (null : stdgo.Error);
                    } else if (((_nDst > (0 : stdgo.GoInt) : Bool) || (_nSrc > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        continue;
                    };
                } else if (__value__ == null) {
                    if ((_w._n > (0 : stdgo.GoInt) : Bool)) {
                        _err = _internal.vendor.golang_dot_org.x.text.transform.Transform__errInconsistentByteCount._errInconsistentByteCount;
                    };
                };
            };
            return { _0 : _n, _1 : _err };
        };
    }
}
