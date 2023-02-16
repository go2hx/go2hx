package stdgo.internal;
class TypeInfo {
    public static var names:TypeInternalMap = std.Type.createInstance(std.Type.resolveClass('TypeInfoData'),[]).names;

}

private abstract TypeInternalMap(Map<String,stdgo.internal.reflect.Reflect.GoType>) from Map<String,stdgo.internal.reflect.Reflect.GoType> {
    @:op([])
    private function get(s:String) {
        if (this == null)
            throw "TypeInternalMap null";
        final value = this[s];
        if (value == null)
            trace("null value: " + s);
        return value;
    }
}