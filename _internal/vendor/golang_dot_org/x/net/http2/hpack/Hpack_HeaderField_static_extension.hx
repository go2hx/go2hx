package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack.HeaderField_asInterface) class HeaderField_static_extension {
    @:keep
    static public function size( _hf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):stdgo.GoUInt32 {
        @:recv var _hf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField = _hf?.__copy__();
        return ((((_hf.name.length) + (_hf.value.length) : stdgo.GoInt) + (32 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32);
    }
    @:keep
    static public function string( _hf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):stdgo.GoString {
        @:recv var _hf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField = _hf?.__copy__();
        var _suffix:stdgo.GoString = ("" : stdgo.GoString);
        if (_hf.sensitive) {
            _suffix = (" (sensitive)" : stdgo.GoString);
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("header field %q = %q%s" : stdgo.GoString), stdgo.Go.toInterface(_hf.name), stdgo.Go.toInterface(_hf.value), stdgo.Go.toInterface(_suffix))?.__copy__();
    }
    @:keep
    static public function isPseudo( _hf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField):Bool {
        @:recv var _hf:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField = _hf?.__copy__();
        return ((_hf.name.length != (0 : stdgo.GoInt)) && (_hf.name[(0 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool);
    }
}
