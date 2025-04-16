package stdgo.internal.intern;
typedef Value = stdgo._internal.internal.intern.Intern_value.Value;
typedef ValuePointer = stdgo._internal.internal.intern.Intern_valuepointer.ValuePointer;
/**
    * Package intern lets you make smaller comparable values by boxing
    * a larger comparable value (such as a 16 byte string header) down
    * into a globally unique 8 byte pointer.
    * 
    * The globally unique pointers are garbage collected with weak
    * references and finalizers. This package hides that.
**/
class Intern {
    /**
        * Get returns a pointer representing the comparable value cmpVal.
        * 
        * The returned pointer will be the same for Get(v) and Get(v2)
        * if and only if v == v2, and can be used as a map key.
    **/
    static public inline function get(_cmpVal:stdgo.AnyInterface):stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> return stdgo._internal.internal.intern.Intern_get.get(_cmpVal);
    /**
        * GetByString is identical to Get, except that it is specialized for strings.
        * This avoids an allocation from putting a string into an interface{}
        * to pass as an argument to Get.
    **/
    static public inline function getByString(_s:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> return stdgo._internal.internal.intern.Intern_getbystring.getByString(_s);
}
