package stdgo._internal.internal;
class TypeInfo {
    public static var names:TypeInternalMap = {
        final names:TypeInternalMap = std.Type.createInstance(std.Type.resolveClass('TypeInfoData_go2hx_'),[]).names;
        try {
            final hxb:TypeInternalMap = std.Type.createInstance(stdgo._internal.internal.HxbTypeInfoData,[]).names;
            for (key => value in hxb) {
                names[key] = value;
            }
        }catch(e) {
            trace(e);
        }
        names;
    };
}

@:forward
private abstract TypeInternalMap(Map<String,stdgo._internal.internal.reflect.Reflect.GoType>) from Map<String,stdgo._internal.internal.reflect.Reflect.GoType> {
    public function new() {
        this = new Map();
    }
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
    private function set(s:String, value:stdgo._internal.internal.reflect.Reflect.GoType) {
        if (this == null)
            throw "TypeInternalMap null";
        this[s] = value;
    }
}