package stdgo.syscall.js;
class Value_static_extension {
    static public function instanceOf(_v:Value, _t:Value):Bool {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.instanceOf(_v, _t);
    }
    static public function string(_v:Value):String {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.string(_v);
    }
    static public function truthy(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.truthy(_v);
    }
    static public function bool_(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.bool_(_v);
    }
    static public function int_(_v:Value):StdTypes.Int {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.int_(_v);
    }
    static public function float_(_v:Value):StdTypes.Float {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.float_(_v);
    }
    static public function _float(_v:Value, _method:String):StdTypes.Float {
        final _method = (_method : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension._float(_v, _method);
    }
    static public function _isNumber(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension._isNumber(_v);
    }
    static public function new_(_v:Value, _args:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.new_(_v, ...[for (i in _args) i]);
    }
    static public function invoke(_v:Value, _args:haxe.Rest<stdgo.AnyInterface>):Value {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.invoke(_v, ...[for (i in _args) i]);
    }
    static public function call(_v:Value, _m:String, _args:haxe.Rest<stdgo.AnyInterface>):Value {
        final _m = (_m : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.call(_v, _m, ...[for (i in _args) i]);
    }
    static public function length_(_v:Value):StdTypes.Int {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.length_(_v);
    }
    static public function setIndex(_v:Value, _i:StdTypes.Int, _x:stdgo.AnyInterface):Void {
        final _i = (_i : stdgo.GoInt);
        final _x = (_x : stdgo.AnyInterface);
        stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.setIndex(_v, _i, _x);
    }
    static public function index(_v:Value, _i:StdTypes.Int):Value {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.index(_v, _i);
    }
    static public function delete(_v:Value, _p:String):Void {
        final _p = (_p : stdgo.GoString);
        stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.delete(_v, _p);
    }
    static public function set(_v:Value, _p:String, _x:stdgo.AnyInterface):Void {
        final _p = (_p : stdgo.GoString);
        final _x = (_x : stdgo.AnyInterface);
        stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.set(_v, _p, _x);
    }
    static public function get(_v:Value, _p:String):Value {
        final _p = (_p : stdgo.GoString);
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.get(_v, _p);
    }
    static public function type(_v:Value):Type_ {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.type(_v);
    }
    static public function isNaN(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.isNaN(_v);
    }
    static public function isNull(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.isNull(_v);
    }
    static public function isUndefined(_v:Value):Bool {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.isUndefined(_v);
    }
    static public function equal(_v:Value, _w:Value):Bool {
        return stdgo._internal.syscall.js.Js_Value_static_extension.Value_static_extension.equal(_v, _w);
    }
}
