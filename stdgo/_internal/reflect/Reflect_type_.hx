package stdgo._internal.reflect;
@:interface typedef Type_ = stdgo.StructType & {
    /**
        * Align returns the alignment in bytes of a value of
        * this type when allocated in memory.
        
        
    **/
    @:interfacetypeffun
    public dynamic function align():stdgo.GoInt;
    /**
        * FieldAlign returns the alignment in bytes of a value of
        * this type when used as a field in a struct.
        
        
    **/
    @:interfacetypeffun
    public dynamic function fieldAlign():stdgo.GoInt;
    /**
        * Method returns the i'th method in the type's method set.
        * It panics if i is not in the range [0, NumMethod()).
        * 
        * For a non-interface type T or *T, the returned Method's Type and Func
        * fields describe a function whose first argument is the receiver,
        * and only exported methods are accessible.
        * 
        * For an interface type, the returned Method's Type field gives the
        * method signature, without a receiver, and the Func field is nil.
        * 
        * Methods are sorted in lexicographic order.
        
        
    **/
    @:interfacetypeffun
    public dynamic function method(_0:stdgo.GoInt):stdgo._internal.reflect.Reflect_method.Method;
    /**
        * MethodByName returns the method with that name in the type's
        * method set and a boolean indicating if the method was found.
        * 
        * For a non-interface type T or *T, the returned Method's Type and Func
        * fields describe a function whose first argument is the receiver.
        * 
        * For an interface type, the returned Method's Type field gives the
        * method signature, without a receiver, and the Func field is nil.
        
        
    **/
    @:interfacetypeffun
    public dynamic function methodByName(_0:stdgo.GoString):{ var _0 : stdgo._internal.reflect.Reflect_method.Method; var _1 : Bool; };
    /**
        * NumMethod returns the number of methods accessible using Method.
        * 
        * For a non-interface type, it returns the number of exported methods.
        * 
        * For an interface type, it returns the number of exported and unexported methods.
        
        
    **/
    @:interfacetypeffun
    public dynamic function numMethod():stdgo.GoInt;
    /**
        * Name returns the type's name within its package for a defined type.
        * For other (non-defined) types it returns the empty string.
        
        
    **/
    @:interfacetypeffun
    public dynamic function name():stdgo.GoString;
    /**
        * PkgPath returns a defined type's package path, that is, the import path
        * that uniquely identifies the package, such as "encoding/base64".
        * If the type was predeclared (string, error) or not defined (*T, struct{},
        * []int, or A where A is an alias for a non-defined type), the package path
        * will be the empty string.
        
        
    **/
    @:interfacetypeffun
    public dynamic function pkgPath():stdgo.GoString;
    /**
        * Size returns the number of bytes needed to store
        * a value of the given type; it is analogous to unsafe.Sizeof.
        
        
    **/
    @:interfacetypeffun
    public dynamic function size():stdgo.GoUIntptr;
    /**
        * String returns a string representation of the type.
        * The string representation may use shortened package names
        * (e.g., base64 instead of "encoding/base64") and is not
        * guaranteed to be unique among types. To test for type identity,
        * compare the Types directly.
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
    /**
        * Kind returns the specific kind of this type.
        
        
    **/
    @:interfacetypeffun
    public dynamic function kind():stdgo._internal.reflect.Reflect_kind.Kind;
    /**
        * Implements reports whether the type implements the interface type u.
        
        
    **/
    @:interfacetypeffun
    public dynamic function implements_(_u:stdgo._internal.reflect.Reflect_type_.Type_):Bool;
    /**
        * AssignableTo reports whether a value of the type is assignable to type u.
        
        
    **/
    @:interfacetypeffun
    public dynamic function assignableTo(_u:stdgo._internal.reflect.Reflect_type_.Type_):Bool;
    /**
        * ConvertibleTo reports whether a value of the type is convertible to type u.
        * Even if ConvertibleTo returns true, the conversion may still panic.
        * For example, a slice of type []T is convertible to *[N]T,
        * but the conversion will panic if its length is less than N.
        
        
    **/
    @:interfacetypeffun
    public dynamic function convertibleTo(_u:stdgo._internal.reflect.Reflect_type_.Type_):Bool;
    /**
        * Comparable reports whether values of this type are comparable.
        * Even if Comparable returns true, the comparison may still panic.
        * For example, values of interface type are comparable,
        * but the comparison will panic if their dynamic type is not comparable.
        
        
    **/
    @:interfacetypeffun
    public dynamic function comparable_():Bool;
    /**
        * Bits returns the size of the type in bits.
        * It panics if the type's Kind is not one of the
        * sized or unsized Int, Uint, Float, or Complex kinds.
        
        
    **/
    @:interfacetypeffun
    public dynamic function bits():stdgo.GoInt;
    /**
        * ChanDir returns a channel type's direction.
        * It panics if the type's Kind is not Chan.
        
        
    **/
    @:interfacetypeffun
    public dynamic function chanDir():stdgo._internal.reflect.Reflect_chandir.ChanDir;
    /**
        * IsVariadic reports whether a function type's final input parameter
        * is a "..." parameter. If so, t.In(t.NumIn() - 1) returns the parameter's
        * implicit actual type []T.
        * 
        * For concreteness, if t represents func(x int, y ... float64), then
        * 
        * 	t.NumIn() == 2
        * 	t.In(0) is the reflect.Type for "int"
        * 	t.In(1) is the reflect.Type for "[]float64"
        * 	t.IsVariadic() == true
        * 
        * IsVariadic panics if the type's Kind is not Func.
        
        
    **/
    @:interfacetypeffun
    public dynamic function isVariadic():Bool;
    /**
        * Elem returns a type's element type.
        * It panics if the type's Kind is not Array, Chan, Map, Pointer, or Slice.
        
        
    **/
    @:interfacetypeffun
    public dynamic function elem():stdgo._internal.reflect.Reflect_type_.Type_;
    /**
        * Field returns a struct type's i'th field.
        * It panics if the type's Kind is not Struct.
        * It panics if i is not in the range [0, NumField()).
        
        
    **/
    @:interfacetypeffun
    public dynamic function field(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_structfield.StructField;
    /**
        * FieldByIndex returns the nested field corresponding
        * to the index sequence. It is equivalent to calling Field
        * successively for each index i.
        * It panics if the type's Kind is not Struct.
        
        
    **/
    @:interfacetypeffun
    public dynamic function fieldByIndex(_index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Reflect_structfield.StructField;
    /**
        * FieldByName returns the struct field with the given name
        * and a boolean indicating if the field was found.
        
        
    **/
    @:interfacetypeffun
    public dynamic function fieldByName(_name:stdgo.GoString):{ var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; };
    /**
        * FieldByNameFunc returns the struct field with a name
        * that satisfies the match function and a boolean indicating if
        * the field was found.
        * 
        * FieldByNameFunc considers the fields in the struct itself
        * and then the fields in any embedded structs, in breadth first order,
        * stopping at the shallowest nesting depth containing one or more
        * fields satisfying the match function. If multiple fields at that depth
        * satisfy the match function, they cancel each other
        * and FieldByNameFunc returns no match.
        * This behavior mirrors Go's handling of name lookup in
        * structs containing embedded fields.
        
        
    **/
    @:interfacetypeffun
    public dynamic function fieldByNameFunc(_match:stdgo.GoString -> Bool):{ var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; };
    /**
        * In returns the type of a function type's i'th input parameter.
        * It panics if the type's Kind is not Func.
        * It panics if i is not in the range [0, NumIn()).
        
        
    **/
    @:interfacetypeffun
    public dynamic function in_(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_type_.Type_;
    /**
        * Key returns a map type's key type.
        * It panics if the type's Kind is not Map.
        
        
    **/
    @:interfacetypeffun
    public dynamic function key():stdgo._internal.reflect.Reflect_type_.Type_;
    /**
        * Len returns an array type's length.
        * It panics if the type's Kind is not Array.
        
        
    **/
    @:interfacetypeffun
    public dynamic function len():stdgo.GoInt;
    /**
        * NumField returns a struct type's field count.
        * It panics if the type's Kind is not Struct.
        
        
    **/
    @:interfacetypeffun
    public dynamic function numField():stdgo.GoInt;
    /**
        * NumIn returns a function type's input parameter count.
        * It panics if the type's Kind is not Func.
        
        
    **/
    @:interfacetypeffun
    public dynamic function numIn():stdgo.GoInt;
    /**
        * NumOut returns a function type's output parameter count.
        * It panics if the type's Kind is not Func.
        
        
    **/
    @:interfacetypeffun
    public dynamic function numOut():stdgo.GoInt;
    /**
        * Out returns the type of a function type's i'th output parameter.
        * It panics if the type's Kind is not Func.
        * It panics if i is not in the range [0, NumOut()).
        
        
    **/
    @:interfacetypeffun
    public dynamic function out(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_type_.Type_;
};
