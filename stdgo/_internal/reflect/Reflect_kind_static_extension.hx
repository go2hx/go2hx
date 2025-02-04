package stdgo._internal.reflect;
@:keep @:allow(stdgo._internal.reflect.Reflect.Kind_asInterface) class Kind_static_extension {
    @:keep
    @:tdfield
    static public function string( _k:stdgo._internal.reflect.Reflect_kind.Kind):stdgo.GoString {
        @:recv var _k:stdgo._internal.reflect.Reflect_kind.Kind = _k;
        var idx:Int = _k.toBasic();
        return switch idx {
            case 0:
                "invalid";
            case 1:
                "bool";
            case 2:
                "int";
            case 3:
                "int8";
            case 4:
                "int16";
            case 5:
                "int32";
            case 6:
                "int64";
            case 7:
                "uint";
            case 8:
                "uint8";
            case 9:
                "uint16";
            case 10:
                "uint32";
            case 11:
                "uint64";
            case 12:
                "uintptr";
            case 13:
                "float32";
            case 14:
                "float64";
            case 15:
                "complex64";
            case 16:
                "complex128";
            case 17:
                "array";
            case 18:
                "chan";
            case 19:
                "func";
            case 20:
                "interface";
            case 21:
                "map";
            case 22:
                "ptr";
            case 23:
                "slice";
            case 24:
                "string";
            case 25:
                "struct";
            case 26:
                "unsafe.Pointer";
            default:
                throw "unknown kind string: " + idx;
        };
    }
}
