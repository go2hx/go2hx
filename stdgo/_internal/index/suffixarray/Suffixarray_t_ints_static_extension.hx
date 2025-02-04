package stdgo._internal.index.suffixarray;
@:keep @:allow(stdgo._internal.index.suffixarray.Suffixarray.T_ints_asInterface) class T_ints_static_extension {
    @:keep
    @:tdfield
    static public function _slice( _a:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints>, _i:stdgo.GoInt, _j:stdgo.GoInt):stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints {
        @:recv var _a:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints> = _a;
        if ((@:checkr _a ?? throw "null pointer dereference")._int32 != null) {
            return (new stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints(((@:checkr _a ?? throw "null pointer dereference")._int32.__slice__(_i, _j) : stdgo.Slice<stdgo.GoInt32>), (null : stdgo.Slice<stdgo.GoInt64>)) : stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints);
        };
        return (new stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints((null : stdgo.Slice<stdgo.GoInt32>), ((@:checkr _a ?? throw "null pointer dereference")._int64.__slice__(_i, _j) : stdgo.Slice<stdgo.GoInt64>)) : stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints);
    }
    @:keep
    @:tdfield
    static public function _set( _a:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints>, _i:stdgo.GoInt, _v:stdgo.GoInt64):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints> = _a;
        if ((@:checkr _a ?? throw "null pointer dereference")._int32 != null) {
            (@:checkr _a ?? throw "null pointer dereference")._int32[(_i : stdgo.GoInt)] = (_v : stdgo.GoInt32);
        } else {
            (@:checkr _a ?? throw "null pointer dereference")._int64[(_i : stdgo.GoInt)] = _v;
        };
    }
    @:keep
    @:tdfield
    static public function _get( _a:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints>, _i:stdgo.GoInt):stdgo.GoInt64 {
        @:recv var _a:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints> = _a;
        if ((@:checkr _a ?? throw "null pointer dereference")._int32 != null) {
            return ((@:checkr _a ?? throw "null pointer dereference")._int32[(_i : stdgo.GoInt)] : stdgo.GoInt64);
        };
        return (@:checkr _a ?? throw "null pointer dereference")._int64[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _len( _a:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints>):stdgo.GoInt {
        @:recv var _a:stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints> = _a;
        return (((@:checkr _a ?? throw "null pointer dereference")._int32.length) + ((@:checkr _a ?? throw "null pointer dereference")._int64.length) : stdgo.GoInt);
    }
}
