package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_keysByCount_asInterface) class T_keysByCount_static_extension {
    @:keep
    static public function less( _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount> = _x;
        var __0 = (_x._keys[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString), __1 = (_x._keys[(_j : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
var _kj = __1, _ki = __0;
        var __0 = (_x._count[_ki] ?? (0 : stdgo.GoInt) : stdgo.GoInt), __1 = (_x._count[_kj] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
var _cj = __1, _ci = __0;
        if (_ci != (_cj)) {
            return (_ci > _cj : Bool);
        };
        return (_ki < _kj : Bool);
    }
    @:keep
    static public function swap( _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount> = _x;
        {
            final __tmp__0 = _x._keys[(_j : stdgo.GoInt)]?.__copy__();
            final __tmp__1 = _x._keys[(_i : stdgo.GoInt)]?.__copy__();
            final __tmp__2 = _x._keys;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _x._keys;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_keysByCount.T_keysByCount> = _x;
        return (_x._keys.length);
    }
}
