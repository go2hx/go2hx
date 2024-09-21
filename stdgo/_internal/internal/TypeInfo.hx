package stdgo._internal.internal;
class TypeInfo {
    public static var names:TypeInternalMap = {
        final names:TypeInternalMap = new TypeInfoData_go2hx_hxb().names;//std.Type.createInstance(std.Type.resolveClass('TypeInfoData_go2hx_'),[]).names;
        try {
            final names2:TypeInternalMap = untyped cast std.Type.createInstance(std.Type.resolveClass('TypeInfoData_go2hx_'),[]).names;
            for (key => value in names2)
                untyped names[key] = value;
        }catch(e) {
            //trace(e);
        }
        names;
    };
}

typedef TypeInternalMap = Map<String,stdgo._internal.internal.reflect.Reflect.GoType>;