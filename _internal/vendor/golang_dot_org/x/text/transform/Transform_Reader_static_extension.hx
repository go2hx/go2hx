package _internal.vendor.golang_dot_org.x.text.transform;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.transform.Transform.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_Reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.transform.Transform_Reader.Reader> = _r;
        var __0 = (0 : stdgo.GoInt), __1 = ((null : stdgo.Error) : stdgo.Error);
var _err = __1, _n = __0;
        while (true) {
            if (_r._dst0 != (_r._dst1)) {
                _n = stdgo.Go.copySlice(_p, (_r._dst.__slice__(_r._dst0, _r._dst1) : stdgo.Slice<stdgo.GoUInt8>));
                _r._dst0 = (_r._dst0 + (_n) : stdgo.GoInt);
                if (((_r._dst0 == _r._dst1) && _r._transformComplete : Bool)) {
                    return { _0 : _n, _1 : _r._err };
                };
                return { _0 : _n, _1 : (null : stdgo.Error) };
            } else if (_r._transformComplete) {
                return { _0 : (0 : stdgo.GoInt), _1 : _r._err };
            };
            if (((_r._src0 != _r._src1) || (_r._err != null) : Bool)) {
                _r._dst0 = (0 : stdgo.GoInt);
                {
                    var __tmp__ = _r._t.transform(_r._dst, (_r._src.__slice__(_r._src0, _r._src1) : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(_r._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)));
                    _r._dst1 = __tmp__._0;
                    _n = __tmp__._1;
                    _err = __tmp__._2;
                };
                _r._src0 = (_r._src0 + (_n) : stdgo.GoInt);
                if (_err == null) {
                    if (_r._src0 != (_r._src1)) {
                        _r._err = _internal.vendor.golang_dot_org.x.text.transform.Transform__errInconsistentByteCount._errInconsistentByteCount;
                    };
                    _r._transformComplete = _r._err != null;
                    continue;
                } else if (((stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst)) && (((_r._dst1 != (0 : stdgo.GoInt)) || (_n != (0 : stdgo.GoInt)) : Bool)) : Bool)) {
                    continue;
                } else if (((stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(_internal.vendor.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc)) && (_r._src1 - _r._src0 : stdgo.GoInt) != ((_r._src.length)) : Bool) && (_r._err == null) : Bool)) {} else {
                    _r._transformComplete = true;
                    if (((_r._err == null) || (stdgo.Go.toInterface(_r._err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) {
                        _r._err = _err;
                    };
                    continue;
                };
            };
            if (_r._src0 != ((0 : stdgo.GoInt))) {
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = stdgo.Go.copySlice(_r._src, (_r._src.__slice__(_r._src0, _r._src1) : stdgo.Slice<stdgo.GoUInt8>));
                    _r._src0 = __tmp__0;
                    _r._src1 = __tmp__1;
                };
            };
            {
                var __tmp__ = _r._r.read((_r._src.__slice__(_r._src1) : stdgo.Slice<stdgo.GoUInt8>));
                _n = __tmp__._0;
                _r._err = __tmp__._1;
            };
            _r._src1 = (_r._src1 + (_n) : stdgo.GoInt);
        };
    }
}
