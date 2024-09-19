package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testPtrTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value null;
        var _y:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer> = stdgo.Go.pointer(_x);
        var _z:stdgo.Pointer<stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>> = stdgo.Go.pointer(_y);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _typ = (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_z)) : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _typ = stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_typ);
            });
        };
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _typ = _typ.elem();
            });
        };
        if (!((_typ.string() : String) == (stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_z)).string() : String))) {
            _t.errorf(("after 100 PointerTo and Elem, have %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_z))));
        };
    }
