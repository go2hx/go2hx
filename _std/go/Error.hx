package go;

import go.Chan;
import go.Error;
import go.Go;
import go.GoArray;
import go.GoString;
import go.Pointer;
import go.Slice;


private var _divideError:Error = new T_errorString_asInterface("integer divide by zero");
private var _overflowError:Error = new T_errorString_asInterface("integer overflow");

typedef Error = StructType & {
	public dynamic function error():GoString;
};

class T_errorString_asInterface {
    @:keep
    @:tdfield
    public dynamic function error():go.GoString return "runtime error: " + errorString;
    @:keep
    @:tdfield
    public dynamic function runtimeError():Void  {}
    public function new(errorString:go.GoString) {
		this.errorString = errorString;
    }
    var errorString:go.GoString = "";
    public function __underlying__()  {
      // TODO set type
      return new AnyInterface(this, typeInfo);
    }
}

var typeInfo = new go._internal.internal.reflect.Reflect._Type(go._internal.internal.reflect.GoType.named("errorString", [new go._internal.internal.reflect.MethodType("error", { get : () -> go._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [go._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> go._internal.internal.reflect.GoType.invalidType }) }, { get : () -> go._internal.internal.reflect.GoType.invalidType }), new go._internal.internal.reflect.MethodType("runtimeError", { get : () -> go._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> go._internal.internal.reflect.GoType.invalidType }) }, { get : () -> go._internal.internal.reflect.GoType.invalidType })], go._internal.internal.reflect.GoType.interfaceType(false, [new go._internal.internal.reflect.MethodType("error", { get : () -> go._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [go._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> go._internal.internal.reflect.GoType.invalidType }) }, { get : () -> go._internal.internal.reflect.GoType.invalidType }), new go._internal.internal.reflect.MethodType("runtimeError", { get : () -> go._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> go._internal.internal.reflect.GoType.invalidType }) }, { get : () -> go._internal.internal.reflect.GoType.invalidType })]), false, { get : () -> null }));
