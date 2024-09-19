package stdgo._internal.internal.fmtsort;
@:keep @:allow(stdgo._internal.internal.fmtsort.Fmtsort.SortedMap_asInterface) class SortedMap_static_extension {
    @:keep
    static public function swap( _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_SortedMap.SortedMap>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_SortedMap.SortedMap> = _o;
        {
            final __tmp__0 = _o.key[(_j : stdgo.GoInt)];
            final __tmp__1 = _o.key[(_i : stdgo.GoInt)];
            final __tmp__2 = _o.key;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _o.key;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
        {
            final __tmp__0 = _o.value[(_j : stdgo.GoInt)];
            final __tmp__1 = _o.value[(_i : stdgo.GoInt)];
            final __tmp__2 = _o.value;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _o.value;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_SortedMap.SortedMap>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_SortedMap.SortedMap> = _o;
        return (stdgo._internal.internal.fmtsort.Fmtsort__compare._compare(_o.key[(_i : stdgo.GoInt)], _o.key[(_j : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool);
    }
    @:keep
    static public function len( _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_SortedMap.SortedMap>):stdgo.GoInt {
        @:recv var _o:stdgo.Ref<stdgo._internal.internal.fmtsort.Fmtsort_SortedMap.SortedMap> = _o;
        return (_o.key.length);
    }
}
