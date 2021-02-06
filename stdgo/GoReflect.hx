package stdgo;
import stdgo.GoArray.ArrayData;
import stdgo.StdTypes;
function deepEqual(a:Dynamic,b:Dynamic):Bool {
    if (a == null)
        return a == b;
    var cl = Type.getClass(a);
    if (cl != null) {
        var name = Type.getClassName(cl);
        switch name {
            case "stdgo.ArrayData":
                if (a.vector.length != b.vector.length)
                    return false;
                var a:ArrayData<Dynamic> = a;
                var b:ArrayData<Dynamic> = b;
                for (i in 0...a.vector.length) {
                    if (!deepEqual(a.vector[i],b.vector[i]))
                        return false;
                }
                return true;
            case "String":
                return a == b;
            default:
                trace("unknown reflect name: " + name);
        }
    }
    return a == b;
}