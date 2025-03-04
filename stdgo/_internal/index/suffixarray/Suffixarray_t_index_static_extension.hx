package stdgo._internal.index.suffixarray;
@:keep @:allow(stdgo._internal.index.suffixarray.Suffixarray.T_index_asInterface) class T_index_static_extension {
    @:keep
    @:tdfield
    static public function _at( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index> = _x;
        return ((@:checkr _x ?? throw "null pointer dereference")._data.__slice__(@:check2 (@:checkr _x ?? throw "null pointer dereference")._sa._get(_i)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function swap( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index> = _x;
        if ((@:checkr _x ?? throw "null pointer dereference")._sa._int32 != null) {
            {
                final __tmp__0 = (@:checkr _x ?? throw "null pointer dereference")._sa._int32[(_j : stdgo.GoInt)];
                final __tmp__1 = (@:checkr _x ?? throw "null pointer dereference")._sa._int32[(_i : stdgo.GoInt)];
                final __tmp__2 = (@:checkr _x ?? throw "null pointer dereference")._sa._int32;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = (@:checkr _x ?? throw "null pointer dereference")._sa._int32;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
        } else {
            {
                final __tmp__0 = (@:checkr _x ?? throw "null pointer dereference")._sa._int64[(_j : stdgo.GoInt)];
                final __tmp__1 = (@:checkr _x ?? throw "null pointer dereference")._sa._int64[(_i : stdgo.GoInt)];
                final __tmp__2 = (@:checkr _x ?? throw "null pointer dereference")._sa._int64;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = (@:checkr _x ?? throw "null pointer dereference")._sa._int64;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
        };
    }
    @:keep
    @:tdfield
    static public function less( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index> = _x;
        return (stdgo._internal.bytes.Bytes_compare.compare(@:check2r _x._at(_i), @:check2r _x._at(_j)) < (0 : stdgo.GoInt) : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index> = _x;
        return @:check2 (@:checkr _x ?? throw "null pointer dereference")._sa._len();
    }
}
