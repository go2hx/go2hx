package stdgo._internal.reflect;
@:keep @:allow(stdgo._internal.reflect.Reflect.MapIter_asInterface) class MapIter_static_extension {
    @:keep
    @:tdfield
    static public function reset( _iter:stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>, _v:stdgo._internal.reflect.Reflect_value.Value):Void @:splitdeps {
        @:privateAccess _iter.index = 0;
        @:privateAccess _iter.map = _v.value.value;
        @:privateAccess _iter.keys = null;
        @:privateAccess _iter.values = null;
    };
    @:keep
    @:tdfield
    static public function next( _iter:stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>):Bool @:splitdeps {
        if (@:privateAccess _iter.map == null) return false;
        @:privateAccess if (_iter.keys == null) {
            @:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
            @:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
        } else {
            @:privateAccess _iter.index++;
        };
        return @:privateAccess _iter.index < @:privateAccess _iter.keys.length;
    };
    @:keep
    @:tdfield
    static public function value( _iter:stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>):stdgo._internal.reflect.Reflect_value.Value @:splitdeps {
        @:privateAccess if (_iter.keys == null) {
            @:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
            @:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
        };
        final gt = stdgo._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
        final value = switch gt {
            case mapType(_, _.get() => valueType):
                new stdgo._internal.internal.reflect.Reflect._Type(valueType);
            default:
                throw "invalid mapType: " + gt;
        };
        return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(@:privateAccess _iter.values[_iter.index], value));
    };
    @:keep
    @:tdfield
    static public function key( _iter:stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>):stdgo._internal.reflect.Reflect_value.Value @:splitdeps {
        @:privateAccess if (_iter.keys == null) {
            @:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
            @:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
        };
        final gt = stdgo._internal.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
        final key = switch gt {
            case mapType(_.get() => var keyType, _):
                new stdgo._internal.internal.reflect.Reflect._Type(keyType);
            default:
                throw "invalid mapType: " + gt;
        };
        return new stdgo._internal.reflect.Reflect_value.Value(new stdgo.AnyInterface(@:privateAccess _iter.keys[_iter.index], key));
    };
}
