

enum abstract BasicKind(Int) to Int {
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

    var byte = BasicKind.uint8;
    var rune = BasicKind.int32;
}


enum Kind {
    STRING;
    INT8;
    INT16;
    INT32;
    INT64;
    INT;
    UINT8;
    UINT16;
    UINT32;
    UINT64;
    BOOL;
    INVALID;
    UINTPTR;
    FLOAT32;
    FLOAT64;
    COMPLEX64;
    COMPLEX128;
    UNSAFE_POINTER;
    FLOAT;
    NULL;
    TYPE(name:String);
}

final numbers = [UINT8,UINT16,UINT32,UINT64,INT,INT8,INT16,INT32,INT64,UINT8,UINT16,UINT32,UINT64,COMPLEX64,COMPLEX128];

typedef TypeData = Dynamic;

typedef Basic = {
    kind: BasicKind,
    name:String,
};

typedef ArrayData = {
    len:Int,
    elem:TypeData,
};
typedef Interface = {
    methods:Array<FuncData>,// ordered list of explicitly declared methods
    embeddeds:Array<TypeData>,// ordered list of explicitly embedded types
    allMethods:Array<FuncData>,// ordered list of methods declared with or embedded in this interface (TODO(gri): replace with mset)
}
typedef Signature = {
    recv:VarData,
    params:Tuple,
    results:Tuple,
    variadic:Bool,
};
typedef Tuple = {
    vars:Array<VarData>
};
typedef Named = {
    info:Dynamic,
    obj:Dynamic,
    orig:Dynamic,
    underlying:Dynamic,
    methods:Array<FuncData>
};
typedef VarData = Dynamic;
typedef FuncData = Dynamic;