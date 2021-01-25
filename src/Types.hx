

enum abstract BasicKind(Int) {
    var invalid = 0;
    var bool = 1;
    var int = 2;
    var int8 = 3;
    var int16 = 4;
    var int32 = 5;
    var int64 = 6;
    var uint = 7;
    var uint8 = 8;
    var uint16 = 9;
    var uint32 = 10;
    var uint64 = 11;
    var uintptr = 12;
    var float32 = 13;
    var float64 = 14;
    var complex64 = 15;
    var complex128 = 16;
    var string = 17;
    var unsafePointer = 18;

    var untypedBool = 19;
    var untypedInt = 20;
    var untypedRune = 21;
    var untypedFloat = 22;
    var untypedComplex = 23;
    var untypedString = 24;
    var untypedNil = 25;

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