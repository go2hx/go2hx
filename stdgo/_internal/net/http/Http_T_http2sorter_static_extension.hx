package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2sorter_asInterface) class T_http2sorter_static_extension {
    @:keep
    static public function sortStrings( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>, _ss:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter> = _s;
        var _save = _s._v;
        _s._v = _ss;
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_s));
        _s._v = _save;
    }
    @:keep
    static public function keys( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>, _h:stdgo._internal.net.http.Http_Header.Header):stdgo.Slice<stdgo.GoString> {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter> = _s;
        var _keys = (_s._v.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        for (_k => _ in _h) {
            _keys = (_keys.__append__(_k?.__copy__()));
        };
        _s._v = _keys;
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_s));
        return _keys;
    }
    @:keep
    static public function less( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter> = _s;
        return (_s._v[(_i : stdgo.GoInt)] < _s._v[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    static public function swap( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter> = _s;
        {
            final __tmp__0 = _s._v[(_j : stdgo.GoInt)]?.__copy__();
            final __tmp__1 = _s._v[(_i : stdgo.GoInt)]?.__copy__();
            final __tmp__2 = _s._v;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _s._v;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter> = _s;
        return (_s._v.length);
    }
}
