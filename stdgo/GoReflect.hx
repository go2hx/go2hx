package stdgo;
function deepEqual(a:Dynamic,b:Dynamic):Bool {
    #if !deep_equal
    throw "library needed for reflect deep equal https://github.com/kevinresol/deep_equal";
    return false;
    #else
    return switch deepequal.DeepEqual.compare(a,b) {
        case Success(s): true;
        case Failure(f): false;
    }
    #end
}