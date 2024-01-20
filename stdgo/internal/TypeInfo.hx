package stdgo.internal;
class TypeInfo {
    #if hxb
    public static var names:TypeInternalMap = std.Type.createInstance(std.Type.resolveClass('TypeInfoData_go2hx_hxb'),[]).names;
    #else
    public static var names:TypeInternalMap = std.Type.createInstance(std.Type.resolveClass('TypeInfoData_go2hx_hx'),[]).names;
    #end
}

@:forward
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
    @:op([])
    private function set(s:String, value:stdgo.internal.reflect.Reflect.GoType) {
        if (this == null)
            throw "TypeInternalMap null";
        this[s] = value;
    }
}