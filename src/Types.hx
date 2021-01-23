

enum abstract BasicKind(Int) {
    var bool = 0;
    var int = 1;
    var int8 = 2;
    var int16 = 3;
    var int32 = 4;
    var int64 = 5;
    var uint = 6;
    var uint8 = 7;
    var uint16 = 8;
    var uint32 = 9;
    var uint64 = 10;
    var uintptr = 11;
    var float32 = 12;
    var float64 = 13;
    var complex64 = 14;
    var complex128 = 15;
    var string = 16;
    var unsafePointer = 17;

    var untypedBool = 18;
    var untypedInt = 19;
    var untypedRune = 20;
    var untypedFloat = 21;
    var untypedComplex = 22;
    var untypedString = 23;
    var untypedNil = 24;

    var byte = BasicKind.uint;
    var rune = BasicKind.int32;
}

typedef Type = Dynamic;

typedef Basic = {
    kind: BasicKind,
    name:String,
};

typedef Array = {
    len:Int,
    elem:Type,
};
typedef Interface = {
    methods:Array<Func>,// ordered list of explicitly declared methods
    embeddeds:Array<Type>,// ordered list of explicitly embedded types
    allMethods:Array<Func>,// ordered list of methods declared with or embedded in this interface (TODO(gri): replace with mset)
}
typedef Signature = {
    recv:Var,
    params:Tuple,
    results:Tuple,
    variadic:Bool,
};
typedef Tuple = {
    vars:Array<Var>
};
typedef Named = {
    info:Dynamic,
    obj:Dynamic,
    orig:Dynamic,
    underlying:Dynamic,
    methods:Array<Func>
};
typedef Var = Dynamic;
typedef Func = Dynamic;