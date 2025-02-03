package stdgo.reflect;
class StructTag_static_extension {
    static public function lookup(_tag:StructTag, _key:String):stdgo.Tuple<String, Bool> {
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_StructTag_static_extension.StructTag_static_extension.lookup(_tag, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function get(_tag:StructTag, _key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.reflect.Reflect_StructTag_static_extension.StructTag_static_extension.get(_tag, _key);
    }
}
