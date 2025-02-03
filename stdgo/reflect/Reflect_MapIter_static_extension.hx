package stdgo.reflect;
class MapIter_static_extension {
    static public function reset(_iter:MapIter, _v:Value):Void {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>);
        stdgo._internal.reflect.Reflect_MapIter_static_extension.MapIter_static_extension.reset(_iter, _v);
    }
    static public function next(_iter:MapIter):Bool {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>);
        return stdgo._internal.reflect.Reflect_MapIter_static_extension.MapIter_static_extension.next(_iter);
    }
    static public function value(_iter:MapIter):Value {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>);
        return stdgo._internal.reflect.Reflect_MapIter_static_extension.MapIter_static_extension.value(_iter);
    }
    static public function key(_iter:MapIter):Value {
        final _iter = (_iter : stdgo.Ref<stdgo._internal.reflect.Reflect_MapIter.MapIter>);
        return stdgo._internal.reflect.Reflect_MapIter_static_extension.MapIter_static_extension.key(_iter);
    }
}
