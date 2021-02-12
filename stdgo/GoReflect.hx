package stdgo;
import stdgo.StdTypes;
@:noUsing
function typeOf(a:Dynamic):Dynamic {
    return 0;
}
@:noUsing
function deepEqual(a:Dynamic,b:Dynamic):Bool {
    var cl = Type.getClass(a);
    if (cl != null) {
        var name = Type.getClassName(cl);
        var cl2 = Type.getClass(b);
        if (cl2 == null)
            return false;
        var name2 = Type.getClassName(cl2);
        if (name != name2)
            return false;
        switch name {
            case "haxe._Int64.___Int64": //standard compare
                var compare = Int64.compare(a,b);
                return compare == 0;
            case "stdgo.PointerData":
                if (a.get == null)
                    return false;
                return deepEqual(a.get(),b.get());
            case "haxe.ds.Vector":
                if (a.length != b.length)
                    return false;
                var a:haxe.ds.Vector<Dynamic> = a;
                var b:haxe.ds.Vector<Dynamic> = b;
                for (i in 0...a.length) {
                    if (!deepEqual(a[i],b[i]))
                        return false;
                }
                return true;
            case "stdgo.SliceData":
                if (a.length != b.length)
                    return false;
                var a:stdgo.Slice.SliceData<Dynamic> = a;
                var b:stdgo.Slice.SliceData<Dynamic> = b;
                for (i in 0...a.length) {
                    if (!deepEqual(a.get(i),b.get(i)))
                        return false;
                }
                return true;
            case "String":
                return a == b;
            default:
                trace("unknown reflect name: " + name);
        }
    }
    if (Reflect.isObject(a) && Reflect.isObject(b)) {
       var aFields = Reflect.fields(a);
       var bFields = Reflect.fields(b);
       if (aFields.length != bFields.length) 
           return false;
       for (i in 0...aFields.length) {
           if (Reflect.field(a,aFields[i]) != Reflect.field(b,bFields[i]))
            return false;
       }
       return true;
    }
    var bool = a == b;
    return bool;
}