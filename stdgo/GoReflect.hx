package stdgo;

function deepEqual(a1:Dynamic,a2:Dynamic):Bool {
    if (a1 == a2)
        return true;
    if (a1 == null || a2 == null) {
        return false;
    }
    switch Type.typeof(a1) {
        case TObject:
            var cl = Type.getClass(a1);
            var name = Type.getClassName(cl);
            trace("name: " + name);
        case TFunction:
            return Reflect.compareMethods(a1,a2);
        default:
    }
    return false;
}