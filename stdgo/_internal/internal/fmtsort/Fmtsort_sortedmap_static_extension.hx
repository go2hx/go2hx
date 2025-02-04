package stdgo._internal.internal.fmtsort;
@:keep @:allow(stdgo._internal.internal.fmtsort.Fmtsort.SortedMap_asInterface) class SortedMap_static_extension {
    @:keep
    @:tdfield
    static public function swap( _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap> = _o;
        {
            final __tmp__0 = (@:checkr _o ?? throw "null pointer dereference").key[(_j : stdgo.GoInt)];
            final __tmp__1 = (@:checkr _o ?? throw "null pointer dereference").key[(_i : stdgo.GoInt)];
            final __tmp__2 = (@:checkr _o ?? throw "null pointer dereference").key;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = (@:checkr _o ?? throw "null pointer dereference").key;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
        {
            final __tmp__0 = (@:checkr _o ?? throw "null pointer dereference").value[(_j : stdgo.GoInt)];
            final __tmp__1 = (@:checkr _o ?? throw "null pointer dereference").value[(_i : stdgo.GoInt)];
            final __tmp__2 = (@:checkr _o ?? throw "null pointer dereference").value;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = (@:checkr _o ?? throw "null pointer dereference").value;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap> = _o;
        return (stdgo._internal.internal.fmtsort.Fmtsort__compare._compare((@:checkr _o ?? throw "null pointer dereference").key[(_i : stdgo.GoInt)], (@:checkr _o ?? throw "null pointer dereference").key[(_j : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap>):stdgo.GoInt {
        @:recv var _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_sortedmap.SortedMap> = _o;
        return ((@:checkr _o ?? throw "null pointer dereference").key.length);
    }
}
