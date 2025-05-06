package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_nodeQueue_asInterface) class T_nodeQueue_static_extension {
    @:keep
    @:tdfield
    static public function pop( _a:stdgo.Ref<stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue>):stdgo.AnyInterface {
        @:recv var _a:stdgo.Ref<stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue> = _a;
        var _n = ((_a : stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue).length : stdgo.GoInt);
        var _x = ((_a : stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue))[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        (@:checkr _x ?? throw "null pointer dereference")._index = (-1 : stdgo.GoInt);
        (_a : stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue).__setData__((((_a : stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue)).__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue));
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L324"
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_x));
    }
    @:keep
    @:tdfield
    static public function push( _a:stdgo.Ref<stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue>, _x:stdgo.AnyInterface):Void {
        @:recv var _a:stdgo.Ref<stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue> = _a;
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L316"
        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function less( _a:stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _a:stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue = _a;
        var __0 = _a[(_i : stdgo.GoInt)], __1 = _a[(_j : stdgo.GoInt)];
var _y = __1, _x = __0;
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L312"
        return (((@:checkr _x ?? throw "null pointer dereference")._ndeps < (@:checkr _y ?? throw "null pointer dereference")._ndeps : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._ndeps == ((@:checkr _y ?? throw "null pointer dereference")._ndeps) && ((@:checkr _x ?? throw "null pointer dereference")._obj._order() < (@:checkr _y ?? throw "null pointer dereference")._obj._order() : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _a:stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _a:stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue = _a;
        var __0 = _a[(_i : stdgo.GoInt)], __1 = _a[(_j : stdgo.GoInt)];
var _y = __1, _x = __0;
        {
            final __tmp__0 = _y;
            final __tmp__1 = _x;
            final __tmp__2 = _a;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _a;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        {
            final __tmp__0 = _j;
            final __tmp__1 = _i;
            (@:checkr _x ?? throw "null pointer dereference")._index = @:binopAssign __tmp__0;
            (@:checkr _y ?? throw "null pointer dereference")._index = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _a:stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue):stdgo.GoInt {
        @:recv var _a:stdgo._internal.go.types.Types_t_nodequeue.T_nodeQueue = _a;
        //"file:///home/runner/.go/go1.21.3/src/go/types/initorder.go#L300"
        return (_a.length);
    }
}
