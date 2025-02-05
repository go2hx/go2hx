package stdgo._internal.internal;
class TypeInfo {
    public static var names:TypeInternalMap = {
        final names:TypeInternalMap = std.Type.createInstance(std.Type.resolveClass('TypeInfoData_go2hx_'),[]).names;
        /*try {
            final hxb:TypeInternalMap = std.Type.createInstance(stdgo._internal.internal.HxbTypeInfoData,[]).names;
            for (key => value in hxb) {
                names[key] = value;
            }
        }catch(e) {
            trace(e);
        }*/
        names;
    };
}

typedef TypeInternalMap = Map<String,stdgo._internal.internal.reflect.Reflect.GoType>;