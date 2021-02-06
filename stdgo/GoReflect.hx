package stdgo;
import stdgo.GoArray.ArrayData;
import stdgo.StdTypes;
function deepEqual(a:Dynamic,b:Dynamic):Bool {
    if (a == null)
        return a == b;
    try {
        if (Std.isOfType(a,ArrayData)) {
            if (a.length != b.length)
                return false;
            for (i in 0...a.length) {
                if (a[i] != b[i])
                    return false;
            }
            return true;
        }
    }catch(e) {
        return false;
    }
    return a == b;
}