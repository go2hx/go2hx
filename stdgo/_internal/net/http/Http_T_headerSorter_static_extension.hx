package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_headerSorter_asInterface) class T_headerSorter_static_extension {
    @:keep
    static public function less( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter> = _s;
        return (_s._kvs[(_i : stdgo.GoInt)]._key < _s._kvs[(_j : stdgo.GoInt)]._key : Bool);
    }
    @:keep
    static public function swap( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter> = _s;
        {
            final __tmp__0 = _s._kvs[(_j : stdgo.GoInt)];
            final __tmp__1 = _s._kvs[(_i : stdgo.GoInt)];
            final __tmp__2 = _s._kvs;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _s._kvs;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter> = _s;
        return (_s._kvs.length);
    }
}
