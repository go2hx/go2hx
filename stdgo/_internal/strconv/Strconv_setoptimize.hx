package stdgo._internal.strconv;
function setOptimize(_b:Bool):Bool {
        var _old = (stdgo._internal.strconv.Strconv__optimize._optimize : Bool);
        stdgo._internal.strconv.Strconv__optimize._optimize = _b;
        return _old;
    }
