package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2sorter_asInterface) class T_http2sorter_static_extension {
    @:keep
    @:tdfield
    static public function sortStrings( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>, _ss:stdgo.Slice<stdgo.GoString>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter> = _s;
        var _save = (@:checkr _s ?? throw "null pointer dereference")._v;
        (@:checkr _s ?? throw "null pointer dereference")._v = _ss;
        stdgo._internal.net.http.Http__sort._sort.sort(stdgo.Go.asInterface(_s));
        (@:checkr _s ?? throw "null pointer dereference")._v = _save;
    }
    @:keep
    @:tdfield
    static public function keys( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>, _h:stdgo._internal.net.http.Http_header.Header):stdgo.Slice<stdgo.GoString> {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter> = _s;
        var _keys = ((@:checkr _s ?? throw "null pointer dereference")._v.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        for (_k => _ in _h) {
            _keys = (_keys.__append__(_k?.__copy__()));
        };
        (@:checkr _s ?? throw "null pointer dereference")._v = _keys;
        stdgo._internal.net.http.Http__sort._sort.sort(stdgo.Go.asInterface(_s));
        return _keys;
    }
    @:keep
    @:tdfield
    static public function less( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._v[(_i : stdgo.GoInt)] < (@:checkr _s ?? throw "null pointer dereference")._v[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter> = _s;
        {
            final __tmp__0 = (@:checkr _s ?? throw "null pointer dereference")._v[(_j : stdgo.GoInt)]?.__copy__();
            final __tmp__1 = (@:checkr _s ?? throw "null pointer dereference")._v[(_i : stdgo.GoInt)]?.__copy__();
            final __tmp__2 = (@:checkr _s ?? throw "null pointer dereference")._v;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = (@:checkr _s ?? throw "null pointer dereference")._v;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._v.length);
    }
}
