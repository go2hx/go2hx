package stdgo;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;


var _divideError:Error = new T_errorString_asInterface("integer divide by zero");
var _overflowError:Error = new T_errorString_asInterface("integer overflow");
var _nullPointerDereference:Error = new T_errorString_asInterface("null pointer dereference");
typedef Error = StructType & {
	public dynamic function error():GoString;
};

class T_errorString_asInterface {
    @:keep
    @:tdfield
    public dynamic function error():stdgo.GoString return "runtime error: " + errorString;
    @:keep
    @:tdfield
    public dynamic function runtimeError():Void  {}
    public function new(errorString:stdgo.GoString) {
		this.errorString = errorString;
    }
    var errorString:stdgo.GoString = "";
    public function __underlying__()  {
      // TODO set type
      return new AnyInterface(this, typeInfo);
    }
}

var typeInfo = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.named("errorString", [new stdgo._internal.internal.reflect.MethodType("error", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }), new stdgo._internal.internal.reflect.MethodType("runtimeError", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })], stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("error", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }), new stdgo._internal.internal.reflect.MethodType("runtimeError", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]), false, { get : () -> null }));
