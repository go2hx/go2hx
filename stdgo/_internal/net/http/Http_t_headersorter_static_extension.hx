package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_headerSorter_asInterface) class T_headerSorter_static_extension {
    @:keep
    @:tdfield
    static public function less( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._kvs[(_i : stdgo.GoInt)]._key < (@:checkr _s ?? throw "null pointer dereference")._kvs[(_j : stdgo.GoInt)]._key : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter> = _s;
        {
            final __tmp__0 = (@:checkr _s ?? throw "null pointer dereference")._kvs[(_j : stdgo.GoInt)];
            final __tmp__1 = (@:checkr _s ?? throw "null pointer dereference")._kvs[(_i : stdgo.GoInt)];
            final __tmp__2 = (@:checkr _s ?? throw "null pointer dereference")._kvs;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = (@:checkr _s ?? throw "null pointer dereference")._kvs;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._kvs.length);
    }
}
