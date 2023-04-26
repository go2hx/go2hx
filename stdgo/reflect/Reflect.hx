package stdgo.reflect;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package reflect implements run-time reflection, allowing a program to
    // manipulate objects with arbitrary types. The typical use is to take a value
    // with static type interface{} and extract its dynamic type information by
    // calling TypeOf, which returns a Type.
    //
    // A call to ValueOf returns a Value representing the run-time data.
    // Zero takes a Type and returns a Value representing a zero value
    // for that type.
    //
    // See "The Laws of Reflection" for an introduction to reflection in Go:
    // https://golang.org/doc/articles/laws_of_reflection.html
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
final invalid : Kind = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final bool_ = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final int_ = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final int8 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final int16 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final int32 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final int64 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final uint = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final uint8 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final uint16 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final uint32 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final uint64 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final uintptr = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final float32 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final float64 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final complex64 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final complex128 = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final array = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final chan = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final func = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final interface_ = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final map = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final pointer = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final slice = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final string = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final struct_ = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    
**/
final unsafePointer = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    // Ptr is the old name for the Pointer kind.
    
    
**/
final ptr = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
/**
    
    
    // <-chan
**/
final recvDir : ChanDir = ((0 : GoInt) : stdgo.reflect.Reflect.ChanDir);
/**
    
    
    // chan<-
**/
final sendDir = ((0 : GoInt) : stdgo.reflect.Reflect.ChanDir);
/**
    
    
    // chan
**/
final bothDir = ((0 : GoInt) : stdgo.reflect.Reflect.ChanDir);
/**
    
    
    // case Chan <- Send
**/
final selectSend = @:unknown_default_value null;
/**
    
    
    // case <-Chan:
**/
final selectRecv = @:unknown_default_value null;
/**
    
    
    // default
**/
final selectDefault = @:unknown_default_value null;
/**
    // Type is the representation of a Go type.
    //
    // Not all methods apply to all kinds of types. Restrictions,
    // if any, are noted in the documentation for each method.
    // Use the Kind method to find out the kind of type before
    // calling kind-specific methods. Calling a method
    // inappropriate to the kind of type causes a run-time panic.
    //
    // Type values are comparable, such as with the == operator,
    // so they can be used as map keys.
    // Two Type values are equal if they represent identical types.
    
    
**/
typedef Type = StructType & {
    /**
        // Align returns the alignment in bytes of a value of
        // this type when allocated in memory.
        
        
    **/
    public dynamic function align():GoInt;
    /**
        // FieldAlign returns the alignment in bytes of a value of
        // this type when used as a field in a struct.
        
        
    **/
    public dynamic function fieldAlign():GoInt;
    /**
        // Method returns the i'th method in the type's method set.
        // It panics if i is not in the range [0, NumMethod()).
        //
        // For a non-interface type T or *T, the returned Method's Type and Func
        // fields describe a function whose first argument is the receiver,
        // and only exported methods are accessible.
        //
        // For an interface type, the returned Method's Type field gives the
        // method signature, without a receiver, and the Func field is nil.
        //
        // Methods are sorted in lexicographic order.
        
        
    **/
    public dynamic function method(_0:GoInt):Method;
    /**
        // MethodByName returns the method with that name in the type's
        // method set and a boolean indicating if the method was found.
        //
        // For a non-interface type T or *T, the returned Method's Type and Func
        // fields describe a function whose first argument is the receiver.
        //
        // For an interface type, the returned Method's Type field gives the
        // method signature, without a receiver, and the Func field is nil.
        
        
    **/
    public dynamic function methodByName(_0:GoString):{ var _0 : Method; var _1 : Bool; };
    /**
        // NumMethod returns the number of methods accessible using Method.
        //
        // For a non-interface type, it returns the number of exported methods.
        //
        // For an interface type, it returns the number of exported and unexported methods.
        
        
    **/
    public dynamic function numMethod():GoInt;
    /**
        // Name returns the type's name within its package for a defined type.
        // For other (non-defined) types it returns the empty string.
        
        
    **/
    public dynamic function name():GoString;
    /**
        // PkgPath returns a defined type's package path, that is, the import path
        // that uniquely identifies the package, such as "encoding/base64".
        // If the type was predeclared (string, error) or not defined (*T, struct{},
        // []int, or A where A is an alias for a non-defined type), the package path
        // will be the empty string.
        
        
    **/
    public dynamic function pkgPath():GoString;
    /**
        // Size returns the number of bytes needed to store
        // a value of the given type; it is analogous to unsafe.Sizeof.
        
        
    **/
    public dynamic function size():GoUIntptr;
    /**
        // String returns a string representation of the type.
        // The string representation may use shortened package names
        // (e.g., base64 instead of "encoding/base64") and is not
        // guaranteed to be unique among types. To test for type identity,
        // compare the Types directly.
        
        
    **/
    public dynamic function string():GoString;
    /**
        // Kind returns the specific kind of this type.
        
        
    **/
    public dynamic function kind():Kind;
    /**
        // Implements reports whether the type implements the interface type u.
        
        
    **/
    public dynamic function implements_(_u:Type):Bool;
    /**
        // AssignableTo reports whether a value of the type is assignable to type u.
        
        
    **/
    public dynamic function assignableTo(_u:Type):Bool;
    /**
        // ConvertibleTo reports whether a value of the type is convertible to type u.
        // Even if ConvertibleTo returns true, the conversion may still panic.
        // For example, a slice of type []T is convertible to *[N]T,
        // but the conversion will panic if its length is less than N.
        
        
    **/
    public dynamic function convertibleTo(_u:Type):Bool;
    /**
        // Comparable reports whether values of this type are comparable.
        // Even if Comparable returns true, the comparison may still panic.
        // For example, values of interface type are comparable,
        // but the comparison will panic if their dynamic type is not comparable.
        
        
    **/
    public dynamic function comparable():Bool;
    /**
        // Bits returns the size of the type in bits.
        // It panics if the type's Kind is not one of the
        // sized or unsized Int, Uint, Float, or Complex kinds.
        
        
    **/
    public dynamic function bits():GoInt;
    /**
        // ChanDir returns a channel type's direction.
        // It panics if the type's Kind is not Chan.
        
        
    **/
    public dynamic function chanDir():ChanDir;
    /**
        // IsVariadic reports whether a function type's final input parameter
        // is a "..." parameter. If so, t.In(t.NumIn() - 1) returns the parameter's
        // implicit actual type []T.
        //
        // For concreteness, if t represents func(x int, y ... float64), then
        //
        //	t.NumIn() == 2
        //	t.In(0) is the reflect.Type for "int"
        //	t.In(1) is the reflect.Type for "[]float64"
        //	t.IsVariadic() == true
        //
        // IsVariadic panics if the type's Kind is not Func.
        
        
    **/
    public dynamic function isVariadic():Bool;
    /**
        // Elem returns a type's element type.
        // It panics if the type's Kind is not Array, Chan, Map, Pointer, or Slice.
        
        
    **/
    public dynamic function elem():Type;
    /**
        // Field returns a struct type's i'th field.
        // It panics if the type's Kind is not Struct.
        // It panics if i is not in the range [0, NumField()).
        
        
    **/
    public dynamic function field(_i:GoInt):StructField;
    /**
        // FieldByIndex returns the nested field corresponding
        // to the index sequence. It is equivalent to calling Field
        // successively for each index i.
        // It panics if the type's Kind is not Struct.
        
        
    **/
    public dynamic function fieldByIndex(_index:Slice<GoInt>):StructField;
    /**
        // FieldByName returns the struct field with the given name
        // and a boolean indicating if the field was found.
        
        
    **/
    public dynamic function fieldByName(_name:GoString):{ var _0 : StructField; var _1 : Bool; };
    /**
        // FieldByNameFunc returns the struct field with a name
        // that satisfies the match function and a boolean indicating if
        // the field was found.
        //
        // FieldByNameFunc considers the fields in the struct itself
        // and then the fields in any embedded structs, in breadth first order,
        // stopping at the shallowest nesting depth containing one or more
        // fields satisfying the match function. If multiple fields at that depth
        // satisfy the match function, they cancel each other
        // and FieldByNameFunc returns no match.
        // This behavior mirrors Go's handling of name lookup in
        // structs containing embedded fields.
        
        
    **/
    public dynamic function fieldByNameFunc(_match:GoString -> Bool):{ var _0 : StructField; var _1 : Bool; };
    /**
        // In returns the type of a function type's i'th input parameter.
        // It panics if the type's Kind is not Func.
        // It panics if i is not in the range [0, NumIn()).
        
        
    **/
    public dynamic function in_(_i:GoInt):Type;
    /**
        // Key returns a map type's key type.
        // It panics if the type's Kind is not Map.
        
        
    **/
    public dynamic function key():Type;
    /**
        // Len returns an array type's length.
        // It panics if the type's Kind is not Array.
        
        
    **/
    public dynamic function len():GoInt;
    /**
        // NumField returns a struct type's field count.
        // It panics if the type's Kind is not Struct.
        
        
    **/
    public dynamic function numField():GoInt;
    /**
        // NumIn returns a function type's input parameter count.
        // It panics if the type's Kind is not Func.
        
        
    **/
    public dynamic function numIn():GoInt;
    /**
        // NumOut returns a function type's output parameter count.
        // It panics if the type's Kind is not Func.
        
        
    **/
    public dynamic function numOut():GoInt;
    /**
        // Out returns the type of a function type's i'th output parameter.
        // It panics if the type's Kind is not Func.
        // It panics if i is not in the range [0, NumOut()).
        
        
    **/
    public dynamic function out(_i:GoInt):Type;
};
/**
    // Method represents a single method.
    
    
**/
@:structInit @:using(stdgo.reflect.Reflect.Method_static_extension) class Method {
    /**
        // Name is the method name.
    **/
    public var name : GoString = "";
    /**
        // PkgPath is the package path that qualifies a lower case (unexported)
        // method name. It is empty for upper case (exported) method names.
        // The combination of PkgPath and Name uniquely identifies a method
        // in a method set.
        // See https://golang.org/ref/spec#Uniqueness_of_identifiers
    **/
    public var pkgPath : GoString = "";
    public var type : stdgo.reflect.Reflect.Type = (null : stdgo.reflect.Reflect.Type);
    public var func : stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
    public var index : GoInt = 0;
    public function new(?name:GoString, ?pkgPath:GoString, ?type:stdgo.reflect.Reflect.Type, ?func:stdgo.reflect.Reflect.Value, ?index:GoInt) {
        if (name != null) this.name = name;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (type != null) this.type = type;
        if (func != null) this.func = func;
        if (index != null) this.index = index;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Method(name, pkgPath, type, func, index);
    }
}
/**
    // A StructField describes a single field in a struct.
    
    
**/
@:structInit @:using(stdgo.reflect.Reflect.StructField_static_extension) class StructField {
    /**
        // Name is the field name.
    **/
    public var name : GoString = "";
    /**
        // PkgPath is the package path that qualifies a lower case (unexported)
        // field name. It is empty for upper case (exported) field names.
        // See https://golang.org/ref/spec#Uniqueness_of_identifiers
    **/
    public var pkgPath : GoString = "";
    public var type : stdgo.reflect.Reflect.Type = (null : stdgo.reflect.Reflect.Type);
    public var tag : stdgo.reflect.Reflect.StructTag = (("" : GoString) : stdgo.reflect.Reflect.StructTag);
    public var offset : GoUIntptr = 0;
    public var index : Slice<GoInt> = (null : Slice<GoInt>);
    public var anonymous : Bool = false;
    public function new(?name:GoString, ?pkgPath:GoString, ?type:stdgo.reflect.Reflect.Type, ?tag:stdgo.reflect.Reflect.StructTag, ?offset:GoUIntptr, ?index:Slice<GoInt>, ?anonymous:Bool) {
        if (name != null) this.name = name;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (type != null) this.type = type;
        if (tag != null) this.tag = tag;
        if (offset != null) this.offset = offset;
        if (index != null) this.index = index;
        if (anonymous != null) this.anonymous = anonymous;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new StructField(name, pkgPath, type, tag, offset, index, anonymous);
    }
}
/**
    // Value is the reflection interface to a Go value.
    //
    // Not all methods apply to all kinds of values. Restrictions,
    // if any, are noted in the documentation for each method.
    // Use the Kind method to find out the kind of value before
    // calling kind-specific methods. Calling a method
    // inappropriate to the kind of type causes a run time panic.
    //
    // The zero Value represents no value.
    // Its IsValid method returns false, its Kind method returns Invalid,
    // its String method returns "<invalid Value>", and all other methods panic.
    // Most functions and methods never return an invalid value.
    // If one does, its documentation states the conditions explicitly.
    //
    // A Value can be used concurrently by multiple goroutines provided that
    // the underlying Go value can be used concurrently for the equivalent
    // direct operations.
    //
    // To compare two Values, compare the results of the Interface method.
    // Using == on two Values does not compare the underlying values
    // they represent.
    
    
**/
@:structInit @:using(stdgo.reflect.Reflect.Value_static_extension) class Value {
    var value : stdgo.StdGoTypes.AnyInterface;
    @:local
    var underlyingValue : Dynamic;
    var underlyingIndex : stdgo.StdGoTypes.GoInt = -1;
    @:local
    var underlyingKey : Dynamic = null;
    var canAddrBool : Bool = false;
    var notSetBool : Bool = false;
    dynamic public function string():GoString {
        var _v = this;
        if (@:privateAccess _v.value == null) {
            return "<invalid Value>";
        };
        var value = @:privateAccess _v.value.value;
        final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
            value = (value : Pointer<Dynamic>).value;
        };
        final underlyingType = stdgo.internal.reflect.Reflect.getUnderlying(t);
        switch (underlyingType) {
            case stdgo.internal.reflect.Reflect.GoType.basic(kind):
                switch kind {
                case string_kind:
                    return value;
                default:
                    final _ = false;
            };
            default:
                final _ = false;
        };
        return "<" + _v.type().string() + " Value>";
    }
    public function new(?value:stdgo.StdGoTypes.AnyInterface, ?underlyingValue:Dynamic, ?underlyingIndex:stdgo.StdGoTypes.GoInt, ?underlyingKey:Dynamic, ?canAddrBool:Bool, ?notSetBool:Bool, ?string) {
        if (value != null) this.value = value;
        if (underlyingValue != null) this.underlyingValue = underlyingValue;
        if (underlyingIndex != null) this.underlyingIndex = underlyingIndex;
        if (underlyingKey != null) this.underlyingKey = underlyingKey;
        if (canAddrBool != null) this.canAddrBool = canAddrBool;
        if (notSetBool != null) this.notSetBool = notSetBool;
        if (string != null) this.string = string;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Value(value, underlyingValue, underlyingIndex, underlyingKey, canAddrBool, notSetBool);
    }
}
/**
    // A ValueError occurs when a Value method is invoked on
    // a Value that does not support it. Such cases are documented
    // in the description of each method.
    
    
**/
@:structInit @:using(stdgo.reflect.Reflect.ValueError_static_extension) class ValueError {
    public var method : GoString = "";
    public var kind : stdgo.reflect.Reflect.Kind = ((0 : GoUInt) : stdgo.reflect.Reflect.Kind);
    dynamic public function toString():String {
        return "" + method;
    }
    public function new(?method:GoString, ?kind:stdgo.reflect.Reflect.Kind, ?toString) {
        if (method != null) this.method = method;
        if (kind != null) this.kind = kind;
        if (toString != null) this.toString = toString;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new ValueError(method, kind);
    }
}
/**
    // A MapIter is an iterator for ranging over a map.
    // See Value.MapRange.
    
    
**/
@:structInit @:using(stdgo.reflect.Reflect.MapIter_static_extension) class MapIter {
    @:local
    var map : haxe.Constraints.IMap<Dynamic, Dynamic>;
    @:local
    var keys : Array<Dynamic>;
    @:local
    var values : Array<Dynamic>;
    @:local
    var t : stdgo.internal.reflect.Reflect._Type;
    @:local
    var index : Int = 0;
    public function new(?map:haxe.Constraints.IMap<Dynamic, Dynamic>, ?keys:Array<Dynamic>, ?values:Array<Dynamic>, ?t:stdgo.internal.reflect.Reflect._Type, ?index:Int) {
        if (map != null) this.map = map;
        if (keys != null) this.keys = keys;
        if (values != null) this.values = values;
        if (t != null) this.t = t;
        if (index != null) this.index = index;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new MapIter(map, keys, values, t, index);
    }
}
/**
    // StringHeader is the runtime representation of a string.
    // It cannot be used safely or portably and its representation may
    // change in a later release.
    // Moreover, the Data field is not sufficient to guarantee the data
    // it references will not be garbage collected, so programs must keep
    // a separate, correctly typed pointer to the underlying data.
    //
    // In new code, use unsafe.String or unsafe.StringData instead.
    
    
**/
@:structInit class StringHeader {
    public var data : GoUIntptr = 0;
    public var len : GoInt = 0;
    public function new(?data:GoUIntptr, ?len:GoInt) {
        if (data != null) this.data = data;
        if (len != null) this.len = len;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new StringHeader(data, len);
    }
}
/**
    // SliceHeader is the runtime representation of a slice.
    // It cannot be used safely or portably and its representation may
    // change in a later release.
    // Moreover, the Data field is not sufficient to guarantee the data
    // it references will not be garbage collected, so programs must keep
    // a separate, correctly typed pointer to the underlying data.
    //
    // In new code, use unsafe.Slice or unsafe.SliceData instead.
    
    
**/
@:structInit class SliceHeader {
    public var data : GoUIntptr = 0;
    public var len : GoInt = 0;
    public var cap : GoInt = 0;
    public function new(?data:GoUIntptr, ?len:GoInt, ?cap:GoInt) {
        if (data != null) this.data = data;
        if (len != null) this.len = len;
        if (cap != null) this.cap = cap;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SliceHeader(data, len, cap);
    }
}
/**
    // A SelectCase describes a single case in a select operation.
    // The kind of case depends on Dir, the communication direction.
    //
    // If Dir is SelectDefault, the case represents a default case.
    // Chan and Send must be zero Values.
    //
    // If Dir is SelectSend, the case represents a send operation.
    // Normally Chan's underlying value must be a channel, and Send's underlying value must be
    // assignable to the channel's element type. As a special case, if Chan is a zero Value,
    // then the case is ignored, and the field Send will also be ignored and may be either zero
    // or non-zero.
    //
    // If Dir is SelectRecv, the case represents a receive operation.
    // Normally Chan's underlying value must be a channel and Send must be a zero Value.
    // If Chan is a zero Value, then the case is ignored, but Send must still be a zero Value.
    // When a receive operation is selected, the received Value is returned by Select.
    
    
**/
@:structInit class SelectCase {
    public var dir : stdgo.reflect.Reflect.SelectDir = ((0 : GoInt) : stdgo.reflect.Reflect.SelectDir);
    public var chan : stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
    public var send : stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
    public function new(?dir:stdgo.reflect.Reflect.SelectDir, ?chan:stdgo.reflect.Reflect.Value, ?send:stdgo.reflect.Reflect.Value) {
        if (dir != null) this.dir = dir;
        if (chan != null) this.chan = chan;
        if (send != null) this.send = send;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new SelectCase(dir, chan, send);
    }
}
/**
    // A Kind represents the specific kind of type that a Type represents.
    // The zero Kind is not a valid kind.
**/
@:named @:using(stdgo.reflect.Reflect.Kind_static_extension) typedef Kind = GoUInt;
/**
    // ChanDir represents a channel type's direction.
**/
@:named @:using(stdgo.reflect.Reflect.ChanDir_static_extension) typedef ChanDir = GoInt;
/**
    // A StructTag is the tag string in a struct field.
    //
    // By convention, tag strings are a concatenation of
    // optionally space-separated key:"value" pairs.
    // Each key is a non-empty string consisting of non-control
    // characters other than space (U+0020 ' '), quote (U+0022 '"'),
    // and colon (U+003A ':').  Each value is quoted using U+0022 '"'
    // characters and Go string literal syntax.
**/
@:named @:using(stdgo.reflect.Reflect.StructTag_static_extension) typedef StructTag = GoString;
/**
    // A SelectDir describes the communication direction of a select case.
**/
@:named typedef SelectDir = GoInt;
/**
    // DeepEqual reports whether x and y are “deeply equal,” defined as follows.
    // Two values of identical type are deeply equal if one of the following cases applies.
    // Values of distinct types are never deeply equal.
    //
    // Array values are deeply equal when their corresponding elements are deeply equal.
    //
    // Struct values are deeply equal if their corresponding fields,
    // both exported and unexported, are deeply equal.
    //
    // Func values are deeply equal if both are nil; otherwise they are not deeply equal.
    //
    // Interface values are deeply equal if they hold deeply equal concrete values.
    //
    // Map values are deeply equal when all of the following are true:
    // they are both nil or both non-nil, they have the same length,
    // and either they are the same map object or their corresponding keys
    // (matched using Go equality) map to deeply equal values.
    //
    // Pointer values are deeply equal if they are equal using Go's == operator
    // or if they point to deeply equal values.
    //
    // Slice values are deeply equal when all of the following are true:
    // they are both nil or both non-nil, they have the same length,
    // and either they point to the same initial entry of the same underlying array
    // (that is, &x[0] == &y[0]) or their corresponding elements (up to length) are deeply equal.
    // Note that a non-nil empty slice and a nil slice (for example, []byte{} and []byte(nil))
    // are not deeply equal.
    //
    // Other values - numbers, bools, strings, and channels - are deeply equal
    // if they are equal using Go's == operator.
    //
    // In general DeepEqual is a recursive relaxation of Go's == operator.
    // However, this idea is impossible to implement without some inconsistency.
    // Specifically, it is possible for a value to be unequal to itself,
    // either because it is of func type (uncomparable in general)
    // or because it is a floating-point NaN value (not equal to itself in floating-point comparison),
    // or because it is an array, struct, or interface containing
    // such a value.
    // On the other hand, pointer values are always equal to themselves,
    // even if they point at or contain such problematic values,
    // because they compare equal using Go's == operator, and that
    // is a sufficient condition to be deeply equal, regardless of content.
    // DeepEqual has been defined so that the same short-cut applies
    // to slices and maps: if x and y are the same slice or the same map,
    // they are deeply equal regardless of content.
    //
    // As DeepEqual traverses the data values it may find a cycle. The
    // second and subsequent times that DeepEqual compares two pointer
    // values that have been compared before, it treats the values as
    // equal rather than examining the values to which they point.
    // This ensures that DeepEqual terminates.
**/
function deepEqual(_x:AnyInterface, _y:AnyInterface):Bool {
        if (new Value(_x).isNil() || new Value(_y).isNil()) {
            return (_x : AnyInterface) == (_y : AnyInterface);
        };
        var v1 = valueOf(_x);
        var v2 = valueOf(_y);
        return stdgo.internal.reflect.Reflect.deepValueEqual(v1, v2, null, 0);
    }
/**
    // MakeFunc returns a new function of the given Type
    // that wraps the function fn. When called, that new function
    // does the following:
    //
    //   - converts its arguments to a slice of Values.
    //   - runs results := fn(args).
    //   - returns the results as a slice of Values, one per formal result.
    //
    // The implementation fn can assume that the argument Value slice
    // has the number and type of arguments given by typ.
    // If typ describes a variadic function, the final Value is itself
    // a slice representing the variadic arguments, as in the
    // body of a variadic function. The result Value slice returned by fn
    // must have the number and type of results given by typ.
    //
    // The Value.Call method allows the caller to invoke a typed function
    // in terms of Values; in contrast, MakeFunc allows the caller to implement
    // a typed function in terms of Values.
    //
    // The Examples section of the documentation includes an illustration
    // of how to use MakeFunc to build a swap function for different types.
**/
function makeFunc(_typ:Type, _fn:(_args:Slice<Value>) -> Slice<Value>):Value throw "reflect.makeFunc is not yet implemented";
/**
    // Swapper returns a function that swaps the elements in the provided
    // slice.
    //
    // Swapper panics if the provided interface is not a slice.
**/
function swapper(_slice:AnyInterface):(_i:GoInt, _j:GoInt) -> Void throw "reflect.swapper is not yet implemented";
/**
    // TypeOf returns the reflection Type that represents the dynamic type of i.
    // If i is a nil interface value, TypeOf returns nil.
**/
function typeOf(_i:AnyInterface):Type {
        if (_i == null) return new stdgo.internal.reflect.Reflect._Type_asInterface(Go.pointer(new stdgo.internal.reflect.Reflect._Type(basic(unsafepointer_kind))), new stdgo.internal.reflect.Reflect._Type(basic(unsafepointer_kind)));
        return new stdgo.internal.reflect.Reflect._Type_asInterface(Go.pointer(_i.type), _i.type);
    }
/**
    // PtrTo returns the pointer type with element t.
    // For example, if t represents type Foo, PtrTo(t) represents *Foo.
    //
    // PtrTo is the old spelling of PointerTo.
    // The two functions behave identically.
**/
function ptrTo(_t:Type):Type throw "reflect.ptrTo is not yet implemented";
/**
    // PointerTo returns the pointer type with element t.
    // For example, if t represents type Foo, PointerTo(t) represents *Foo.
**/
function pointerTo(_t:Type):Type throw "reflect.pointerTo is not yet implemented";
/**
    // ChanOf returns the channel type with the given direction and element type.
    // For example, if t represents int, ChanOf(RecvDir, t) represents <-chan int.
    //
    // The gc runtime imposes a limit of 64 kB on channel element types.
    // If t's size is equal to or exceeds this limit, ChanOf panics.
**/
function chanOf(_dir:ChanDir, _t:Type):Type throw "reflect.chanOf is not yet implemented";
/**
    // MapOf returns the map type with the given key and element types.
    // For example, if k represents int and e represents string,
    // MapOf(k, e) represents map[int]string.
    //
    // If the key type is not a valid map key type (that is, if it does
    // not implement Go's == operator), MapOf panics.
**/
function mapOf(_key:Type, _elem:Type):Type throw "reflect.mapOf is not yet implemented";
/**
    // FuncOf returns the function type with the given argument and result types.
    // For example if k represents int and e represents string,
    // FuncOf([]Type{k}, []Type{e}, false) represents func(int) string.
    //
    // The variadic argument controls whether the function is variadic. FuncOf
    // panics if the in[len(in)-1] does not represent a slice and variadic is
    // true.
**/
function funcOf(_in:Slice<Type>, _out:Slice<Type>, _variadic:Bool):Type throw "reflect.funcOf is not yet implemented";
/**
    // SliceOf returns the slice type with element type t.
    // For example, if t represents int, SliceOf(t) represents []int.
**/
function sliceOf(_t:Type):Type throw "reflect.sliceOf is not yet implemented";
/**
    // StructOf returns the struct type containing fields.
    // The Offset and Index fields are ignored and computed as they would be
    // by the compiler.
    //
    // StructOf currently does not generate wrapper methods for embedded
    // fields and panics if passed unexported StructFields.
    // These limitations may be lifted in a future version.
**/
function structOf(_fields:Slice<StructField>):Type throw "reflect.structOf is not yet implemented";
/**
    // ArrayOf returns the array type with the given length and element type.
    // For example, if t represents int, ArrayOf(5, t) represents [5]int.
    //
    // If the resulting type would be larger than the available address space,
    // ArrayOf panics.
**/
function arrayOf(_length:GoInt, _elem:Type):Type throw "reflect.arrayOf is not yet implemented";
/**
    // Append appends the values x to a slice s and returns the resulting slice.
    // As in Go, each x's value must be assignable to the slice's element type.
**/
function append(_s:Value, _x:haxe.Rest<Value>):Value throw "reflect.append is not yet implemented";
/**
    // AppendSlice appends a slice t to a slice s and returns the resulting slice.
    // The slices s and t must have the same element type.
**/
function appendSlice(_s:Value, _t:Value):Value throw "reflect.appendSlice is not yet implemented";
/**
    // Copy copies the contents of src into dst until either
    // dst has been filled or src has been exhausted.
    // It returns the number of elements copied.
    // Dst and src each must have kind Slice or Array, and
    // dst and src must have the same element type.
    //
    // As a special case, src can have kind String if the element type of dst is kind Uint8.
**/
function copy(_dst:Value, _src:Value):GoInt throw "reflect.copy is not yet implemented";
/**
    // Select executes a select operation described by the list of cases.
    // Like the Go select statement, it blocks until at least one of the cases
    // can proceed, makes a uniform pseudo-random choice,
    // and then executes that case. It returns the index of the chosen case
    // and, if that case was a receive operation, the value received and a
    // boolean indicating whether the value corresponds to a send on the channel
    // (as opposed to a zero value received because the channel is closed).
    // Select supports a maximum of 65536 cases.
**/
function select(_cases:Slice<SelectCase>):{ var _0 : GoInt; var _1 : Value; var _2 : Bool; } throw "reflect.select is not yet implemented";
/**
    // MakeSlice creates a new zero-initialized slice value
    // for the specified slice type, length, and capacity.
**/
function makeSlice(_typ:Type, _len:GoInt, _cap:GoInt):Value {
        final value = stdgo.internal.reflect.Reflect.defaultValue(_typ);
        final slice = new Slice(_len, _cap.toBasic(), ...[for (i in 0 ... _len.toBasic()) value]);
        final t = @:privateAccess (cast _typ : stdgo.internal.reflect.Reflect._Type_asInterface).__type__;
        return new Value(new AnyInterface(slice, t));
    }
/**
    // MakeChan creates a new channel with the specified type and buffer size.
**/
function makeChan(_typ:Type, _buffer:GoInt):Value throw "reflect.makeChan is not yet implemented";
/**
    // MakeMap creates a new map with the specified type.
**/
function makeMap(_typ:Type):Value throw "reflect.makeMap is not yet implemented";
/**
    // MakeMapWithSize creates a new map with the specified type
    // and initial space for approximately n elements.
**/
function makeMapWithSize(_typ:Type, _n:GoInt):Value throw "reflect.makeMapWithSize is not yet implemented";
/**
    // Indirect returns the value that v points to.
    // If v is a nil pointer, Indirect returns a zero Value.
    // If v is not a pointer, Indirect returns v.
**/
function indirect(_v:Value):Value throw "reflect.indirect is not yet implemented";
/**
    // ValueOf returns a new Value initialized to the concrete value
    // stored in the interface i. ValueOf(nil) returns the zero Value.
**/
function valueOf(_i:AnyInterface):Value {
        return new Value(_i);
    }
/**
    // Zero returns a Value representing the zero value for the specified type.
    // The result is different from the zero value of the Value struct,
    // which represents no value at all.
    // For example, Zero(TypeOf(42)) returns a Value with Kind Int and value 0.
    // The returned value is neither addressable nor settable.
**/
function zero(_typ:Type):Value {
        return new Value(new AnyInterface(stdgo.internal.reflect.Reflect.defaultValue(_typ), _typ.__underlying__().value));
    }
/**
    // New returns a Value representing a pointer to a new zero value
    // for the specified type. That is, the returned Value's Type is PointerTo(typ).
**/
function new_(_typ:Type):Value {
        var value = stdgo.internal.reflect.Reflect.defaultValue(_typ);
        var ptr = new Pointer(() -> value, x -> value = x);
        return new Value(new AnyInterface(ptr, new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> @:privateAccess (_typ : Dynamic)._common() }))));
    }
/**
    // NewAt returns a Value representing a pointer to a value of the
    // specified type, using p as that pointer.
**/
function newAt(_typ:Type, _p:stdgo.unsafe.Unsafe.UnsafePointer):Value throw "reflect.newAt is not yet implemented";
/**
    // VisibleFields returns all the visible fields in t, which must be a
    // struct type. A field is defined as visible if it's accessible
    // directly with a FieldByName call. The returned fields include fields
    // inside anonymous struct members and unexported fields. They follow
    // the same order found in the struct, with anonymous fields followed
    // immediately by their promoted fields.
    //
    // For each element e of the returned slice, the corresponding field
    // can be retrieved from a value v of type t by calling v.FieldByIndex(e.Index).
**/
function visibleFields(_t:Type):Slice<StructField> throw "reflect.visibleFields is not yet implemented";
class Method_asInterface {
    /**
        // IsExported reports whether the method is exported.
    **/
    @:keep
    public dynamic function isExported():Bool return __self__.value.isExported();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Method>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.reflect.Reflect.Method_asInterface) class Method_static_extension {
    /**
        // IsExported reports whether the method is exported.
    **/
    @:keep
    static public function isExported( _m:Method):Bool throw "reflect.isExported is not yet implemented";
}
class StructField_asInterface {
    /**
        // IsExported reports whether the field is exported.
    **/
    @:keep
    public dynamic function isExported():Bool return __self__.value.isExported();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<StructField>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.reflect.Reflect.StructField_asInterface) class StructField_static_extension {
    /**
        // IsExported reports whether the field is exported.
    **/
    @:keep
    static public function isExported( _f:StructField):Bool throw "reflect.isExported is not yet implemented";
}
class Value_asInterface {
    /**
        // Equal reports true if v is equal to u.
        // For two invalid values, Equal will report true.
        // For an interface value, Equal will compare the value within the interface.
        // Otherwise, If the values have different types, Equal will report false.
        // Otherwise, for arrays and structs Equal will compare each element in order,
        // and report false if it finds non-equal elements.
        // During all comparisons, if values of the same type are compared,
        // and the type is not comparable, Equal will panic.
    **/
    @:keep
    public dynamic function equal(_u:Value):Bool return __self__.value.equal(_u);
    /**
        // Comparable reports whether the value v is comparable.
        // If the type of v is an interface, this checks the dynamic type.
        // If this reports true then v.Interface() == x will not panic for any x,
        // nor will v.Equal(u) for any Value u.
    **/
    @:keep
    public dynamic function comparable():Bool return __self__.value.comparable();
    /**
        // CanConvert reports whether the value v can be converted to type t.
        // If v.CanConvert(t) returns true then v.Convert(t) will not panic.
    **/
    @:keep
    public dynamic function canConvert(_t:Type):Bool return __self__.value.canConvert(_t);
    /**
        // Convert returns the value v converted to type t.
        // If the usual Go conversion rules do not allow conversion
        // of the value v to type t, or if converting v to type t panics, Convert panics.
    **/
    @:keep
    public dynamic function convert(_t:Type):Value return __self__.value.convert(_t);
    /**
        // Grow increases the slice's capacity, if necessary, to guarantee space for
        // another n elements. After Grow(n), at least n elements can be appended
        // to the slice without another allocation.
        //
        // It panics if v's Kind is not a Slice or if n is negative or too large to
        // allocate the memory.
    **/
    @:keep
    public dynamic function grow(_n:GoInt):Void __self__.value.grow(_n);
    /**
        // UnsafePointer returns v's value as a [unsafe.Pointer].
        // It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.
        //
        // If v's Kind is Func, the returned pointer is an underlying
        // code pointer, but not necessarily enough to identify a
        // single function uniquely. The only guarantee is that the
        // result is zero if and only if v is a nil func Value.
        //
        // If v's Kind is Slice, the returned pointer is to the first
        // element of the slice. If the slice is nil the returned value
        // is nil.  If the slice is empty but non-nil the return value is non-nil.
    **/
    @:keep
    public dynamic function unsafePointer():stdgo.unsafe.Unsafe.UnsafePointer return __self__.value.unsafePointer();
    /**
        // UnsafeAddr returns a pointer to v's data, as a uintptr.
        // It panics if v is not addressable.
        //
        // It's preferred to use uintptr(Value.Addr().UnsafePointer()) to get the equivalent result.
    **/
    @:keep
    public dynamic function unsafeAddr():GoUIntptr return __self__.value.unsafeAddr();
    /**
        // Uint returns v's underlying value, as a uint64.
        // It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.
    **/
    @:keep
    public dynamic function uint():GoUInt64 return __self__.value.uint();
    /**
        // CanUint reports whether Uint can be used without panicking.
    **/
    @:keep
    public dynamic function canUint():Bool return __self__.value.canUint();
    /**
        // Type returns v's type.
    **/
    @:keep
    public dynamic function type():Type return __self__.value.type();
    /**
        // TrySend attempts to send x on the channel v but will not block.
        // It panics if v's Kind is not Chan.
        // It reports whether the value was sent.
        // As in Go, x's value must be assignable to the channel's element type.
    **/
    @:keep
    public dynamic function trySend(_x:Value):Bool return __self__.value.trySend(_x);
    /**
        // TryRecv attempts to receive a value from the channel v but will not block.
        // It panics if v's Kind is not Chan.
        // If the receive delivers a value, x is the transferred value and ok is true.
        // If the receive cannot finish without blocking, x is the zero Value and ok is false.
        // If the channel is closed, x is the zero value for the channel's element type and ok is false.
    **/
    @:keep
    public dynamic function tryRecv():{ var _0 : Value; var _1 : Bool; } return __self__.value.tryRecv();
    /**
        // String returns the string v's underlying value, as a string.
        // String is a special case because of Go's String method convention.
        // Unlike the other getters, it does not panic if v's Kind is not String.
        // Instead, it returns a string of the form "<T value>" where T is v's type.
        // The fmt package treats Values specially. It does not call their String
        // method implicitly but instead prints the concrete values they hold.
    **/
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    /**
        // Slice3 is the 3-index form of the slice operation: it returns v[i:j:k].
        // It panics if v's Kind is not Array or Slice, or if v is an unaddressable array,
        // or if the indexes are out of bounds.
    **/
    @:keep
    public dynamic function slice3(_i:GoInt, _j:GoInt, _k:GoInt):Value return __self__.value.slice3(_i, _j, _k);
    /**
        // Slice returns v[i:j].
        // It panics if v's Kind is not Array, Slice or String, or if v is an unaddressable array,
        // or if the indexes are out of bounds.
    **/
    @:keep
    public dynamic function slice(_i:GoInt, _j:GoInt):Value return __self__.value.slice(_i, _j);
    /**
        // SetString sets v's underlying value to x.
        // It panics if v's Kind is not String or if CanSet() is false.
    **/
    @:keep
    public dynamic function setString(_x:GoString):Void __self__.value.setString(_x);
    /**
        // SetPointer sets the [unsafe.Pointer] value v to x.
        // It panics if v's Kind is not UnsafePointer.
    **/
    @:keep
    public dynamic function setPointer(_x:stdgo.unsafe.Unsafe.UnsafePointer):Void __self__.value.setPointer(_x);
    /**
        // SetUint sets v's underlying value to x.
        // It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64, or if CanSet() is false.
    **/
    @:keep
    public dynamic function setUint(_x:GoUInt64):Void __self__.value.setUint(_x);
    /**
        // SetMapIndex sets the element associated with key in the map v to elem.
        // It panics if v's Kind is not Map.
        // If elem is the zero Value, SetMapIndex deletes the key from the map.
        // Otherwise if v holds a nil map, SetMapIndex will panic.
        // As in Go, key's elem must be assignable to the map's key type,
        // and elem's value must be assignable to the map's elem type.
    **/
    @:keep
    public dynamic function setMapIndex(_key:Value, _elem:Value):Void __self__.value.setMapIndex(_key, _elem);
    /**
        // SetCap sets v's capacity to n.
        // It panics if v's Kind is not Slice or if n is smaller than the length or
        // greater than the capacity of the slice.
    **/
    @:keep
    public dynamic function setCap(_n:GoInt):Void __self__.value.setCap(_n);
    /**
        // SetLen sets v's length to n.
        // It panics if v's Kind is not Slice or if n is negative or
        // greater than the capacity of the slice.
    **/
    @:keep
    public dynamic function setLen(_n:GoInt):Void __self__.value.setLen(_n);
    /**
        // SetInt sets v's underlying value to x.
        // It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64, or if CanSet() is false.
    **/
    @:keep
    public dynamic function setInt(_x:GoInt64):Void __self__.value.setInt(_x);
    /**
        // SetFloat sets v's underlying value to x.
        // It panics if v's Kind is not Float32 or Float64, or if CanSet() is false.
    **/
    @:keep
    public dynamic function setFloat(_x:GoFloat64):Void __self__.value.setFloat(_x);
    /**
        // SetComplex sets v's underlying value to x.
        // It panics if v's Kind is not Complex64 or Complex128, or if CanSet() is false.
    **/
    @:keep
    public dynamic function setComplex(_x:GoComplex128):Void __self__.value.setComplex(_x);
    /**
        // SetBytes sets v's underlying value.
        // It panics if v's underlying value is not a slice of bytes.
    **/
    @:keep
    public dynamic function setBytes(_x:Slice<GoByte>):Void __self__.value.setBytes(_x);
    /**
        // SetBool sets v's underlying value.
        // It panics if v's Kind is not Bool or if CanSet() is false.
    **/
    @:keep
    public dynamic function setBool(_x:Bool):Void __self__.value.setBool(_x);
    /**
        // Set assigns x to the value v.
        // It panics if CanSet returns false.
        // As in Go, x's value must be assignable to v's type and
        // must not be derived from an unexported field.
    **/
    @:keep
    public dynamic function set(_x:Value):Void __self__.value.set(_x);
    /**
        // Send sends x on the channel v.
        // It panics if v's kind is not Chan or if x's type is not the same type as v's element type.
        // As in Go, x's value must be assignable to the channel's element type.
    **/
    @:keep
    public dynamic function send(_x:Value):Void __self__.value.send(_x);
    /**
        // Recv receives and returns a value from the channel v.
        // It panics if v's Kind is not Chan.
        // The receive blocks until a value is ready.
        // The boolean value ok is true if the value x corresponds to a send
        // on the channel, false if it is a zero value received because the channel is closed.
    **/
    @:keep
    public dynamic function recv():{ var _0 : Value; var _1 : Bool; } return __self__.value.recv();
    /**
        // Pointer returns v's value as a uintptr.
        // It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.
        //
        // If v's Kind is Func, the returned pointer is an underlying
        // code pointer, but not necessarily enough to identify a
        // single function uniquely. The only guarantee is that the
        // result is zero if and only if v is a nil func Value.
        //
        // If v's Kind is Slice, the returned pointer is to the first
        // element of the slice. If the slice is nil the returned value
        // is 0.  If the slice is empty but non-nil the return value is non-zero.
        //
        // It's preferred to use uintptr(Value.UnsafePointer()) to get the equivalent result.
    **/
    @:keep
    public dynamic function pointer():GoUIntptr return __self__.value.pointer();
    /**
        // OverflowUint reports whether the uint64 x cannot be represented by v's type.
        // It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.
    **/
    @:keep
    public dynamic function overflowUint(_x:GoUInt64):Bool return __self__.value.overflowUint(_x);
    /**
        // OverflowInt reports whether the int64 x cannot be represented by v's type.
        // It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.
    **/
    @:keep
    public dynamic function overflowInt(_x:GoInt64):Bool return __self__.value.overflowInt(_x);
    /**
        // OverflowFloat reports whether the float64 x cannot be represented by v's type.
        // It panics if v's Kind is not Float32 or Float64.
    **/
    @:keep
    public dynamic function overflowFloat(_x:GoFloat64):Bool return __self__.value.overflowFloat(_x);
    /**
        // OverflowComplex reports whether the complex128 x cannot be represented by v's type.
        // It panics if v's Kind is not Complex64 or Complex128.
    **/
    @:keep
    public dynamic function overflowComplex(_x:GoComplex128):Bool return __self__.value.overflowComplex(_x);
    /**
        // NumField returns the number of fields in the struct v.
        // It panics if v's Kind is not Struct.
    **/
    @:keep
    public dynamic function numField():GoInt return __self__.value.numField();
    /**
        // MethodByName returns a function value corresponding to the method
        // of v with the given name.
        // The arguments to a Call on the returned function should not include
        // a receiver; the returned function will always use v as the receiver.
        // It returns the zero Value if no method was found.
    **/
    @:keep
    public dynamic function methodByName(_name:GoString):Value return __self__.value.methodByName(_name);
    /**
        // NumMethod returns the number of methods in the value's method set.
        //
        // For a non-interface type, it returns the number of exported methods.
        //
        // For an interface type, it returns the number of exported and unexported methods.
    **/
    @:keep
    public dynamic function numMethod():GoInt return __self__.value.numMethod();
    /**
        // Method returns a function value corresponding to v's i'th method.
        // The arguments to a Call on the returned function should not include
        // a receiver; the returned function will always use v as the receiver.
        // Method panics if i is out of range or if v is a nil interface value.
    **/
    @:keep
    public dynamic function method(_i:GoInt):Value return __self__.value.method(_i);
    /**
        // MapRange returns a range iterator for a map.
        // It panics if v's Kind is not Map.
        //
        // Call Next to advance the iterator, and Key/Value to access each entry.
        // Next returns false when the iterator is exhausted.
        // MapRange follows the same iteration semantics as a range statement.
        //
        // Example:
        //
        //	iter := reflect.ValueOf(m).MapRange()
        //	for iter.Next() {
        //		k := iter.Key()
        //		v := iter.Value()
        //		...
        //	}
    **/
    @:keep
    public dynamic function mapRange():Ref<MapIter> return __self__.value.mapRange();
    /**
        // SetIterValue assigns to v the value of iter's current map entry.
        // It is equivalent to v.Set(iter.Value()), but it avoids allocating a new Value.
        // As in Go, the value must be assignable to v's type and
        // must not be derived from an unexported field.
    **/
    @:keep
    public dynamic function setIterValue(_iter:Ref<MapIter>):Void __self__.value.setIterValue(_iter);
    /**
        // SetIterKey assigns to v the key of iter's current map entry.
        // It is equivalent to v.Set(iter.Key()), but it avoids allocating a new Value.
        // As in Go, the key must be assignable to v's type and
        // must not be derived from an unexported field.
    **/
    @:keep
    public dynamic function setIterKey(_iter:Ref<MapIter>):Void __self__.value.setIterKey(_iter);
    /**
        // MapKeys returns a slice containing all the keys present in the map,
        // in unspecified order.
        // It panics if v's Kind is not Map.
        // It returns an empty slice if v represents a nil map.
    **/
    @:keep
    public dynamic function mapKeys():Slice<Value> return __self__.value.mapKeys();
    /**
        // MapIndex returns the value associated with key in the map v.
        // It panics if v's Kind is not Map.
        // It returns the zero Value if key is not found in the map or if v represents a nil map.
        // As in Go, the key's value must be assignable to the map's key type.
    **/
    @:keep
    public dynamic function mapIndex(_key:Value):Value return __self__.value.mapIndex(_key);
    /**
        // Len returns v's length.
        // It panics if v's Kind is not Array, Chan, Map, Slice, String, or pointer to Array.
    **/
    @:keep
    public dynamic function len():GoInt return __self__.value.len();
    /**
        // Kind returns v's Kind.
        // If v is the zero Value (IsValid returns false), Kind returns Invalid.
    **/
    @:keep
    public dynamic function kind():Kind return __self__.value.kind();
    /**
        // SetZero sets v to be the zero value of v's type.
        // It panics if CanSet returns false.
    **/
    @:keep
    public dynamic function setZero():Void __self__.value.setZero();
    /**
        // IsZero reports whether v is the zero value for its type.
        // It panics if the argument is invalid.
    **/
    @:keep
    public dynamic function isZero():Bool return __self__.value.isZero();
    /**
        // IsValid reports whether v represents a value.
        // It returns false if v is the zero Value.
        // If IsValid returns false, all other methods except String panic.
        // Most functions and methods never return an invalid Value.
        // If one does, its documentation states the conditions explicitly.
    **/
    @:keep
    public dynamic function isValid():Bool return __self__.value.isValid();
    /**
        // IsNil reports whether its argument v is nil. The argument must be
        // a chan, func, interface, map, pointer, or slice value; if it is
        // not, IsNil panics. Note that IsNil is not always equivalent to a
        // regular comparison with nil in Go. For example, if v was created
        // by calling ValueOf with an uninitialized interface variable i,
        // i==nil will be true but v.IsNil will panic as v will be the zero
        // Value.
    **/
    @:keep
    public dynamic function isNil():Bool return __self__.value.isNil();
    /**
        // InterfaceData returns a pair of unspecified uintptr values.
        // It panics if v's Kind is not Interface.
        //
        // In earlier versions of Go, this function returned the interface's
        // value as a uintptr pair. As of Go 1.4, the implementation of
        // interface values precludes any defined use of InterfaceData.
        //
        // Deprecated: The memory representation of interface values is not
        // compatible with InterfaceData.
    **/
    @:keep
    public dynamic function interfaceData():GoArray<GoUIntptr> return __self__.value.interfaceData();
    /**
        // Interface returns v's current value as an interface{}.
        // It is equivalent to:
        //
        //	var i interface{} = (v's underlying value)
        //
        // It panics if the Value was obtained by accessing
        // unexported struct fields.
    **/
    @:keep
    public dynamic function interface_():AnyInterface return __self__.value.interface_();
    /**
        // CanInterface reports whether Interface can be used without panicking.
    **/
    @:keep
    public dynamic function canInterface():Bool return __self__.value.canInterface();
    /**
        // Int returns v's underlying value, as an int64.
        // It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.
    **/
    @:keep
    public dynamic function int_():GoInt64 return __self__.value.int_();
    /**
        // CanInt reports whether Int can be used without panicking.
    **/
    @:keep
    public dynamic function canInt():Bool return __self__.value.canInt();
    /**
        // Index returns v's i'th element.
        // It panics if v's Kind is not Array, Slice, or String or i is out of range.
    **/
    @:keep
    public dynamic function index(_i:GoInt):Value return __self__.value.index(_i);
    /**
        // Float returns v's underlying value, as a float64.
        // It panics if v's Kind is not Float32 or Float64
    **/
    @:keep
    public dynamic function float_():GoFloat64 return __self__.value.float_();
    /**
        // CanFloat reports whether Float can be used without panicking.
    **/
    @:keep
    public dynamic function canFloat():Bool return __self__.value.canFloat();
    /**
        // FieldByNameFunc returns the struct field with a name
        // that satisfies the match function.
        // It panics if v's Kind is not struct.
        // It returns the zero Value if no field was found.
    **/
    @:keep
    public dynamic function fieldByNameFunc(_match:GoString -> Bool):Value return __self__.value.fieldByNameFunc(_match);
    /**
        // FieldByName returns the struct field with the given name.
        // It returns the zero Value if no field was found.
        // It panics if v's Kind is not struct.
    **/
    @:keep
    public dynamic function fieldByName(_name:GoString):Value return __self__.value.fieldByName(_name);
    /**
        // FieldByIndexErr returns the nested field corresponding to index.
        // It returns an error if evaluation requires stepping through a nil
        // pointer, but panics if it must step through a field that
        // is not a struct.
    **/
    @:keep
    public dynamic function fieldByIndexErr(_index:Slice<GoInt>):{ var _0 : Value; var _1 : Error; } return __self__.value.fieldByIndexErr(_index);
    /**
        // FieldByIndex returns the nested field corresponding to index.
        // It panics if evaluation requires stepping through a nil
        // pointer or a field that is not a struct.
    **/
    @:keep
    public dynamic function fieldByIndex(_index:Slice<GoInt>):Value return __self__.value.fieldByIndex(_index);
    /**
        // Field returns the i'th field of the struct v.
        // It panics if v's Kind is not Struct or i is out of range.
    **/
    @:keep
    public dynamic function field(_i:GoInt):Value return __self__.value.field(_i);
    /**
        // Elem returns the value that the interface v contains
        // or that the pointer v points to.
        // It panics if v's Kind is not Interface or Pointer.
        // It returns the zero Value if v is nil.
    **/
    @:keep
    public dynamic function elem():Value return __self__.value.elem();
    /**
        // Complex returns v's underlying value, as a complex128.
        // It panics if v's Kind is not Complex64 or Complex128
    **/
    @:keep
    public dynamic function complex():GoComplex128 return __self__.value.complex();
    /**
        // CanComplex reports whether Complex can be used without panicking.
    **/
    @:keep
    public dynamic function canComplex():Bool return __self__.value.canComplex();
    /**
        // Close closes the channel v.
        // It panics if v's Kind is not Chan.
    **/
    @:keep
    public dynamic function close():Void __self__.value.close();
    /**
        // Cap returns v's capacity.
        // It panics if v's Kind is not Array, Chan, Slice or pointer to Array.
    **/
    @:keep
    public dynamic function cap():GoInt return __self__.value.cap();
    /**
        // CallSlice calls the variadic function v with the input arguments in,
        // assigning the slice in[len(in)-1] to v's final variadic argument.
        // For example, if len(in) == 3, v.CallSlice(in) represents the Go call v(in[0], in[1], in[2]...).
        // CallSlice panics if v's Kind is not Func or if v is not variadic.
        // It returns the output results as Values.
        // As in Go, each input argument must be assignable to the
        // type of the function's corresponding input parameter.
    **/
    @:keep
    public dynamic function callSlice(_in:Slice<Value>):Slice<Value> return __self__.value.callSlice(_in);
    /**
        // Call calls the function v with the input arguments in.
        // For example, if len(in) == 3, v.Call(in) represents the Go call v(in[0], in[1], in[2]).
        // Call panics if v's Kind is not Func.
        // It returns the output results as Values.
        // As in Go, each input argument must be assignable to the
        // type of the function's corresponding input parameter.
        // If v is a variadic function, Call creates the variadic slice parameter
        // itself, copying in the corresponding values.
    **/
    @:keep
    public dynamic function call(_in:Slice<Value>):Slice<Value> return __self__.value.call(_in);
    /**
        // CanSet reports whether the value of v can be changed.
        // A Value can be changed only if it is addressable and was not
        // obtained by the use of unexported struct fields.
        // If CanSet returns false, calling Set or any type-specific
        // setter (e.g., SetBool, SetInt) will panic.
    **/
    @:keep
    public dynamic function canSet():Bool return __self__.value.canSet();
    /**
        // CanAddr reports whether the value's address can be obtained with Addr.
        // Such values are called addressable. A value is addressable if it is
        // an element of a slice, an element of an addressable array,
        // a field of an addressable struct, or the result of dereferencing a pointer.
        // If CanAddr returns false, calling Addr will panic.
    **/
    @:keep
    public dynamic function canAddr():Bool return __self__.value.canAddr();
    /**
        // Bytes returns v's underlying value.
        // It panics if v's underlying value is not a slice of bytes or
        // an addressable array of bytes.
    **/
    @:keep
    public dynamic function bytes():Slice<GoByte> return __self__.value.bytes();
    /**
        // Bool returns v's underlying value.
        // It panics if v's kind is not Bool.
    **/
    @:keep
    public dynamic function bool_():Bool return __self__.value.bool_();
    /**
        // Addr returns a pointer value representing the address of v.
        // It panics if CanAddr() returns false.
        // Addr is typically used to obtain a pointer to a struct field
        // or slice element in order to call a method that requires a
        // pointer receiver.
    **/
    @:keep
    public dynamic function addr():Value return __self__.value.addr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Value>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.reflect.Reflect.Value_asInterface) class Value_static_extension {
    /**
        // Equal reports true if v is equal to u.
        // For two invalid values, Equal will report true.
        // For an interface value, Equal will compare the value within the interface.
        // Otherwise, If the values have different types, Equal will report false.
        // Otherwise, for arrays and structs Equal will compare each element in order,
        // and report false if it finds non-equal elements.
        // During all comparisons, if values of the same type are compared,
        // and the type is not comparable, Equal will panic.
    **/
    @:keep
    static public function equal( _v:Value, _u:Value):Bool throw "reflect.equal is not yet implemented";
    /**
        // Comparable reports whether the value v is comparable.
        // If the type of v is an interface, this checks the dynamic type.
        // If this reports true then v.Interface() == x will not panic for any x,
        // nor will v.Equal(u) for any Value u.
    **/
    @:keep
    static public function comparable( _v:Value):Bool throw "reflect.comparable is not yet implemented";
    /**
        // CanConvert reports whether the value v can be converted to type t.
        // If v.CanConvert(t) returns true then v.Convert(t) will not panic.
    **/
    @:keep
    static public function canConvert( _v:Value, _t:Type):Bool throw "reflect.canConvert is not yet implemented";
    /**
        // Convert returns the value v converted to type t.
        // If the usual Go conversion rules do not allow conversion
        // of the value v to type t, or if converting v to type t panics, Convert panics.
    **/
    @:keep
    static public function convert( _v:Value, _t:Type):Value throw "reflect.convert is not yet implemented";
    /**
        // Grow increases the slice's capacity, if necessary, to guarantee space for
        // another n elements. After Grow(n), at least n elements can be appended
        // to the slice without another allocation.
        //
        // It panics if v's Kind is not a Slice or if n is negative or too large to
        // allocate the memory.
    **/
    @:keep
    static public function grow( _v:Value, _n:GoInt):Void throw "reflect.grow is not yet implemented";
    /**
        // UnsafePointer returns v's value as a [unsafe.Pointer].
        // It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.
        //
        // If v's Kind is Func, the returned pointer is an underlying
        // code pointer, but not necessarily enough to identify a
        // single function uniquely. The only guarantee is that the
        // result is zero if and only if v is a nil func Value.
        //
        // If v's Kind is Slice, the returned pointer is to the first
        // element of the slice. If the slice is nil the returned value
        // is nil.  If the slice is empty but non-nil the return value is non-nil.
    **/
    @:keep
    static public function unsafePointer( _v:Value):stdgo.unsafe.Unsafe.UnsafePointer throw "reflect.unsafePointer is not yet implemented";
    /**
        // UnsafeAddr returns a pointer to v's data, as a uintptr.
        // It panics if v is not addressable.
        //
        // It's preferred to use uintptr(Value.Addr().UnsafePointer()) to get the equivalent result.
    **/
    @:keep
    static public function unsafeAddr( _v:Value):GoUIntptr throw "reflect.unsafeAddr is not yet implemented";
    /**
        // Uint returns v's underlying value, as a uint64.
        // It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.
    **/
    @:keep
    static public function uint( _v:Value):GoUInt64 {
        var value = @:privateAccess _v.value.value;
        final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
            value = (value : Pointer<Dynamic>).value;
        };
        final value:GoUInt64 = switch _v.kind() {
            case stdgo.internal.reflect.Reflect.KindType.uint:
                (value : GoUInt8);
            case stdgo.internal.reflect.Reflect.KindType.uint8:
                (value : GoUInt8);
            case stdgo.internal.reflect.Reflect.KindType.uint16:
                (value : GoUInt16);
            case stdgo.internal.reflect.Reflect.KindType.uint32:
                (value : GoUInt32);
            case stdgo.internal.reflect.Reflect.KindType.uint64:
                (value : GoUInt64);
            case stdgo.internal.reflect.Reflect.KindType.uintptr:
                (value : GoUIntptr);
            default:
                throw new ValueError("reflect.Value.Uint", _v.kind());
        };
        return value;
    }
    /**
        // CanUint reports whether Uint can be used without panicking.
    **/
    @:keep
    static public function canUint( _v:Value):Bool {
        return switch _v.kind() {
            case stdgo.internal.reflect.Reflect.KindType.uint, stdgo.internal.reflect.Reflect.KindType.uint8, stdgo.internal.reflect.Reflect.KindType.uint16, stdgo.internal.reflect.Reflect.KindType.uint32, stdgo.internal.reflect.Reflect.KindType.uint64, stdgo.internal.reflect.Reflect.KindType.uintptr:
                true;
            default:
                false;
        };
    }
    /**
        // Type returns v's type.
    **/
    @:keep
    static public function type( _v:Value):Type {
        if (@:privateAccess _v.value == null) {
            var t = new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.invalidType);
            return @:privateAccess new stdgo.internal.reflect.Reflect._Type_asInterface(Go.pointer(t), t);
        };
        return @:privateAccess new stdgo.internal.reflect.Reflect._Type_asInterface(Go.pointer(_v.value.type), _v.value.type);
    }
    /**
        // TrySend attempts to send x on the channel v but will not block.
        // It panics if v's Kind is not Chan.
        // It reports whether the value was sent.
        // As in Go, x's value must be assignable to the channel's element type.
    **/
    @:keep
    static public function trySend( _v:Value, _x:Value):Bool throw "reflect.trySend is not yet implemented";
    /**
        // TryRecv attempts to receive a value from the channel v but will not block.
        // It panics if v's Kind is not Chan.
        // If the receive delivers a value, x is the transferred value and ok is true.
        // If the receive cannot finish without blocking, x is the zero Value and ok is false.
        // If the channel is closed, x is the zero value for the channel's element type and ok is false.
    **/
    @:keep
    static public function tryRecv( _v:Value):{ var _0 : Value; var _1 : Bool; } throw "reflect.tryRecv is not yet implemented";
    /**
        // String returns the string v's underlying value, as a string.
        // String is a special case because of Go's String method convention.
        // Unlike the other getters, it does not panic if v's Kind is not String.
        // Instead, it returns a string of the form "<T value>" where T is v's type.
        // The fmt package treats Values specially. It does not call their String
        // method implicitly but instead prints the concrete values they hold.
    **/
    @:keep
    static public function string( _v:Value):GoString {
        if (@:privateAccess _v.value == null) {
            return "<invalid Value>";
        };
        var value = @:privateAccess _v.value.value;
        final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
            value = (value : Pointer<Dynamic>).value;
        };
        final underlyingType = stdgo.internal.reflect.Reflect.getUnderlying(t);
        switch (underlyingType) {
            case stdgo.internal.reflect.Reflect.GoType.basic(kind):
                switch kind {
                case string_kind:
                    return value;
                default:
                    final _ = false;
            };
            default:
                final _ = false;
        };
        return "<" + _v.type().string() + " Value>";
    }
    /**
        // Slice3 is the 3-index form of the slice operation: it returns v[i:j:k].
        // It panics if v's Kind is not Array or Slice, or if v is an unaddressable array,
        // or if the indexes are out of bounds.
    **/
    @:keep
    static public function slice3( _v:Value, _i:GoInt, _j:GoInt, _k:GoInt):Value throw "reflect.slice3 is not yet implemented";
    /**
        // Slice returns v[i:j].
        // It panics if v's Kind is not Array, Slice or String, or if v is an unaddressable array,
        // or if the indexes are out of bounds.
    **/
    @:keep
    static public function slice( _v:Value, _i:GoInt, _j:GoInt):Value {
        var value = @:privateAccess _v.value.value;
        var t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        switch t {
            case stdgo.internal.reflect.Reflect.GoType.arrayType(elem, _):
                t = stdgo.internal.reflect.Reflect.GoType.sliceType(elem);
            case stdgo.internal.reflect.Reflect.GoType.named(path, methods, stdgo.internal.reflect.Reflect.GoType.arrayType(elem, _), alias, params):
                t = stdgo.internal.reflect.Reflect.GoType.named(path, methods, stdgo.internal.reflect.Reflect.GoType.sliceType(elem), alias, params);
            default:
                final _ = false;
        };
        final k = _v.kind();
        value = switch k {
            case stdgo.internal.reflect.Reflect.KindType.slice:
                (value : Slice<Dynamic>).__slice__(_i, _j);
            case stdgo.internal.reflect.Reflect.KindType.array:
                (value : GoArray<Dynamic>).__slice__(_i, _j);
            default:
                throw new ValueError("reflect.Value.Slice", k);
        };
        return new Value(new AnyInterface(value, new stdgo.internal.reflect.Reflect._Type(t)));
    }
    /**
        // SetString sets v's underlying value to x.
        // It panics if v's Kind is not String or if CanSet() is false.
    **/
    @:keep
    static public function setString( _v:Value, _x:GoString):Void {
        @:privateAccess _v.value.value = _x;
        stdgo.internal.reflect.Reflect._set(_v);
    }
    /**
        // SetPointer sets the [unsafe.Pointer] value v to x.
        // It panics if v's Kind is not UnsafePointer.
    **/
    @:keep
    static public function setPointer( _v:Value, _x:stdgo.unsafe.Unsafe.UnsafePointer):Void throw "reflect.setPointer is not yet implemented";
    /**
        // SetUint sets v's underlying value to x.
        // It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64, or if CanSet() is false.
    **/
    @:keep
    static public function setUint( _v:Value, _x:GoUInt64):Void {
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo.internal.reflect.Reflect.KindType.int8:
                (_x : GoInt8);
            case stdgo.internal.reflect.Reflect.KindType.int16:
                (_x : GoInt16);
            case stdgo.internal.reflect.Reflect.KindType.int32:
                (_x : GoInt32);
            case stdgo.internal.reflect.Reflect.KindType.int64:
                (_x : GoInt64);
            case stdgo.internal.reflect.Reflect.KindType.int:
                (_x : GoInt);
            case stdgo.internal.reflect.Reflect.KindType.uint8:
                (_x : GoUInt8);
            case stdgo.internal.reflect.Reflect.KindType.uint16:
                (_x : GoUInt16);
            case stdgo.internal.reflect.Reflect.KindType.uint32:
                (_x : GoUInt32);
            case stdgo.internal.reflect.Reflect.KindType.uint64:
                (_x : GoUInt64);
            case stdgo.internal.reflect.Reflect.KindType.uint:
                (_x : GoUInt);
            case stdgo.internal.reflect.Reflect.KindType.uintptr:
                (_x : GoUIntptr);
            default:
                throw "unknown setUInt kind: " + k.string();
        };
        stdgo.internal.reflect.Reflect._set(_v);
    }
    /**
        // SetMapIndex sets the element associated with key in the map v to elem.
        // It panics if v's Kind is not Map.
        // If elem is the zero Value, SetMapIndex deletes the key from the map.
        // Otherwise if v holds a nil map, SetMapIndex will panic.
        // As in Go, key's elem must be assignable to the map's key type,
        // and elem's value must be assignable to the map's elem type.
    **/
    @:keep
    static public function setMapIndex( _v:Value, _key:Value, _elem:Value):Void throw "reflect.setMapIndex is not yet implemented";
    /**
        // SetCap sets v's capacity to n.
        // It panics if v's Kind is not Slice or if n is smaller than the length or
        // greater than the capacity of the slice.
    **/
    @:keep
    static public function setCap( _v:Value, _n:GoInt):Void throw "reflect.setCap is not yet implemented";
    /**
        // SetLen sets v's length to n.
        // It panics if v's Kind is not Slice or if n is negative or
        // greater than the capacity of the slice.
    **/
    @:keep
    static public function setLen( _v:Value, _n:GoInt):Void throw "reflect.setLen is not yet implemented";
    /**
        // SetInt sets v's underlying value to x.
        // It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64, or if CanSet() is false.
    **/
    @:keep
    static public function setInt( _v:Value, _x:GoInt64):Void {
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo.internal.reflect.Reflect.KindType.int8:
                (_x : GoInt8);
            case stdgo.internal.reflect.Reflect.KindType.int16:
                (_x : GoInt16);
            case stdgo.internal.reflect.Reflect.KindType.int32:
                (_x : GoInt32);
            case stdgo.internal.reflect.Reflect.KindType.int64:
                (_x : GoInt64);
            case stdgo.internal.reflect.Reflect.KindType.int:
                (_x : GoInt);
            case stdgo.internal.reflect.Reflect.KindType.uint8:
                (_x : GoUInt8);
            case stdgo.internal.reflect.Reflect.KindType.uint16:
                (_x : GoUInt16);
            case stdgo.internal.reflect.Reflect.KindType.uint32:
                (_x : GoUInt32);
            case stdgo.internal.reflect.Reflect.KindType.uint64:
                (_x : GoUInt64);
            case stdgo.internal.reflect.Reflect.KindType.uint:
                (_x : GoUInt);
            default:
                throw "unknown setInt kind: " + k.string();
        };
        stdgo.internal.reflect.Reflect._set(_v);
    }
    /**
        // SetFloat sets v's underlying value to x.
        // It panics if v's Kind is not Float32 or Float64, or if CanSet() is false.
    **/
    @:keep
    static public function setFloat( _v:Value, _x:GoFloat64):Void {
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo.internal.reflect.Reflect.KindType.float32:
                (_x : GoFloat32);
            case stdgo.internal.reflect.Reflect.KindType.float64:
                (_x : GoFloat64);
            default:
                throw "unknown setFloat kind: " + k.string();
        };
        stdgo.internal.reflect.Reflect._set(_v);
    }
    /**
        // SetComplex sets v's underlying value to x.
        // It panics if v's Kind is not Complex64 or Complex128, or if CanSet() is false.
    **/
    @:keep
    static public function setComplex( _v:Value, _x:GoComplex128):Void {
        final k = _v.kind();
        @:privateAccess _v.value.value = switch k {
            case stdgo.internal.reflect.Reflect.KindType.complex64:
                (_x : GoComplex64);
            case stdgo.internal.reflect.Reflect.KindType.complex128:
                (_x : GoComplex128);
            default:
                throw "unknown setFloat kind: " + k.string();
        };
        stdgo.internal.reflect.Reflect._set(_v);
    }
    /**
        // SetBytes sets v's underlying value.
        // It panics if v's underlying value is not a slice of bytes.
    **/
    @:keep
    static public function setBytes( _v:Value, _x:Slice<GoByte>):Void throw "reflect.setBytes is not yet implemented";
    /**
        // SetBool sets v's underlying value.
        // It panics if v's Kind is not Bool or if CanSet() is false.
    **/
    @:keep
    static public function setBool( _v:Value, _x:Bool):Void {
        @:privateAccess _v.value.value = _x;
        stdgo.internal.reflect.Reflect._set(_v);
    }
    /**
        // Set assigns x to the value v.
        // It panics if CanSet returns false.
        // As in Go, x's value must be assignable to v's type and
        // must not be derived from an unexported field.
    **/
    @:keep
    static public function set( _v:Value, _x:Value):Void {
        var value = @:privateAccess _x.value.value;
        final gt = @:privateAccess _x.value.type._common();
        if (value != null) {
            final cl = std.Type.getClassName(std.Type.getClass(value));
            if (StringTools.endsWith(cl, "_asInterface")) {
                value = (value : Dynamic).__underlying__().value;
            };
        };
        final k = _v.kind();
        switch k {
            case stdgo.internal.reflect.Reflect.KindType.struct:
                switch stdgo.internal.reflect.Reflect.getUnderlying(gt) {
                case structType(fields):
                    for (field in fields) {
                    final fieldValue = std.Reflect.field(value, field.name);
                    std.Reflect.setField(value, field.name, fieldValue);
                };
                default:
                    final _ = false;
            };
            case stdgo.internal.reflect.Reflect.KindType.int8:
                _v.setInt((value : GoInt8));
            case stdgo.internal.reflect.Reflect.KindType.int16:
                _v.setInt((value : GoInt16));
            case stdgo.internal.reflect.Reflect.KindType.int32:
                _v.setInt((value : GoInt32));
            case stdgo.internal.reflect.Reflect.KindType.int64:
                _v.setInt((value : GoInt64));
            case stdgo.internal.reflect.Reflect.KindType.int:
                _v.setInt((value : GoInt));
            case stdgo.internal.reflect.Reflect.KindType.uint:
                _v.setInt((value : GoUInt8));
            case stdgo.internal.reflect.Reflect.KindType.uint16:
                _v.setInt((value : GoUInt16));
            case stdgo.internal.reflect.Reflect.KindType.uint32:
                _v.setInt((value : GoUInt32));
            case stdgo.internal.reflect.Reflect.KindType.uint64:
                _v.setInt((value : GoUInt64));
            case stdgo.internal.reflect.Reflect.KindType.float32:
                _v.setFloat((value : GoFloat32));
            case stdgo.internal.reflect.Reflect.KindType.float64:
                _v.setFloat((value : GoFloat64));
            case stdgo.internal.reflect.Reflect.KindType.string:
                _v.setString(value);
            case stdgo.internal.reflect.Reflect.KindType.slice:
                var value:Slice<Dynamic> = @:privateAccess _v.value.value;
final x:Slice<Dynamic> = @:privateAccess _x.value.value;
stdgo.internal.reflect.Reflect._set(_v);
            case stdgo.internal.reflect.Reflect.KindType.map:
                var value:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _v.value.value;
final x:haxe.Constraints.IMap<Dynamic, Dynamic> = @:privateAccess _x.value.value;
for (key => value in x) {
                value.set(key, value);
            };
stdgo.internal.reflect.Reflect._set(_v);
            default:
                @:privateAccess _v.value = _x.value;
stdgo.internal.reflect.Reflect._set(_v);
        };
    }
    /**
        // Send sends x on the channel v.
        // It panics if v's kind is not Chan or if x's type is not the same type as v's element type.
        // As in Go, x's value must be assignable to the channel's element type.
    **/
    @:keep
    static public function send( _v:Value, _x:Value):Void throw "reflect.send is not yet implemented";
    /**
        // Recv receives and returns a value from the channel v.
        // It panics if v's Kind is not Chan.
        // The receive blocks until a value is ready.
        // The boolean value ok is true if the value x corresponds to a send
        // on the channel, false if it is a zero value received because the channel is closed.
    **/
    @:keep
    static public function recv( _v:Value):{ var _0 : Value; var _1 : Bool; } throw "reflect.recv is not yet implemented";
    /**
        // Pointer returns v's value as a uintptr.
        // It panics if v's Kind is not Chan, Func, Map, Pointer, Slice, or UnsafePointer.
        //
        // If v's Kind is Func, the returned pointer is an underlying
        // code pointer, but not necessarily enough to identify a
        // single function uniquely. The only guarantee is that the
        // result is zero if and only if v is a nil func Value.
        //
        // If v's Kind is Slice, the returned pointer is to the first
        // element of the slice. If the slice is nil the returned value
        // is 0.  If the slice is empty but non-nil the return value is non-zero.
        //
        // It's preferred to use uintptr(Value.UnsafePointer()) to get the equivalent result.
    **/
    @:keep
    static public function pointer( _v:Value):GoUIntptr {
        if (@:privateAccess _v.value == null) return 0;
        var value = @:privateAccess _v.value.value;
        return value != null ? 1 : 0;
    }
    /**
        // OverflowUint reports whether the uint64 x cannot be represented by v's type.
        // It panics if v's Kind is not Uint, Uintptr, Uint8, Uint16, Uint32, or Uint64.
    **/
    @:keep
    static public function overflowUint( _v:Value, _x:GoUInt64):Bool throw "reflect.overflowUint is not yet implemented";
    /**
        // OverflowInt reports whether the int64 x cannot be represented by v's type.
        // It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.
    **/
    @:keep
    static public function overflowInt( _v:Value, _x:GoInt64):Bool throw "reflect.overflowInt is not yet implemented";
    /**
        // OverflowFloat reports whether the float64 x cannot be represented by v's type.
        // It panics if v's Kind is not Float32 or Float64.
    **/
    @:keep
    static public function overflowFloat( _v:Value, _x:GoFloat64):Bool throw "reflect.overflowFloat is not yet implemented";
    /**
        // OverflowComplex reports whether the complex128 x cannot be represented by v's type.
        // It panics if v's Kind is not Complex64 or Complex128.
    **/
    @:keep
    static public function overflowComplex( _v:Value, _x:GoComplex128):Bool throw "reflect.overflowComplex is not yet implemented";
    /**
        // NumField returns the number of fields in the struct v.
        // It panics if v's Kind is not Struct.
    **/
    @:keep
    static public function numField( _v:Value):GoInt {
        return _v.type().numField();
    }
    /**
        // MethodByName returns a function value corresponding to the method
        // of v with the given name.
        // The arguments to a Call on the returned function should not include
        // a receiver; the returned function will always use v as the receiver.
        // It returns the zero Value if no method was found.
    **/
    @:keep
    static public function methodByName( _v:Value, _name:GoString):Value throw "reflect.methodByName is not yet implemented";
    /**
        // NumMethod returns the number of methods in the value's method set.
        //
        // For a non-interface type, it returns the number of exported methods.
        //
        // For an interface type, it returns the number of exported and unexported methods.
    **/
    @:keep
    static public function numMethod( _v:Value):GoInt throw "reflect.numMethod is not yet implemented";
    /**
        // Method returns a function value corresponding to v's i'th method.
        // The arguments to a Call on the returned function should not include
        // a receiver; the returned function will always use v as the receiver.
        // Method panics if i is out of range or if v is a nil interface value.
    **/
    @:keep
    static public function method( _v:Value, _i:GoInt):Value throw "reflect.method is not yet implemented";
    /**
        // MapRange returns a range iterator for a map.
        // It panics if v's Kind is not Map.
        //
        // Call Next to advance the iterator, and Key/Value to access each entry.
        // Next returns false when the iterator is exhausted.
        // MapRange follows the same iteration semantics as a range statement.
        //
        // Example:
        //
        //	iter := reflect.ValueOf(m).MapRange()
        //	for iter.Next() {
        //		k := iter.Key()
        //		v := iter.Value()
        //		...
        //	}
    **/
    @:keep
    static public function mapRange( _v:Value):Ref<MapIter> {
        return new MapIter(@:privateAccess _v.value.value, @:privateAccess _v.value.type);
    }
    /**
        // SetIterValue assigns to v the value of iter's current map entry.
        // It is equivalent to v.Set(iter.Value()), but it avoids allocating a new Value.
        // As in Go, the value must be assignable to v's type and
        // must not be derived from an unexported field.
    **/
    @:keep
    static public function setIterValue( _v:Value, _iter:Ref<MapIter>):Void throw "reflect.setIterValue is not yet implemented";
    /**
        // SetIterKey assigns to v the key of iter's current map entry.
        // It is equivalent to v.Set(iter.Key()), but it avoids allocating a new Value.
        // As in Go, the key must be assignable to v's type and
        // must not be derived from an unexported field.
    **/
    @:keep
    static public function setIterKey( _v:Value, _iter:Ref<MapIter>):Void throw "reflect.setIterKey is not yet implemented";
    /**
        // MapKeys returns a slice containing all the keys present in the map,
        // in unspecified order.
        // It panics if v's Kind is not Map.
        // It returns an empty slice if v represents a nil map.
    **/
    @:keep
    static public function mapKeys( _v:Value):Slice<Value> throw "reflect.mapKeys is not yet implemented";
    /**
        // MapIndex returns the value associated with key in the map v.
        // It panics if v's Kind is not Map.
        // It returns the zero Value if key is not found in the map or if v represents a nil map.
        // As in Go, the key's value must be assignable to the map's key type.
    **/
    @:keep
    static public function mapIndex( _v:Value, _key:Value):Value throw "reflect.mapIndex is not yet implemented";
    /**
        // Len returns v's length.
        // It panics if v's Kind is not Array, Chan, Map, Slice, String, or pointer to Array.
    **/
    @:keep
    static public function len( _v:Value):GoInt {
        final _v = _v.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
            value = (value : Pointer<Dynamic>).value;
        };
        final k = _v.kind();
        return switch k {
            case stdgo.internal.reflect.Reflect.KindType.array:
                (value : GoArray<Dynamic>).length;
            case stdgo.internal.reflect.Reflect.KindType.chan:
                (value : Chan<Dynamic>).length;
            case stdgo.internal.reflect.Reflect.KindType.slice:
                (value : Slice<Dynamic>).length;
            case stdgo.internal.reflect.Reflect.KindType.map:
                Lambda.count((value : haxe.Constraints.IMap<Dynamic, Dynamic>));
            case stdgo.internal.reflect.Reflect.KindType.string:
                (value : Dynamic).length;
            default:
                trace(k.string());
throw "not supported";
        };
    }
    /**
        // Kind returns v's Kind.
        // If v is the zero Value (IsValid returns false), Kind returns Invalid.
    **/
    @:keep
    static public function kind( _v:Value):Kind return _v.type().kind();
    /**
        // SetZero sets v to be the zero value of v's type.
        // It panics if CanSet returns false.
    **/
    @:keep
    static public function setZero( _v:Value):Void throw "reflect.setZero is not yet implemented";
    /**
        // IsZero reports whether v is the zero value for its type.
        // It panics if the argument is invalid.
    **/
    @:keep
    static public function isZero( _v:Value):Bool throw "reflect.isZero is not yet implemented";
    /**
        // IsValid reports whether v represents a value.
        // It returns false if v is the zero Value.
        // If IsValid returns false, all other methods except String panic.
        // Most functions and methods never return an invalid Value.
        // If one does, its documentation states the conditions explicitly.
    **/
    @:keep
    static public function isValid( _v:Value):Bool {
        if (@:privateAccess _v.value == null) return false;
        if (@:privateAccess _v.value.type._common() != stdgo.internal.reflect.Reflect.GoType.invalidType) return true;
        return switch @:privateAccess _v.value.type._common() {
            case stdgo.internal.reflect.Reflect.GoType.basic(stdgo.internal.reflect.Reflect.BasicKind.untyped_nil_kind):
                false;
            default:
                true;
        };
    }
    /**
        // IsNil reports whether its argument v is nil. The argument must be
        // a chan, func, interface, map, pointer, or slice value; if it is
        // not, IsNil panics. Note that IsNil is not always equivalent to a
        // regular comparison with nil in Go. For example, if v was created
        // by calling ValueOf with an uninitialized interface variable i,
        // i==nil will be true but v.IsNil will panic as v will be the zero
        // Value.
    **/
    @:keep
    static public function isNil( _v:Value):Bool {
        var value = @:privateAccess _v.value.value;
        final k = _v.kind();
        final gt:stdgo.internal.reflect.Reflect.GoType = (_v.type() : Dynamic)._common();
        return switch k {
            case stdgo.internal.reflect.Reflect.KindType.pointer:
                switch gt {
                case stdgo.internal.reflect.Reflect.GoType.refType(_):
                    false;
                default:
                    if (value == null) {
                    true;
                } else {
                    (value : Pointer<Dynamic>).hasSet();
                };
            };
            case stdgo.internal.reflect.Reflect.KindType.func:
                value == null;
            case stdgo.internal.reflect.Reflect.KindType.chan:
                value == null;
            case stdgo.internal.reflect.Reflect.KindType.map:
                value == null;
            case stdgo.internal.reflect.Reflect.KindType.slice:
                value == null;
            case stdgo.internal.reflect.Reflect.KindType.interface_:
                value == null;
            case stdgo.internal.reflect.Reflect.KindType.array:
                false;
            case stdgo.internal.reflect.Reflect.KindType.struct:
                false;
            case stdgo.internal.reflect.Reflect.KindType.invalid:
                false;
            case stdgo.internal.reflect.Reflect.KindType.unsafePointer, stdgo.internal.reflect.Reflect.KindType.uintptr:
                value == null;
            case stdgo.internal.reflect.Reflect.KindType.bool, stdgo.internal.reflect.Reflect.KindType.int, stdgo.internal.reflect.Reflect.KindType.int32, stdgo.internal.reflect.Reflect.KindType.int64, stdgo.internal.reflect.Reflect.KindType.float32, stdgo.internal.reflect.Reflect.KindType.float64, stdgo.internal.reflect.Reflect.KindType.int8, stdgo.internal.reflect.Reflect.KindType.int16, stdgo.internal.reflect.Reflect.KindType.uint, stdgo.internal.reflect.Reflect.KindType.uint8, stdgo.internal.reflect.Reflect.KindType.uint16, stdgo.internal.reflect.Reflect.KindType.uint32, stdgo.internal.reflect.Reflect.KindType.uint64, stdgo.internal.reflect.Reflect.KindType.string, stdgo.internal.reflect.Reflect.KindType.complex64, stdgo.internal.reflect.Reflect.KindType.complex128:
                false;
            default:
                throw "nil check not supported kind: " + _v.kind().string();
        };
    }
    /**
        // InterfaceData returns a pair of unspecified uintptr values.
        // It panics if v's Kind is not Interface.
        //
        // In earlier versions of Go, this function returned the interface's
        // value as a uintptr pair. As of Go 1.4, the implementation of
        // interface values precludes any defined use of InterfaceData.
        //
        // Deprecated: The memory representation of interface values is not
        // compatible with InterfaceData.
    **/
    @:keep
    static public function interfaceData( _v:Value):GoArray<GoUIntptr> throw "reflect.interfaceData is not yet implemented";
    /**
        // Interface returns v's current value as an interface{}.
        // It is equivalent to:
        //
        //	var i interface{} = (v's underlying value)
        //
        // It panics if the Value was obtained by accessing
        // unexported struct fields.
    **/
    @:keep
    static public function interface_( _v:Value):AnyInterface return @:privateAccess _v.value;
    /**
        // CanInterface reports whether Interface can be used without panicking.
    **/
    @:keep
    static public function canInterface( _v:Value):Bool {
        return true;
    }
    /**
        // Int returns v's underlying value, as an int64.
        // It panics if v's Kind is not Int, Int8, Int16, Int32, or Int64.
    **/
    @:keep
    static public function int_( _v:Value):GoInt64 {
        var value = @:privateAccess _v.value.value;
        final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
            value = (value : Pointer<Dynamic>).value;
        };
        final value:GoInt64 = switch _v.kind() {
            case stdgo.internal.reflect.Reflect.KindType.int:
                (value : GoInt8);
            case stdgo.internal.reflect.Reflect.KindType.int8:
                (value : GoInt8);
            case stdgo.internal.reflect.Reflect.KindType.int16:
                (value : GoInt16);
            case stdgo.internal.reflect.Reflect.KindType.int32:
                (value : GoInt32);
            case stdgo.internal.reflect.Reflect.KindType.int64:
                (value : GoInt64);
            default:
                throw new ValueError("reflect.Value.Int", _v.kind());
        };
        return value;
    }
    /**
        // CanInt reports whether Int can be used without panicking.
    **/
    @:keep
    static public function canInt( _v:Value):Bool throw "reflect.canInt is not yet implemented";
    /**
        // Index returns v's i'th element.
        // It panics if v's Kind is not Array, Slice, or String or i is out of range.
    **/
    @:keep
    static public function index( _v:Value, _i:GoInt):Value {
        final _v = _v.__copy__();
        var value = @:privateAccess _v.value.value;
        final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
            value = (value : Pointer<Dynamic>).value;
        };
        final gt = stdgo.internal.reflect.Reflect.getUnderlying(@:privateAccess _v.value.type._common());
        return switch gt {
            case stdgo.internal.reflect.Reflect.GoType.arrayType(_.get() => elem, _):
                final t = @:privateAccess new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.unroll(gt, elem));
final valueInterface = stdgo.internal.reflect.Reflect.asInterfaceValue((value : GoArray<Dynamic>)[_i], t._common());
new Value(new AnyInterface(valueInterface, t), value, _i);
            case stdgo.internal.reflect.Reflect.GoType.sliceType(_.get() => elem):
                final t = @:privateAccess new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.unroll(gt, elem));
final valueInterface = stdgo.internal.reflect.Reflect.asInterfaceValue((value : Slice<Dynamic>)[_i], t._common());
final value = new Value(new AnyInterface(valueInterface, t), value, _i);
@:privateAccess value.canAddrBool = true;
value;
            case stdgo.internal.reflect.Reflect.GoType.basic(kind):
                switch kind {
                case string_kind:
                    var value = value;
if ((value is String)) value = (value : GoString);
new Value(new AnyInterface((value : GoString)[_i], new stdgo.internal.reflect.Reflect._Type(basic(uint8_kind))));
                default:
                    throw "unsupported basic kind";
            };
            default:
                throw "not supported";
        };
    }
    /**
        // Float returns v's underlying value, as a float64.
        // It panics if v's Kind is not Float32 or Float64
    **/
    @:keep
    static public function float_( _v:Value):GoFloat64 {
        var value = @:privateAccess _v.value.value;
        final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
            value = (value : Pointer<Dynamic>).value;
        };
        final value:GoFloat64 = switch _v.kind() {
            case stdgo.internal.reflect.Reflect.KindType.float64:
                (value : GoFloat64);
            case stdgo.internal.reflect.Reflect.KindType.float32:
                (value : GoFloat32);
            default:
                throw new ValueError("reflect.Value.Float", _v.kind());
        };
        return value;
    }
    /**
        // CanFloat reports whether Float can be used without panicking.
    **/
    @:keep
    static public function canFloat( _v:Value):Bool throw "reflect.canFloat is not yet implemented";
    /**
        // FieldByNameFunc returns the struct field with a name
        // that satisfies the match function.
        // It panics if v's Kind is not struct.
        // It returns the zero Value if no field was found.
    **/
    @:keep
    static public function fieldByNameFunc( _v:Value, _match:GoString -> Bool):Value throw "reflect.fieldByNameFunc is not yet implemented";
    /**
        // FieldByName returns the struct field with the given name.
        // It returns the zero Value if no field was found.
        // It panics if v's Kind is not struct.
    **/
    @:keep
    static public function fieldByName( _v:Value, _name:GoString):Value throw "reflect.fieldByName is not yet implemented";
    /**
        // FieldByIndexErr returns the nested field corresponding to index.
        // It returns an error if evaluation requires stepping through a nil
        // pointer, but panics if it must step through a field that
        // is not a struct.
    **/
    @:keep
    static public function fieldByIndexErr( _v:Value, _index:Slice<GoInt>):{ var _0 : Value; var _1 : Error; } throw "reflect.fieldByIndexErr is not yet implemented";
    /**
        // FieldByIndex returns the nested field corresponding to index.
        // It panics if evaluation requires stepping through a nil
        // pointer or a field that is not a struct.
    **/
    @:keep
    static public function fieldByIndex( _v:Value, _index:Slice<GoInt>):Value throw "reflect.fieldByIndex is not yet implemented";
    /**
        // Field returns the i'th field of the struct v.
        // It panics if v's Kind is not Struct or i is out of range.
    **/
    @:keep
    static public function field( _v:Value, _i:GoInt):Value {
        final gt = @:privateAccess stdgo.internal.reflect.Reflect.getUnderlying(_v.value.type._common());
        return switch gt {
            case structType(fields):
                final field = fields[_i.toBasic()];
final t = @:privateAccess (cast _v.value.type.field(_i).type : stdgo.internal.reflect.Reflect._Type_asInterface).__type__;
var fieldValue = std.Reflect.field(@:privateAccess _v.value.value, field.name);
fieldValue = stdgo.internal.reflect.Reflect.asInterfaceValue(fieldValue, t._common());
final valueType = new Value(new AnyInterface(fieldValue, t));
if (field.name.charAt(0) == "_") @:privateAccess valueType.notSetBool = false;
valueType;
            default:
                throw "unsupported: " + gt;
        };
    }
    /**
        // Elem returns the value that the interface v contains
        // or that the pointer v points to.
        // It panics if v's Kind is not Interface or Pointer.
        // It returns the zero Value if v is nil.
    **/
    @:keep
    static public function elem( _v:Value):Value {
        var value = @:privateAccess _v.value.value;
        final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t) && !stdgo.internal.reflect.Reflect.isRef(t) && !stdgo.internal.reflect.Reflect.isPointer(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) {
                    @:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
                    value = (value : Dynamic).__underlying__().value;
                };
                default:
                    final _ = false;
            };
        };
        var k = _v.kind();
        switch k {
            case stdgo.internal.reflect.Reflect.KindType.pointer:
                final t = stdgo.internal.reflect.Reflect.getUnderlying(t);
switch t {
                case stdgo.internal.reflect.Reflect.GoType.refType(_.get() => elem):
                    final value = new Value(new AnyInterface(value, new stdgo.internal.reflect.Reflect._Type(elem)), null);
@:privateAccess value.canAddrBool = true;
return value;
                case stdgo.internal.reflect.Reflect.GoType.pointerType(_.get() => elem):
                    if (value == null) {
                    final value = new Value(new AnyInterface(null, new stdgo.internal.reflect.Reflect._Type(elem)), value);
                    @:privateAccess value.canAddrBool = true;
                    return value;
                };
final ptrValue = (value : Pointer<Dynamic>).value;
final value = new Value(new AnyInterface(ptrValue, new stdgo.internal.reflect.Reflect._Type(elem)), value);
@:privateAccess value.canAddrBool = true;
return value;
                default:
                    final _ = false;
            };
            case stdgo.internal.reflect.Reflect.KindType.interface_:
                if (value == null) return new Value();
return new Value(value, @:privateAccess _v.value.type);
        };
        throw new ValueError("reflect.Value.Elem", k);
    }
    /**
        // Complex returns v's underlying value, as a complex128.
        // It panics if v's Kind is not Complex64 or Complex128
    **/
    @:keep
    static public function complex( _v:Value):GoComplex128 {
        var value = @:privateAccess _v.value.value;
        final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
            value = (value : Pointer<Dynamic>).value;
        };
        final value:GoComplex128 = switch _v.kind() {
            case stdgo.internal.reflect.Reflect.KindType.complex128, stdgo.internal.reflect.Reflect.KindType.complex64:
                value;
            default:
                throw new ValueError("Value.Complex", _v.kind());
        };
        return value;
    }
    /**
        // CanComplex reports whether Complex can be used without panicking.
    **/
    @:keep
    static public function canComplex( _v:Value):Bool throw "reflect.canComplex is not yet implemented";
    /**
        // Close closes the channel v.
        // It panics if v's Kind is not Chan.
    **/
    @:keep
    static public function close( _v:Value):Void throw "reflect.close is not yet implemented";
    /**
        // Cap returns v's capacity.
        // It panics if v's Kind is not Array, Chan, Slice or pointer to Array.
    **/
    @:keep
    static public function cap( _v:Value):GoInt throw "reflect.cap is not yet implemented";
    /**
        // CallSlice calls the variadic function v with the input arguments in,
        // assigning the slice in[len(in)-1] to v's final variadic argument.
        // For example, if len(in) == 3, v.CallSlice(in) represents the Go call v(in[0], in[1], in[2]...).
        // CallSlice panics if v's Kind is not Func or if v is not variadic.
        // It returns the output results as Values.
        // As in Go, each input argument must be assignable to the
        // type of the function's corresponding input parameter.
    **/
    @:keep
    static public function callSlice( _v:Value, _in:Slice<Value>):Slice<Value> throw "reflect.callSlice is not yet implemented";
    /**
        // Call calls the function v with the input arguments in.
        // For example, if len(in) == 3, v.Call(in) represents the Go call v(in[0], in[1], in[2]).
        // Call panics if v's Kind is not Func.
        // It returns the output results as Values.
        // As in Go, each input argument must be assignable to the
        // type of the function's corresponding input parameter.
        // If v is a variadic function, Call creates the variadic slice parameter
        // itself, copying in the corresponding values.
    **/
    @:keep
    static public function call( _v:Value, _in:Slice<Value>):Slice<Value> throw "reflect.call is not yet implemented";
    /**
        // CanSet reports whether the value of v can be changed.
        // A Value can be changed only if it is addressable and was not
        // obtained by the use of unexported struct fields.
        // If CanSet returns false, calling Set or any type-specific
        // setter (e.g., SetBool, SetInt) will panic.
    **/
    @:keep
    static public function canSet( _v:Value):Bool throw "reflect.canSet is not yet implemented";
    /**
        // CanAddr reports whether the value's address can be obtained with Addr.
        // Such values are called addressable. A value is addressable if it is
        // an element of a slice, an element of an addressable array,
        // a field of an addressable struct, or the result of dereferencing a pointer.
        // If CanAddr returns false, calling Addr will panic.
    **/
    @:keep
    static public function canAddr( _v:Value):Bool {
        return @:privateAccess _v.canAddrBool;
    }
    /**
        // Bytes returns v's underlying value.
        // It panics if v's underlying value is not a slice of bytes or
        // an addressable array of bytes.
    **/
    @:keep
    static public function bytes( _v:Value):Slice<GoByte> {
        final _v = _v.__copy__();
        var value = @:privateAccess _v.value.value;
        var t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t)) {
            t = stdgo.internal.reflect.Reflect.getUnderlying(t);
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
            value = (value : Pointer<Dynamic>).value;
            t = @:privateAccess _v.value.type._common();
        };
        switch t {
            case stdgo.internal.reflect.Reflect.GoType.arrayType(_.get() => elem, _):
                switch elem {
                case stdgo.internal.reflect.Reflect.GoType.basic(stdgo.internal.reflect.Reflect.BasicKind.uint8_kind):
                    return (value : GoArray<GoByte>).__slice__(0);
                default:
                    throw new ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
            };
            case stdgo.internal.reflect.Reflect.GoType.sliceType(_.get() => elem):
                elem = stdgo.internal.reflect.Reflect.getUnderlying(elem);
switch elem {
                case stdgo.internal.reflect.Reflect.GoType.basic(stdgo.internal.reflect.Reflect.BasicKind.uint8_kind):
                    return value;
                default:
                    throw new ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
            };
            default:
                throw new ValueError("reflect.Value.Bytes", @:privateAccess _v.kind());
        };
    }
    /**
        // Bool returns v's underlying value.
        // It panics if v's kind is not Bool.
    **/
    @:keep
    static public function bool_( _v:Value):Bool {
        var value = @:privateAccess _v.value.value;
        final t:stdgo.internal.reflect.Reflect.GoType = @:privateAccess _v.value.type._common();
        if (stdgo.internal.reflect.Reflect.isNamed(t)) {
            switch std.Type.typeof(value) {
                case TClass(c):
                    final name = std.Type.getClassName(c);
if (StringTools.endsWith(name, "_asInterface")) value = (value : Dynamic).__underlying__().value;
                default:
                    final _ = false;
            };
        };
        if (stdgo.internal.reflect.Reflect.isPointer(t)) {
            @:privateAccess _v.value.type.gt = stdgo.internal.reflect.Reflect.getElem(t);
            value = (value : Pointer<Dynamic>).value;
        };
        final value:Bool = switch _v.kind() {
            case stdgo.internal.reflect.Reflect.KindType.bool:
                value;
            default:
                throw new ValueError("reflect.Value.Bool", _v.kind());
        };
        return value;
    }
    /**
        // Addr returns a pointer value representing the address of v.
        // It panics if CanAddr() returns false.
        // Addr is typically used to obtain a pointer to a struct field
        // or slice element in order to call a method that requires a
        // pointer receiver.
    **/
    @:keep
    static public function addr( _v:Value):Value throw "reflect.addr is not yet implemented";
}
class ValueError_asInterface {
    @:keep
    public dynamic function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ValueError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.reflect.Reflect.ValueError_asInterface) class ValueError_static_extension {
    @:keep
    static public function error( _e:Ref<ValueError>):GoString throw "reflect.error is not yet implemented";
}
class MapIter_asInterface {
    /**
        // Reset modifies iter to iterate over v.
        // It panics if v's Kind is not Map and v is not the zero Value.
        // Reset(Value{}) causes iter to not to refer to any map,
        // which may allow the previously iterated-over map to be garbage collected.
    **/
    @:keep
    public dynamic function reset(_v:Value):Void __self__.value.reset(_v);
    /**
        // Next advances the map iterator and reports whether there is another
        // entry. It returns false when iter is exhausted; subsequent
        // calls to Key, Value, or Next will panic.
    **/
    @:keep
    public dynamic function next():Bool return __self__.value.next();
    /**
        // Value returns the value of iter's current map entry.
    **/
    @:keep
    public dynamic function value():Value return __self__.value.value();
    /**
        // Key returns the key of iter's current map entry.
    **/
    @:keep
    public dynamic function key():Value return __self__.value.key();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<MapIter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.reflect.Reflect.MapIter_asInterface) class MapIter_static_extension {
    /**
        // Reset modifies iter to iterate over v.
        // It panics if v's Kind is not Map and v is not the zero Value.
        // Reset(Value{}) causes iter to not to refer to any map,
        // which may allow the previously iterated-over map to be garbage collected.
    **/
    @:keep
    static public function reset( _iter:Ref<MapIter>, _v:Value):Void {
        @:privateAccess _iter.index = 0;
        @:privateAccess _iter.map = _v.value.value;
        @:privateAccess _iter.keys = null;
        @:privateAccess _iter.values = null;
    }
    /**
        // Next advances the map iterator and reports whether there is another
        // entry. It returns false when iter is exhausted; subsequent
        // calls to Key, Value, or Next will panic.
    **/
    @:keep
    static public function next( _iter:Ref<MapIter>):Bool {
        if (@:privateAccess _iter.map == null) return false;
        @:privateAccess if (_iter.keys == null) {
            @:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
            @:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
        } else {
            @:privateAccess _iter.index++;
        };
        return @:privateAccess _iter.index < @:privateAccess _iter.keys.length;
    }
    /**
        // Value returns the value of iter's current map entry.
    **/
    @:keep
    static public function value( _iter:Ref<MapIter>):Value {
        @:privateAccess if (_iter.keys == null) {
            @:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
            @:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
        };
        final gt = stdgo.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
        final value = switch gt {
            case mapType(_, _.get() => valueType):
                new stdgo.internal.reflect.Reflect._Type(valueType);
            default:
                throw "invalid mapType: " + gt;
        };
        return new Value(new AnyInterface(@:privateAccess _iter.values[_iter.index], value));
    }
    /**
        // Key returns the key of iter's current map entry.
    **/
    @:keep
    static public function key( _iter:Ref<MapIter>):Value {
        @:privateAccess if (_iter.keys == null) {
            @:privateAccess _iter.keys = [for (key in _iter.map.keys()) key];
            @:privateAccess _iter.values = [for (key in _iter.map.iterator()) key];
        };
        final gt = stdgo.internal.reflect.Reflect.getUnderlying(@:privateAccess _iter.t._common());
        final key = switch gt {
            case mapType(_.get() => var keyType, _):
                new stdgo.internal.reflect.Reflect._Type(keyType);
            default:
                throw "invalid mapType: " + gt;
        };
        return new Value(new AnyInterface(@:privateAccess _iter.keys[_iter.index], key));
    }
}
class Kind_asInterface {
    /**
        // String returns the name of k.
    **/
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Kind>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.reflect.Reflect.Kind_asInterface) class Kind_static_extension {
    /**
        // String returns the name of k.
    **/
    @:keep
    static public function string( _k:Kind):GoString {
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
class ChanDir_asInterface {
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<ChanDir>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.reflect.Reflect.ChanDir_asInterface) class ChanDir_static_extension {
    @:keep
    static public function string( _d:ChanDir):GoString throw "reflect.string is not yet implemented";
}
class StructTag_asInterface {
    /**
        // Lookup returns the value associated with key in the tag string.
        // If the key is present in the tag the value (which may be empty)
        // is returned. Otherwise the returned value will be the empty string.
        // The ok return value reports whether the value was explicitly set in
        // the tag string. If the tag does not have the conventional format,
        // the value returned by Lookup is unspecified.
    **/
    @:keep
    public dynamic function lookup(_key:GoString):{ var _0 : GoString; var _1 : Bool; } return __self__.value.lookup(_key);
    /**
        // Get returns the value associated with key in the tag string.
        // If there is no such key in the tag, Get returns the empty string.
        // If the tag does not have the conventional format, the value
        // returned by Get is unspecified. To determine whether a tag is
        // explicitly set to the empty string, use Lookup.
    **/
    @:keep
    public dynamic function get(_key:GoString):GoString return __self__.value.get(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<StructTag>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.reflect.Reflect.StructTag_asInterface) class StructTag_static_extension {
    /**
        // Lookup returns the value associated with key in the tag string.
        // If the key is present in the tag the value (which may be empty)
        // is returned. Otherwise the returned value will be the empty string.
        // The ok return value reports whether the value was explicitly set in
        // the tag string. If the tag does not have the conventional format,
        // the value returned by Lookup is unspecified.
    **/
    @:keep
    static public function lookup( _tag:StructTag, _key:GoString):{ var _0 : GoString; var _1 : Bool; } throw "reflect.lookup is not yet implemented";
    /**
        // Get returns the value associated with key in the tag string.
        // If there is no such key in the tag, Get returns the empty string.
        // If the tag does not have the conventional format, the value
        // returned by Get is unspecified. To determine whether a tag is
        // explicitly set to the empty string, use Lookup.
    **/
    @:keep
    static public function get( _tag:StructTag, _key:GoString):GoString throw "reflect.get is not yet implemented";
}
