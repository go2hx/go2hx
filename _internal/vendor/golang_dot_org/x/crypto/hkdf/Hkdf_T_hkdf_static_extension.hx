package _internal.vendor.golang_dot_org.x.crypto.hkdf;
@:keep @:allow(_internal.vendor.golang_dot_org.x.crypto.hkdf.Hkdf.T_hkdf_asInterface) class T_hkdf_static_extension {
    @:keep
    static public function read( _f:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.hkdf.Hkdf_T_hkdf.T_hkdf>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.hkdf.Hkdf_T_hkdf.T_hkdf> = _f;
        var _need = (_p.length : stdgo.GoInt);
        var _remains = ((_f._buf.length) + (((((255 : stdgo.GoUInt8) - _f._counter : stdgo.GoUInt8) + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) * _f._size : stdgo.GoInt) : stdgo.GoInt);
        if ((_remains < _need : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("hkdf: entropy limit reached" : stdgo.GoString)) };
        };
        var _n = (stdgo.Go.copySlice(_p, _f._buf) : stdgo.GoInt);
        _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            _f._expander.reset();
            _f._expander.write(_f._prev);
            _f._expander.write(_f._info);
            _f._expander.write((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[_f._counter]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            _f._prev = _f._expander.sum((_f._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _f._counter++;
            _f._buf = _f._prev;
            _n = stdgo.Go.copySlice(_p, _f._buf);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _f._buf = (_f._buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : _need, _1 : (null : stdgo.Error) };
    }
}
