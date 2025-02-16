package stdgo;
class Unmarshaler_static_extension {
    static public function unmarshalJSON(t:stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_unmarshaler_static_extension.Unmarshaler_static_extension.unmarshalJSON(t, _0);
    }
}
@:forward abstract Unmarshaler(stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler) from stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler to stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler {
    @:from
    static function fromHaxeInterface(x:{ function unmarshalJSON(_0:Array<std.UInt>):stdgo.Error; }):Unmarshaler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Unmarshaler = { unmarshalJSON : _0 -> x.unmarshalJSON([for (i in _0) i]), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Marshaler_static_extension {
    static public function marshalJSON(t:stdgo._internal.encoding.json.Json_marshaler.Marshaler):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_marshaler_static_extension.Marshaler_static_extension.marshalJSON(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:forward abstract Marshaler(stdgo._internal.encoding.json.Json_marshaler.Marshaler) from stdgo._internal.encoding.json.Json_marshaler.Marshaler to stdgo._internal.encoding.json.Json_marshaler.Marshaler {
    @:from
    static function fromHaxeInterface(x:{ function marshalJSON():stdgo.Tuple<Array<std.UInt>, stdgo.Error>; }):Marshaler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Marshaler = { marshalJSON : () -> x.marshalJSON(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.encoding.json.Json.T_codeResponse_static_extension) @:dox(hide) abstract T_codeResponse(stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse) from stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse to stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse {
    public var tree(get, set) : T_codeNode;
    function get_tree():T_codeNode return this.tree;
    function set_tree(v:T_codeNode):T_codeNode {
        this.tree = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode>);
        return v;
    }
    public var username(get, set) : String;
    function get_username():String return this.username;
    function set_username(v:String):String {
        this.username = (v : stdgo.GoString);
        return v;
    }
    public function new(?tree:T_codeNode, ?username:String) this = new stdgo._internal.encoding.json.Json_t_coderesponse.T_codeResponse((tree : stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode>), (username : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_codeNode_static_extension) @:dox(hide) abstract T_codeNode(stdgo._internal.encoding.json.Json_t_codenode.T_codeNode) from stdgo._internal.encoding.json.Json_t_codenode.T_codeNode to stdgo._internal.encoding.json.Json_t_codenode.T_codeNode {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var kids(get, set) : Array<T_codeNode>;
    function get_kids():Array<T_codeNode> return [for (i in this.kids) i];
    function set_kids(v:Array<T_codeNode>):Array<T_codeNode> {
        this.kids = ([for (i in v) (i : stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode>>);
        return v;
    }
    public var cLWeight(get, set) : StdTypes.Float;
    function get_cLWeight():StdTypes.Float return this.cLWeight;
    function set_cLWeight(v:StdTypes.Float):StdTypes.Float {
        this.cLWeight = (v : stdgo.GoFloat64);
        return v;
    }
    public var touches(get, set) : StdTypes.Int;
    function get_touches():StdTypes.Int return this.touches;
    function set_touches(v:StdTypes.Int):StdTypes.Int {
        this.touches = (v : stdgo.GoInt);
        return v;
    }
    public var minT(get, set) : haxe.Int64;
    function get_minT():haxe.Int64 return this.minT;
    function set_minT(v:haxe.Int64):haxe.Int64 {
        this.minT = (v : stdgo.GoInt64);
        return v;
    }
    public var maxT(get, set) : haxe.Int64;
    function get_maxT():haxe.Int64 return this.maxT;
    function set_maxT(v:haxe.Int64):haxe.Int64 {
        this.maxT = (v : stdgo.GoInt64);
        return v;
    }
    public var meanT(get, set) : haxe.Int64;
    function get_meanT():haxe.Int64 return this.meanT;
    function set_meanT(v:haxe.Int64):haxe.Int64 {
        this.meanT = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?name:String, ?kids:Array<T_codeNode>, ?cLWeight:StdTypes.Float, ?touches:StdTypes.Int, ?minT:haxe.Int64, ?maxT:haxe.Int64, ?meanT:haxe.Int64) this = new stdgo._internal.encoding.json.Json_t_codenode.T_codeNode((name : stdgo.GoString), ([for (i in kids) (i : stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_t_codenode.T_codeNode>>), (cLWeight : stdgo.GoFloat64), (touches : stdgo.GoInt), (minT : stdgo.GoInt64), (maxT : stdgo.GoInt64), (meanT : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnmarshalTypeError_static_extension) abstract UnmarshalTypeError(stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError) from stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError to stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError {
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this.type = v;
        return v;
    }
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = (v : stdgo.GoInt64);
        return v;
    }
    public var struct_(get, set) : String;
    function get_struct_():String return this.struct_;
    function set_struct_(v:String):String {
        this.struct_ = (v : stdgo.GoString);
        return v;
    }
    public var field(get, set) : String;
    function get_field():String return this.field;
    function set_field(v:String):String {
        this.field = (v : stdgo.GoString);
        return v;
    }
    public function new(?value:String, ?type:stdgo._internal.reflect.Reflect_type_.Type_, ?offset:haxe.Int64, ?struct_:String, ?field:String) this = new stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError((value : stdgo.GoString), type, (offset : stdgo.GoInt64), (struct_ : stdgo.GoString), (field : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnmarshalFieldError_static_extension) abstract UnmarshalFieldError(stdgo._internal.encoding.json.Json_unmarshalfielderror.UnmarshalFieldError) from stdgo._internal.encoding.json.Json_unmarshalfielderror.UnmarshalFieldError to stdgo._internal.encoding.json.Json_unmarshalfielderror.UnmarshalFieldError {
    public var key(get, set) : String;
    function get_key():String return this.key;
    function set_key(v:String):String {
        this.key = (v : stdgo.GoString);
        return v;
    }
    public var type(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this.type = v;
        return v;
    }
    public var field(get, set) : stdgo._internal.reflect.Reflect_structfield.StructField;
    function get_field():stdgo._internal.reflect.Reflect_structfield.StructField return this.field;
    function set_field(v:stdgo._internal.reflect.Reflect_structfield.StructField):stdgo._internal.reflect.Reflect_structfield.StructField {
        this.field = v;
        return v;
    }
    public function new(?key:String, ?type:stdgo._internal.reflect.Reflect_type_.Type_, ?field:stdgo._internal.reflect.Reflect_structfield.StructField) this = new stdgo._internal.encoding.json.Json_unmarshalfielderror.UnmarshalFieldError((key : stdgo.GoString), type, field);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.InvalidUnmarshalError_static_extension) abstract InvalidUnmarshalError(stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError) from stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError to stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_type_.Type_) this = new stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_errorContext_static_extension) @:dox(hide) abstract T_errorContext(stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext) from stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext to stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext {
    public var struct_(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get_struct_():stdgo._internal.reflect.Reflect_type_.Type_ return this.struct_;
    function set_struct_(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this.struct_ = v;
        return v;
    }
    public var fieldStack(get, set) : Array<String>;
    function get_fieldStack():Array<String> return [for (i in this.fieldStack) i];
    function set_fieldStack(v:Array<String>):Array<String> {
        this.fieldStack = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?struct_:stdgo._internal.reflect.Reflect_type_.Type_, ?fieldStack:Array<String>) this = new stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext(struct_, ([for (i in fieldStack) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_decodeState_static_extension) @:dox(hide) abstract T_decodeState(stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState) from stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState to stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = (v : stdgo.GoInt);
        return v;
    }
    public var _opcode(get, set) : StdTypes.Int;
    function get__opcode():StdTypes.Int return this._opcode;
    function set__opcode(v:StdTypes.Int):StdTypes.Int {
        this._opcode = (v : stdgo.GoInt);
        return v;
    }
    public var _scan(get, set) : T_scanner;
    function get__scan():T_scanner return this._scan;
    function set__scan(v:T_scanner):T_scanner {
        this._scan = v;
        return v;
    }
    public var _errorContext(get, set) : T_errorContext;
    function get__errorContext():T_errorContext return this._errorContext;
    function set__errorContext(v:T_errorContext):T_errorContext {
        this._errorContext = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext>);
        return v;
    }
    public var _savedError(get, set) : stdgo.Error;
    function get__savedError():stdgo.Error return this._savedError;
    function set__savedError(v:stdgo.Error):stdgo.Error {
        this._savedError = (v : stdgo.Error);
        return v;
    }
    public var _useNumber(get, set) : Bool;
    function get__useNumber():Bool return this._useNumber;
    function set__useNumber(v:Bool):Bool {
        this._useNumber = v;
        return v;
    }
    public var _disallowUnknownFields(get, set) : Bool;
    function get__disallowUnknownFields():Bool return this._disallowUnknownFields;
    function set__disallowUnknownFields(v:Bool):Bool {
        this._disallowUnknownFields = v;
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_off:StdTypes.Int, ?_opcode:StdTypes.Int, ?_scan:T_scanner, ?_errorContext:T_errorContext, ?_savedError:stdgo.Error, ?_useNumber:Bool, ?_disallowUnknownFields:Bool) this = new stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState(([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_off : stdgo.GoInt), (_opcode : stdgo.GoInt), _scan, (_errorContext : stdgo.Ref<stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext>), (_savedError : stdgo.Error), _useNumber, _disallowUnknownFields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unquotedValue_static_extension) @:dox(hide) abstract T_unquotedValue(stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue) from stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue to stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue {
    public function new() this = new stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T__static_extension) @:dox(hide) abstract T_(stdgo._internal.encoding.json.Json_t_.T_) from stdgo._internal.encoding.json.Json_t_.T_ to stdgo._internal.encoding.json.Json_t_.T_ {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = (v : stdgo.GoInt);
        return v;
    }
    public var z(get, set) : StdTypes.Int;
    function get_z():StdTypes.Int return this.z;
    function set_z(v:StdTypes.Int):StdTypes.Int {
        this.z = (v : stdgo.GoInt);
        return v;
    }
    public function new(?x:String, ?y:StdTypes.Int, ?z:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_.T_((x : stdgo.GoString), (y : stdgo.GoInt), (z : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.U_static_extension) abstract U(stdgo._internal.encoding.json.Json_u.U) from stdgo._internal.encoding.json.Json_u.U to stdgo._internal.encoding.json.Json_u.U {
    public var alphabet(get, set) : String;
    function get_alphabet():String return this.alphabet;
    function set_alphabet(v:String):String {
        this.alphabet = (v : stdgo.GoString);
        return v;
    }
    public function new(?alphabet:String) this = new stdgo._internal.encoding.json.Json_u.U((alphabet : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.V_static_extension) abstract V(stdgo._internal.encoding.json.Json_v.V) from stdgo._internal.encoding.json.Json_v.V to stdgo._internal.encoding.json.Json_v.V {
    public var f1(get, set) : stdgo.AnyInterface;
    function get_f1():stdgo.AnyInterface return this.f1;
    function set_f1(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.f1 = (v : stdgo.AnyInterface);
        return v;
    }
    public var f2(get, set) : StdTypes.Int;
    function get_f2():StdTypes.Int return this.f2;
    function set_f2(v:StdTypes.Int):StdTypes.Int {
        this.f2 = (v : stdgo.GoInt32);
        return v;
    }
    public var f3(get, set) : Number;
    function get_f3():Number return this.f3;
    function set_f3(v:Number):Number {
        this.f3 = v;
        return v;
    }
    public var f4(get, set) : VOuter;
    function get_f4():VOuter return this.f4;
    function set_f4(v:VOuter):VOuter {
        this.f4 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_vouter.VOuter>);
        return v;
    }
    public function new(?f1:stdgo.AnyInterface, ?f2:StdTypes.Int, ?f3:Number, ?f4:VOuter) this = new stdgo._internal.encoding.json.Json_v.V((f1 : stdgo.AnyInterface), (f2 : stdgo.GoInt32), f3, (f4 : stdgo.Ref<stdgo._internal.encoding.json.Json_vouter.VOuter>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.VOuter_static_extension) abstract VOuter(stdgo._internal.encoding.json.Json_vouter.VOuter) from stdgo._internal.encoding.json.Json_vouter.VOuter to stdgo._internal.encoding.json.Json_vouter.VOuter {
    public var v(get, set) : V;
    function get_v():V return this.v;
    function set_v(v:V):V {
        this.v = v;
        return v;
    }
    public function new(?v:V) this = new stdgo._internal.encoding.json.Json_vouter.VOuter(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.W_static_extension) abstract W(stdgo._internal.encoding.json.Json_w.W) from stdgo._internal.encoding.json.Json_w.W to stdgo._internal.encoding.json.Json_w.W {
    public var s(get, set) : SS;
    function get_s():SS return this.s;
    function set_s(v:SS):SS {
        this.s = v;
        return v;
    }
    public function new(?s:SS) this = new stdgo._internal.encoding.json.Json_w.W(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.P_static_extension) abstract P(stdgo._internal.encoding.json.Json_p.P) from stdgo._internal.encoding.json.Json_p.P to stdgo._internal.encoding.json.Json_p.P {
    public var pP(get, set) : PP;
    function get_pP():PP return this.pP;
    function set_pP(v:PP):PP {
        this.pP = v;
        return v;
    }
    public function new(?pP:PP) this = new stdgo._internal.encoding.json.Json_p.P(pP);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.PP_static_extension) abstract PP(stdgo._internal.encoding.json.Json_pp.PP) from stdgo._internal.encoding.json.Json_pp.PP to stdgo._internal.encoding.json.Json_pp.PP {
    public var t(get, set) : T_;
    function get_t():T_ return this.t;
    function set_t(v:T_):T_ {
        this.t = v;
        return v;
    }
    public var ts(get, set) : Array<T_>;
    function get_ts():Array<T_> return [for (i in this.ts) i];
    function set_ts(v:Array<T_>):Array<T_> {
        this.ts = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_t_.T_>);
        return v;
    }
    public function new(?t:T_, ?ts:Array<T_>) this = new stdgo._internal.encoding.json.Json_pp.PP(t, ([for (i in ts) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_t_.T_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_tx_static_extension) @:dox(hide) abstract T_tx(stdgo._internal.encoding.json.Json_t_tx.T_tx) from stdgo._internal.encoding.json.Json_t_tx.T_tx to stdgo._internal.encoding.json.Json_t_tx.T_tx {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_tx.T_tx((_x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unmarshaler_static_extension) @:dox(hide) abstract T_unmarshaler(stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler) from stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler to stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler {
    public var t(get, set) : Bool;
    function get_t():Bool return this.t;
    function set_t(v:Bool):Bool {
        this.t = v;
        return v;
    }
    public function new(?t:Bool) this = new stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler(t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_ustruct_static_extension) @:dox(hide) abstract T_ustruct(stdgo._internal.encoding.json.Json_t_ustruct.T_ustruct) from stdgo._internal.encoding.json.Json_t_ustruct.T_ustruct to stdgo._internal.encoding.json.Json_t_ustruct.T_ustruct {
    public var m(get, set) : T_unmarshaler;
    function get_m():T_unmarshaler return this.m;
    function set_m(v:T_unmarshaler):T_unmarshaler {
        this.m = v;
        return v;
    }
    public function new(?m:T_unmarshaler) this = new stdgo._internal.encoding.json.Json_t_ustruct.T_ustruct(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unmarshalerText_static_extension) @:dox(hide) abstract T_unmarshalerText(stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText) from stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText to stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = (v : stdgo.GoString);
        return v;
    }
    public function new(?a:String, ?b:String) this = new stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText((a : stdgo.GoString), (b : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_ustructText_static_extension) @:dox(hide) abstract T_ustructText(stdgo._internal.encoding.json.Json_t_ustructtext.T_ustructText) from stdgo._internal.encoding.json.Json_t_ustructtext.T_ustructText to stdgo._internal.encoding.json.Json_t_ustructtext.T_ustructText {
    public var m(get, set) : T_unmarshalerText;
    function get_m():T_unmarshalerText return this.m;
    function set_m(v:T_unmarshalerText):T_unmarshalerText {
        this.m = v;
        return v;
    }
    public function new(?m:T_unmarshalerText) this = new stdgo._internal.encoding.json.Json_t_ustructtext.T_ustructText(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Point_static_extension) abstract Point(stdgo._internal.encoding.json.Json_point.Point) from stdgo._internal.encoding.json.Json_point.Point to stdgo._internal.encoding.json.Json_point.Point {
    public var z(get, set) : StdTypes.Int;
    function get_z():StdTypes.Int return this.z;
    function set_z(v:StdTypes.Int):StdTypes.Int {
        this.z = (v : stdgo.GoInt);
        return v;
    }
    public function new(?z:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_point.Point((z : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Top_static_extension) abstract Top(stdgo._internal.encoding.json.Json_top.Top) from stdgo._internal.encoding.json.Json_top.Top to stdgo._internal.encoding.json.Json_top.Top {
    public var level0(get, set) : StdTypes.Int;
    function get_level0():StdTypes.Int return this.level0;
    function set_level0(v:StdTypes.Int):StdTypes.Int {
        this.level0 = (v : stdgo.GoInt);
        return v;
    }
    public var embed0(get, set) : Embed0;
    function get_embed0():Embed0 return this.embed0;
    function set_embed0(v:Embed0):Embed0 {
        this.embed0 = v;
        return v;
    }
    public var embed0a(get, set) : Embed0a;
    function get_embed0a():Embed0a return this.embed0a;
    function set_embed0a(v:Embed0a):Embed0a {
        this.embed0a = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_embed0a.Embed0a>);
        return v;
    }
    public var embed0b(get, set) : Embed0b;
    function get_embed0b():Embed0b return this.embed0b;
    function set_embed0b(v:Embed0b):Embed0b {
        this.embed0b = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_embed0b.Embed0b>);
        return v;
    }
    public var embed0c(get, set) : Embed0c;
    function get_embed0c():Embed0c return this.embed0c;
    function set_embed0c(v:Embed0c):Embed0c {
        this.embed0c = v;
        return v;
    }
    public var loop(get, set) : Loop;
    function get_loop():Loop return this.loop;
    function set_loop(v:Loop):Loop {
        this.loop = v;
        return v;
    }
    public var embed0p(get, set) : Embed0p;
    function get_embed0p():Embed0p return this.embed0p;
    function set_embed0p(v:Embed0p):Embed0p {
        this.embed0p = v;
        return v;
    }
    public var embed0q(get, set) : Embed0q;
    function get_embed0q():Embed0q return this.embed0q;
    function set_embed0q(v:Embed0q):Embed0q {
        this.embed0q = v;
        return v;
    }
    public var _embed(get, set) : T_embed;
    function get__embed():T_embed return this._embed;
    function set__embed(v:T_embed):T_embed {
        this._embed = v;
        return v;
    }
    public function new(?level0:StdTypes.Int, ?embed0:Embed0, ?embed0a:Embed0a, ?embed0b:Embed0b, ?embed0c:Embed0c, ?loop:Loop, ?embed0p:Embed0p, ?embed0q:Embed0q, ?_embed:T_embed) this = new stdgo._internal.encoding.json.Json_top.Top((level0 : stdgo.GoInt), embed0, (embed0a : stdgo.Ref<stdgo._internal.encoding.json.Json_embed0a.Embed0a>), (embed0b : stdgo.Ref<stdgo._internal.encoding.json.Json_embed0b.Embed0b>), embed0c, loop, embed0p, embed0q, _embed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Embed0_static_extension) abstract Embed0(stdgo._internal.encoding.json.Json_embed0.Embed0) from stdgo._internal.encoding.json.Json_embed0.Embed0 to stdgo._internal.encoding.json.Json_embed0.Embed0 {
    public var level1a(get, set) : StdTypes.Int;
    function get_level1a():StdTypes.Int return this.level1a;
    function set_level1a(v:StdTypes.Int):StdTypes.Int {
        this.level1a = (v : stdgo.GoInt);
        return v;
    }
    public var level1b(get, set) : StdTypes.Int;
    function get_level1b():StdTypes.Int return this.level1b;
    function set_level1b(v:StdTypes.Int):StdTypes.Int {
        this.level1b = (v : stdgo.GoInt);
        return v;
    }
    public var level1c(get, set) : StdTypes.Int;
    function get_level1c():StdTypes.Int return this.level1c;
    function set_level1c(v:StdTypes.Int):StdTypes.Int {
        this.level1c = (v : stdgo.GoInt);
        return v;
    }
    public var level1d(get, set) : StdTypes.Int;
    function get_level1d():StdTypes.Int return this.level1d;
    function set_level1d(v:StdTypes.Int):StdTypes.Int {
        this.level1d = (v : stdgo.GoInt);
        return v;
    }
    public var level1e(get, set) : StdTypes.Int;
    function get_level1e():StdTypes.Int return this.level1e;
    function set_level1e(v:StdTypes.Int):StdTypes.Int {
        this.level1e = (v : stdgo.GoInt);
        return v;
    }
    public function new(?level1a:StdTypes.Int, ?level1b:StdTypes.Int, ?level1c:StdTypes.Int, ?level1d:StdTypes.Int, ?level1e:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_embed0.Embed0((level1a : stdgo.GoInt), (level1b : stdgo.GoInt), (level1c : stdgo.GoInt), (level1d : stdgo.GoInt), (level1e : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Embed0a_static_extension) abstract Embed0a(stdgo._internal.encoding.json.Json_embed0a.Embed0a) from stdgo._internal.encoding.json.Json_embed0a.Embed0a to stdgo._internal.encoding.json.Json_embed0a.Embed0a {
    public var level1a(get, set) : StdTypes.Int;
    function get_level1a():StdTypes.Int return this.level1a;
    function set_level1a(v:StdTypes.Int):StdTypes.Int {
        this.level1a = (v : stdgo.GoInt);
        return v;
    }
    public var level1b(get, set) : StdTypes.Int;
    function get_level1b():StdTypes.Int return this.level1b;
    function set_level1b(v:StdTypes.Int):StdTypes.Int {
        this.level1b = (v : stdgo.GoInt);
        return v;
    }
    public var level1c(get, set) : StdTypes.Int;
    function get_level1c():StdTypes.Int return this.level1c;
    function set_level1c(v:StdTypes.Int):StdTypes.Int {
        this.level1c = (v : stdgo.GoInt);
        return v;
    }
    public var level1d(get, set) : StdTypes.Int;
    function get_level1d():StdTypes.Int return this.level1d;
    function set_level1d(v:StdTypes.Int):StdTypes.Int {
        this.level1d = (v : stdgo.GoInt);
        return v;
    }
    public var level1f(get, set) : StdTypes.Int;
    function get_level1f():StdTypes.Int return this.level1f;
    function set_level1f(v:StdTypes.Int):StdTypes.Int {
        this.level1f = (v : stdgo.GoInt);
        return v;
    }
    public function new(?level1a:StdTypes.Int, ?level1b:StdTypes.Int, ?level1c:StdTypes.Int, ?level1d:StdTypes.Int, ?level1f:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_embed0a.Embed0a((level1a : stdgo.GoInt), (level1b : stdgo.GoInt), (level1c : stdgo.GoInt), (level1d : stdgo.GoInt), (level1f : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Embed0p_static_extension) abstract Embed0p(stdgo._internal.encoding.json.Json_embed0p.Embed0p) from stdgo._internal.encoding.json.Json_embed0p.Embed0p to stdgo._internal.encoding.json.Json_embed0p.Embed0p {
    public var point(get, set) : stdgo._internal.image.Image_point.Point;
    function get_point():stdgo._internal.image.Image_point.Point return this.point;
    function set_point(v:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point {
        this.point = v;
        return v;
    }
    public function new(?point:stdgo._internal.image.Image_point.Point) this = new stdgo._internal.encoding.json.Json_embed0p.Embed0p(point);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Embed0q_static_extension) abstract Embed0q(stdgo._internal.encoding.json.Json_embed0q.Embed0q) from stdgo._internal.encoding.json.Json_embed0q.Embed0q to stdgo._internal.encoding.json.Json_embed0q.Embed0q {
    public var point(get, set) : Point;
    function get_point():Point return this.point;
    function set_point(v:Point):Point {
        this.point = v;
        return v;
    }
    public function new(?point:Point) this = new stdgo._internal.encoding.json.Json_embed0q.Embed0q(point);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_embed_static_extension) @:dox(hide) abstract T_embed(stdgo._internal.encoding.json.Json_t_embed.T_embed) from stdgo._internal.encoding.json.Json_t_embed.T_embed to stdgo._internal.encoding.json.Json_t_embed.T_embed {
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = (v : stdgo.GoInt);
        return v;
    }
    public function new(?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_embed.T_embed((q : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Loop_static_extension) abstract Loop(stdgo._internal.encoding.json.Json_loop.Loop) from stdgo._internal.encoding.json.Json_loop.Loop to stdgo._internal.encoding.json.Json_loop.Loop {
    public var loop1(get, set) : StdTypes.Int;
    function get_loop1():StdTypes.Int return this.loop1;
    function set_loop1(v:StdTypes.Int):StdTypes.Int {
        this.loop1 = (v : stdgo.GoInt);
        return v;
    }
    public var loop2(get, set) : StdTypes.Int;
    function get_loop2():StdTypes.Int return this.loop2;
    function set_loop2(v:StdTypes.Int):StdTypes.Int {
        this.loop2 = (v : stdgo.GoInt);
        return v;
    }
    public var loop(get, set) : Loop;
    function get_loop():Loop return this.loop;
    function set_loop(v:Loop):Loop {
        this.loop = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_loop.Loop>);
        return v;
    }
    public function new(?loop1:StdTypes.Int, ?loop2:StdTypes.Int, ?loop:Loop) this = new stdgo._internal.encoding.json.Json_loop.Loop((loop1 : stdgo.GoInt), (loop2 : stdgo.GoInt), (loop : stdgo.Ref<stdgo._internal.encoding.json.Json_loop.Loop>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S5_static_extension) abstract S5(stdgo._internal.encoding.json.Json_s5.S5) from stdgo._internal.encoding.json.Json_s5.S5 to stdgo._internal.encoding.json.Json_s5.S5 {
    public var s6(get, set) : S6;
    function get_s6():S6 return this.s6;
    function set_s6(v:S6):S6 {
        this.s6 = v;
        return v;
    }
    public var s7(get, set) : S7;
    function get_s7():S7 return this.s7;
    function set_s7(v:S7):S7 {
        this.s7 = v;
        return v;
    }
    public var s8(get, set) : S8;
    function get_s8():S8 return this.s8;
    function set_s8(v:S8):S8 {
        this.s8 = v;
        return v;
    }
    public function new(?s6:S6, ?s7:S7, ?s8:S8) this = new stdgo._internal.encoding.json.Json_s5.S5(s6, s7, s8);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S6_static_extension) abstract S6(stdgo._internal.encoding.json.Json_s6.S6) from stdgo._internal.encoding.json.Json_s6.S6 to stdgo._internal.encoding.json.Json_s6.S6 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_s6.S6((x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S8_static_extension) abstract S8(stdgo._internal.encoding.json.Json_s8.S8) from stdgo._internal.encoding.json.Json_s8.S8 to stdgo._internal.encoding.json.Json_s8.S8 {
    public var s9(get, set) : S9;
    function get_s9():S9 return this.s9;
    function set_s9(v:S9):S9 {
        this.s9 = v;
        return v;
    }
    public function new(?s9:S9) this = new stdgo._internal.encoding.json.Json_s8.S8(s9);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S9_static_extension) abstract S9(stdgo._internal.encoding.json.Json_s9.S9) from stdgo._internal.encoding.json.Json_s9.S9 to stdgo._internal.encoding.json.Json_s9.S9 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = (v : stdgo.GoInt);
        return v;
    }
    public function new(?x:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_s9.S9((x : stdgo.GoInt), (y : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S10_static_extension) abstract S10(stdgo._internal.encoding.json.Json_s10.S10) from stdgo._internal.encoding.json.Json_s10.S10 to stdgo._internal.encoding.json.Json_s10.S10 {
    public var s11(get, set) : S11;
    function get_s11():S11 return this.s11;
    function set_s11(v:S11):S11 {
        this.s11 = v;
        return v;
    }
    public var s12(get, set) : S12;
    function get_s12():S12 return this.s12;
    function set_s12(v:S12):S12 {
        this.s12 = v;
        return v;
    }
    public var s13(get, set) : S13;
    function get_s13():S13 return this.s13;
    function set_s13(v:S13):S13 {
        this.s13 = v;
        return v;
    }
    public function new(?s11:S11, ?s12:S12, ?s13:S13) this = new stdgo._internal.encoding.json.Json_s10.S10(s11, s12, s13);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S11_static_extension) abstract S11(stdgo._internal.encoding.json.Json_s11.S11) from stdgo._internal.encoding.json.Json_s11.S11 to stdgo._internal.encoding.json.Json_s11.S11 {
    public var s6(get, set) : S6;
    function get_s6():S6 return this.s6;
    function set_s6(v:S6):S6 {
        this.s6 = v;
        return v;
    }
    public function new(?s6:S6) this = new stdgo._internal.encoding.json.Json_s11.S11(s6);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S12_static_extension) abstract S12(stdgo._internal.encoding.json.Json_s12.S12) from stdgo._internal.encoding.json.Json_s12.S12 to stdgo._internal.encoding.json.Json_s12.S12 {
    public var s6(get, set) : S6;
    function get_s6():S6 return this.s6;
    function set_s6(v:S6):S6 {
        this.s6 = v;
        return v;
    }
    public function new(?s6:S6) this = new stdgo._internal.encoding.json.Json_s12.S12(s6);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S13_static_extension) abstract S13(stdgo._internal.encoding.json.Json_s13.S13) from stdgo._internal.encoding.json.Json_s13.S13 to stdgo._internal.encoding.json.Json_s13.S13 {
    public var s8(get, set) : S8;
    function get_s8():S8 return this.s8;
    function set_s8(v:S8):S8 {
        this.s8 = v;
        return v;
    }
    public function new(?s8:S8) this = new stdgo._internal.encoding.json.Json_s13.S13(s8);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Ambig_static_extension) abstract Ambig(stdgo._internal.encoding.json.Json_ambig.Ambig) from stdgo._internal.encoding.json.Json_ambig.Ambig to stdgo._internal.encoding.json.Json_ambig.Ambig {
    public var first(get, set) : StdTypes.Int;
    function get_first():StdTypes.Int return this.first;
    function set_first(v:StdTypes.Int):StdTypes.Int {
        this.first = (v : stdgo.GoInt);
        return v;
    }
    public var second(get, set) : StdTypes.Int;
    function get_second():StdTypes.Int return this.second;
    function set_second(v:StdTypes.Int):StdTypes.Int {
        this.second = (v : stdgo.GoInt);
        return v;
    }
    public function new(?first:StdTypes.Int, ?second:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_ambig.Ambig((first : stdgo.GoInt), (second : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.XYZ_static_extension) abstract XYZ(stdgo._internal.encoding.json.Json_xyz.XYZ) from stdgo._internal.encoding.json.Json_xyz.XYZ to stdgo._internal.encoding.json.Json_xyz.XYZ {
    public var x(get, set) : stdgo.AnyInterface;
    function get_x():stdgo.AnyInterface return this.x;
    function set_x(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.x = (v : stdgo.AnyInterface);
        return v;
    }
    public var y(get, set) : stdgo.AnyInterface;
    function get_y():stdgo.AnyInterface return this.y;
    function set_y(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.y = (v : stdgo.AnyInterface);
        return v;
    }
    public var z(get, set) : stdgo.AnyInterface;
    function get_z():stdgo.AnyInterface return this.z;
    function set_z(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.z = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?x:stdgo.AnyInterface, ?y:stdgo.AnyInterface, ?z:stdgo.AnyInterface) this = new stdgo._internal.encoding.json.Json_xyz.XYZ((x : stdgo.AnyInterface), (y : stdgo.AnyInterface), (z : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unexportedWithMethods_static_extension) @:dox(hide) abstract T_unexportedWithMethods(stdgo._internal.encoding.json.Json_t_unexportedwithmethods.T_unexportedWithMethods) from stdgo._internal.encoding.json.Json_t_unexportedwithmethods.T_unexportedWithMethods to stdgo._internal.encoding.json.Json_t_unexportedwithmethods.T_unexportedWithMethods {
    public function new() this = new stdgo._internal.encoding.json.Json_t_unexportedwithmethods.T_unexportedWithMethods();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_mapStringToStringData_static_extension) @:dox(hide) abstract T_mapStringToStringData(stdgo._internal.encoding.json.Json_t_mapstringtostringdata.T_mapStringToStringData) from stdgo._internal.encoding.json.Json_t_mapstringtostringdata.T_mapStringToStringData to stdgo._internal.encoding.json.Json_t_mapstringtostringdata.T_mapStringToStringData {
    public var data(get, set) : Map<String, String>;
    function get_data():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this.data) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_data(v:Map<String, String>):Map<String, String> {
        this.data = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public function new(?data:Map<String, String>) this = new stdgo._internal.encoding.json.Json_t_mapstringtostringdata.T_mapStringToStringData({
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in data) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unmarshalTest_static_extension) @:dox(hide) abstract T_unmarshalTest(stdgo._internal.encoding.json.Json_t_unmarshaltest.T_unmarshalTest) from stdgo._internal.encoding.json.Json_t_unmarshaltest.T_unmarshalTest to stdgo._internal.encoding.json.Json_t_unmarshaltest.T_unmarshalTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _ptr(get, set) : stdgo.AnyInterface;
    function get__ptr():stdgo.AnyInterface return this._ptr;
    function set__ptr(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._ptr = (v : stdgo.AnyInterface);
        return v;
    }
    public var _out(get, set) : stdgo.AnyInterface;
    function get__out():stdgo.AnyInterface return this._out;
    function set__out(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._out = (v : stdgo.AnyInterface);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _useNumber(get, set) : Bool;
    function get__useNumber():Bool return this._useNumber;
    function set__useNumber(v:Bool):Bool {
        this._useNumber = v;
        return v;
    }
    public var _golden(get, set) : Bool;
    function get__golden():Bool return this._golden;
    function set__golden(v:Bool):Bool {
        this._golden = v;
        return v;
    }
    public var _disallowUnknownFields(get, set) : Bool;
    function get__disallowUnknownFields():Bool return this._disallowUnknownFields;
    function set__disallowUnknownFields(v:Bool):Bool {
        this._disallowUnknownFields = v;
        return v;
    }
    public function new(?_in:String, ?_ptr:stdgo.AnyInterface, ?_out:stdgo.AnyInterface, ?_err:stdgo.Error, ?_useNumber:Bool, ?_golden:Bool, ?_disallowUnknownFields:Bool) this = new stdgo._internal.encoding.json.Json_t_unmarshaltest.T_unmarshalTest((_in : stdgo.GoString), (_ptr : stdgo.AnyInterface), (_out : stdgo.AnyInterface), (_err : stdgo.Error), _useNumber, _golden, _disallowUnknownFields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.B_static_extension) abstract B(stdgo._internal.encoding.json.Json_b.B) from stdgo._internal.encoding.json.Json_b.B to stdgo._internal.encoding.json.Json_b.B {
    public var b(get, set) : Bool;
    function get_b():Bool return this.b;
    function set_b(v:Bool):Bool {
        this.b = v;
        return v;
    }
    public function new(?b:Bool) this = new stdgo._internal.encoding.json.Json_b.B(b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.DoublePtr_static_extension) abstract DoublePtr(stdgo._internal.encoding.json.Json_doubleptr.DoublePtr) from stdgo._internal.encoding.json.Json_doubleptr.DoublePtr to stdgo._internal.encoding.json.Json_doubleptr.DoublePtr {
    public var i(get, set) : stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>;
    function get_i():stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> return this.i;
    function set_i(v:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>):stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> {
        this.i = v;
        return v;
    }
    public var j(get, set) : stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>;
    function get_j():stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> return this.j;
    function set_j(v:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>):stdgo.Pointer<stdgo.Pointer<StdTypes.Int>> {
        this.j = v;
        return v;
    }
    public function new(?i:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>, ?j:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>) this = new stdgo._internal.encoding.json.Json_doubleptr.DoublePtr(i, j);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Xint_static_extension) abstract Xint(stdgo._internal.encoding.json.Json_xint.Xint) from stdgo._internal.encoding.json.Json_xint.Xint to stdgo._internal.encoding.json.Json_xint.Xint {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_xint.Xint((x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.WrongString_static_extension) abstract WrongString(stdgo._internal.encoding.json.Json_wrongstring.WrongString) from stdgo._internal.encoding.json.Json_wrongstring.WrongString to stdgo._internal.encoding.json.Json_wrongstring.WrongString {
    public var message(get, set) : String;
    function get_message():String return this.message;
    function set_message(v:String):String {
        this.message = (v : stdgo.GoString);
        return v;
    }
    public function new(?message:String) this = new stdgo._internal.encoding.json.Json_wrongstring.WrongString((message : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_wrongStringTest_static_extension) @:dox(hide) abstract T_wrongStringTest(stdgo._internal.encoding.json.Json_t_wrongstringtest.T_wrongStringTest) from stdgo._internal.encoding.json.Json_t_wrongstringtest.T_wrongStringTest to stdgo._internal.encoding.json.Json_t_wrongstringtest.T_wrongStringTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = (v : stdgo.GoString);
        return v;
    }
    public function new(?_in:String, ?_err:String) this = new stdgo._internal.encoding.json.Json_t_wrongstringtest.T_wrongStringTest((_in : stdgo.GoString), (_err : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.All_static_extension) abstract All(stdgo._internal.encoding.json.Json_all.All) from stdgo._internal.encoding.json.Json_all.All to stdgo._internal.encoding.json.Json_all.All {
    public var bool_(get, set) : Bool;
    function get_bool_():Bool return this.bool_;
    function set_bool_(v:Bool):Bool {
        this.bool_ = v;
        return v;
    }
    public var int_(get, set) : StdTypes.Int;
    function get_int_():StdTypes.Int return this.int_;
    function set_int_(v:StdTypes.Int):StdTypes.Int {
        this.int_ = (v : stdgo.GoInt);
        return v;
    }
    public var int8(get, set) : StdTypes.Int;
    function get_int8():StdTypes.Int return this.int8;
    function set_int8(v:StdTypes.Int):StdTypes.Int {
        this.int8 = (v : stdgo.GoInt8);
        return v;
    }
    public var int16(get, set) : StdTypes.Int;
    function get_int16():StdTypes.Int return this.int16;
    function set_int16(v:StdTypes.Int):StdTypes.Int {
        this.int16 = (v : stdgo.GoInt16);
        return v;
    }
    public var int32(get, set) : StdTypes.Int;
    function get_int32():StdTypes.Int return this.int32;
    function set_int32(v:StdTypes.Int):StdTypes.Int {
        this.int32 = (v : stdgo.GoInt32);
        return v;
    }
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = (v : stdgo.GoInt64);
        return v;
    }
    public var uint(get, set) : std.UInt;
    function get_uint():std.UInt return this.uint;
    function set_uint(v:std.UInt):std.UInt {
        this.uint = (v : stdgo.GoUInt);
        return v;
    }
    public var uint8(get, set) : std.UInt;
    function get_uint8():std.UInt return this.uint8;
    function set_uint8(v:std.UInt):std.UInt {
        this.uint8 = (v : stdgo.GoUInt8);
        return v;
    }
    public var uint16(get, set) : std.UInt;
    function get_uint16():std.UInt return this.uint16;
    function set_uint16(v:std.UInt):std.UInt {
        this.uint16 = (v : stdgo.GoUInt16);
        return v;
    }
    public var uint32(get, set) : std.UInt;
    function get_uint32():std.UInt return this.uint32;
    function set_uint32(v:std.UInt):std.UInt {
        this.uint32 = (v : stdgo.GoUInt32);
        return v;
    }
    public var uint64(get, set) : haxe.UInt64;
    function get_uint64():haxe.UInt64 return this.uint64;
    function set_uint64(v:haxe.UInt64):haxe.UInt64 {
        this.uint64 = (v : stdgo.GoUInt64);
        return v;
    }
    public var uintptr(get, set) : stdgo.GoUIntptr;
    function get_uintptr():stdgo.GoUIntptr return this.uintptr;
    function set_uintptr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptr = (v : stdgo.GoUIntptr);
        return v;
    }
    public var float32(get, set) : StdTypes.Float;
    function get_float32():StdTypes.Float return this.float32;
    function set_float32(v:StdTypes.Float):StdTypes.Float {
        this.float32 = (v : stdgo.GoFloat32);
        return v;
    }
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = (v : stdgo.GoFloat64);
        return v;
    }
    public var foo(get, set) : String;
    function get_foo():String return this.foo;
    function set_foo(v:String):String {
        this.foo = (v : stdgo.GoString);
        return v;
    }
    public var foo2(get, set) : String;
    function get_foo2():String return this.foo2;
    function set_foo2(v:String):String {
        this.foo2 = (v : stdgo.GoString);
        return v;
    }
    public var intStr(get, set) : haxe.Int64;
    function get_intStr():haxe.Int64 return this.intStr;
    function set_intStr(v:haxe.Int64):haxe.Int64 {
        this.intStr = (v : stdgo.GoInt64);
        return v;
    }
    public var uintptrStr(get, set) : stdgo.GoUIntptr;
    function get_uintptrStr():stdgo.GoUIntptr return this.uintptrStr;
    function set_uintptrStr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptrStr = (v : stdgo.GoUIntptr);
        return v;
    }
    public var pBool(get, set) : stdgo.Pointer<Bool>;
    function get_pBool():stdgo.Pointer<Bool> return this.pBool;
    function set_pBool(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        this.pBool = v;
        return v;
    }
    public var pInt(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pInt():stdgo.Pointer<StdTypes.Int> return this.pInt;
    function set_pInt(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pInt = v;
        return v;
    }
    public var pInt8(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pInt8():stdgo.Pointer<StdTypes.Int> return this.pInt8;
    function set_pInt8(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pInt8 = v;
        return v;
    }
    public var pInt16(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pInt16():stdgo.Pointer<StdTypes.Int> return this.pInt16;
    function set_pInt16(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pInt16 = v;
        return v;
    }
    public var pInt32(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_pInt32():stdgo.Pointer<StdTypes.Int> return this.pInt32;
    function set_pInt32(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.pInt32 = v;
        return v;
    }
    public var pInt64(get, set) : stdgo.Pointer<haxe.Int64>;
    function get_pInt64():stdgo.Pointer<haxe.Int64> return this.pInt64;
    function set_pInt64(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        this.pInt64 = v;
        return v;
    }
    public var pUint(get, set) : stdgo.Pointer<std.UInt>;
    function get_pUint():stdgo.Pointer<std.UInt> return this.pUint;
    function set_pUint(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.pUint = v;
        return v;
    }
    public var pUint8(get, set) : stdgo.Pointer<std.UInt>;
    function get_pUint8():stdgo.Pointer<std.UInt> return this.pUint8;
    function set_pUint8(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.pUint8 = v;
        return v;
    }
    public var pUint16(get, set) : stdgo.Pointer<std.UInt>;
    function get_pUint16():stdgo.Pointer<std.UInt> return this.pUint16;
    function set_pUint16(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.pUint16 = v;
        return v;
    }
    public var pUint32(get, set) : stdgo.Pointer<std.UInt>;
    function get_pUint32():stdgo.Pointer<std.UInt> return this.pUint32;
    function set_pUint32(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.pUint32 = v;
        return v;
    }
    public var pUint64(get, set) : stdgo.Pointer<haxe.UInt64>;
    function get_pUint64():stdgo.Pointer<haxe.UInt64> return this.pUint64;
    function set_pUint64(v:stdgo.Pointer<haxe.UInt64>):stdgo.Pointer<haxe.UInt64> {
        this.pUint64 = v;
        return v;
    }
    public var pUintptr(get, set) : stdgo.Pointer<stdgo.GoUIntptr>;
    function get_pUintptr():stdgo.Pointer<stdgo.GoUIntptr> return this.pUintptr;
    function set_pUintptr(v:stdgo.Pointer<stdgo.GoUIntptr>):stdgo.Pointer<stdgo.GoUIntptr> {
        this.pUintptr = v;
        return v;
    }
    public var pFloat32(get, set) : stdgo.Pointer<StdTypes.Float>;
    function get_pFloat32():stdgo.Pointer<StdTypes.Float> return this.pFloat32;
    function set_pFloat32(v:stdgo.Pointer<StdTypes.Float>):stdgo.Pointer<StdTypes.Float> {
        this.pFloat32 = v;
        return v;
    }
    public var pFloat64(get, set) : stdgo.Pointer<StdTypes.Float>;
    function get_pFloat64():stdgo.Pointer<StdTypes.Float> return this.pFloat64;
    function set_pFloat64(v:stdgo.Pointer<StdTypes.Float>):stdgo.Pointer<StdTypes.Float> {
        this.pFloat64 = v;
        return v;
    }
    public var string(get, set) : String;
    function get_string():String return this.string;
    function set_string(v:String):String {
        this.string = (v : stdgo.GoString);
        return v;
    }
    public var pString(get, set) : stdgo.Pointer<String>;
    function get_pString():stdgo.Pointer<String> return this.pString;
    function set_pString(v:stdgo.Pointer<String>):stdgo.Pointer<String> {
        this.pString = v;
        return v;
    }
    public var map_(get, set) : Map<String, Small>;
    function get_map_():Map<String, Small> return {
        final __obj__:Map<String, Small> = [];
        for (key => value in this.map_) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_map_(v:Map<String, Small>):Map<String, Small> {
        this.map_ = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var mapP(get, set) : Map<String, Small>;
    function get_mapP():Map<String, Small> return {
        final __obj__:Map<String, Small> = [];
        for (key => value in this.mapP) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mapP(v:Map<String, Small>):Map<String, Small> {
        this.mapP = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>);
            };
            __obj__;
        };
        return v;
    }
    public var pMap(get, set) : Map<String, Small>;
    function get_pMap():Map<String, Small> return this.pMap;
    function set_pMap(v:Map<String, Small>):Map<String, Small> {
        this.pMap = (v : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>>);
        return v;
    }
    public var pMapP(get, set) : Map<String, Small>;
    function get_pMapP():Map<String, Small> return this.pMapP;
    function set_pMapP(v:Map<String, Small>):Map<String, Small> {
        this.pMapP = (v : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>>);
        return v;
    }
    public var emptyMap(get, set) : Map<String, Small>;
    function get_emptyMap():Map<String, Small> return {
        final __obj__:Map<String, Small> = [];
        for (key => value in this.emptyMap) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_emptyMap(v:Map<String, Small>):Map<String, Small> {
        this.emptyMap = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var nilMap(get, set) : Map<String, Small>;
    function get_nilMap():Map<String, Small> return {
        final __obj__:Map<String, Small> = [];
        for (key => value in this.nilMap) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_nilMap(v:Map<String, Small>):Map<String, Small> {
        this.nilMap = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var slice(get, set) : Array<Small>;
    function get_slice():Array<Small> return [for (i in this.slice) i];
    function set_slice(v:Array<Small>):Array<Small> {
        this.slice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>);
        return v;
    }
    public var sliceP(get, set) : Array<Small>;
    function get_sliceP():Array<Small> return [for (i in this.sliceP) i];
    function set_sliceP(v:Array<Small>):Array<Small> {
        this.sliceP = ([for (i in v) (i : stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>);
        return v;
    }
    public var pSlice(get, set) : Array<Small>;
    function get_pSlice():Array<Small> return this.pSlice;
    function set_pSlice(v:Array<Small>):Array<Small> {
        this.pSlice = (v : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>>);
        return v;
    }
    public var pSliceP(get, set) : Array<Small>;
    function get_pSliceP():Array<Small> return this.pSliceP;
    function set_pSliceP(v:Array<Small>):Array<Small> {
        this.pSliceP = (v : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>>);
        return v;
    }
    public var emptySlice(get, set) : Array<Small>;
    function get_emptySlice():Array<Small> return [for (i in this.emptySlice) i];
    function set_emptySlice(v:Array<Small>):Array<Small> {
        this.emptySlice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>);
        return v;
    }
    public var nilSlice(get, set) : Array<Small>;
    function get_nilSlice():Array<Small> return [for (i in this.nilSlice) i];
    function set_nilSlice(v:Array<Small>):Array<Small> {
        this.nilSlice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>);
        return v;
    }
    public var stringSlice(get, set) : Array<String>;
    function get_stringSlice():Array<String> return [for (i in this.stringSlice) i];
    function set_stringSlice(v:Array<String>):Array<String> {
        this.stringSlice = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var byteSlice(get, set) : Array<std.UInt>;
    function get_byteSlice():Array<std.UInt> return [for (i in this.byteSlice) i];
    function set_byteSlice(v:Array<std.UInt>):Array<std.UInt> {
        this.byteSlice = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var small(get, set) : Small;
    function get_small():Small return this.small;
    function set_small(v:Small):Small {
        this.small = v;
        return v;
    }
    public var pSmall(get, set) : Small;
    function get_pSmall():Small return this.pSmall;
    function set_pSmall(v:Small):Small {
        this.pSmall = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>);
        return v;
    }
    public var pPSmall(get, set) : Small;
    function get_pPSmall():Small return this.pPSmall;
    function set_pPSmall(v:Small):Small {
        this.pPSmall = (v : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>);
        return v;
    }
    public var interface_(get, set) : stdgo.AnyInterface;
    function get_interface_():stdgo.AnyInterface return this.interface_;
    function set_interface_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.interface_ = (v : stdgo.AnyInterface);
        return v;
    }
    public var pInterface(get, set) : stdgo.AnyInterface;
    function get_pInterface():stdgo.AnyInterface return this.pInterface;
    function set_pInterface(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.pInterface = (v : stdgo.Ref<stdgo.AnyInterface>);
        return v;
    }
    public var _unexported(get, set) : StdTypes.Int;
    function get__unexported():StdTypes.Int return this._unexported;
    function set__unexported(v:StdTypes.Int):StdTypes.Int {
        this._unexported = (v : stdgo.GoInt);
        return v;
    }
    public function new(?bool_:Bool, ?int_:StdTypes.Int, ?int8:StdTypes.Int, ?int16:StdTypes.Int, ?int32:StdTypes.Int, ?int64:haxe.Int64, ?uint:std.UInt, ?uint8:std.UInt, ?uint16:std.UInt, ?uint32:std.UInt, ?uint64:haxe.UInt64, ?uintptr:stdgo.GoUIntptr, ?float32:StdTypes.Float, ?float64:StdTypes.Float, ?foo:String, ?foo2:String, ?intStr:haxe.Int64, ?uintptrStr:stdgo.GoUIntptr, ?pBool:stdgo.Pointer<Bool>, ?pInt:stdgo.Pointer<StdTypes.Int>, ?pInt8:stdgo.Pointer<StdTypes.Int>, ?pInt16:stdgo.Pointer<StdTypes.Int>, ?pInt32:stdgo.Pointer<StdTypes.Int>, ?pInt64:stdgo.Pointer<haxe.Int64>, ?pUint:stdgo.Pointer<std.UInt>, ?pUint8:stdgo.Pointer<std.UInt>, ?pUint16:stdgo.Pointer<std.UInt>, ?pUint32:stdgo.Pointer<std.UInt>, ?pUint64:stdgo.Pointer<haxe.UInt64>, ?pUintptr:stdgo.Pointer<stdgo.GoUIntptr>, ?pFloat32:stdgo.Pointer<StdTypes.Float>, ?pFloat64:stdgo.Pointer<StdTypes.Float>, ?string:String, ?pString:stdgo.Pointer<String>, ?map_:Map<String, Small>, ?mapP:Map<String, Small>, ?pMap:Map<String, Small>, ?pMapP:Map<String, Small>, ?emptyMap:Map<String, Small>, ?nilMap:Map<String, Small>, ?slice:Array<Small>, ?sliceP:Array<Small>, ?pSlice:Array<Small>, ?pSliceP:Array<Small>, ?emptySlice:Array<Small>, ?nilSlice:Array<Small>, ?stringSlice:Array<String>, ?byteSlice:Array<std.UInt>, ?small:Small, ?pSmall:Small, ?pPSmall:Small, ?interface_:stdgo.AnyInterface, ?pInterface:stdgo.AnyInterface, ?_unexported:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_all.All(
bool_,
(int_ : stdgo.GoInt),
(int8 : stdgo.GoInt8),
(int16 : stdgo.GoInt16),
(int32 : stdgo.GoInt32),
(int64 : stdgo.GoInt64),
(uint : stdgo.GoUInt),
(uint8 : stdgo.GoUInt8),
(uint16 : stdgo.GoUInt16),
(uint32 : stdgo.GoUInt32),
(uint64 : stdgo.GoUInt64),
(uintptr : stdgo.GoUIntptr),
(float32 : stdgo.GoFloat32),
(float64 : stdgo.GoFloat64),
(foo : stdgo.GoString),
(foo2 : stdgo.GoString),
(intStr : stdgo.GoInt64),
(uintptrStr : stdgo.GoUIntptr),
pBool,
pInt,
pInt8,
pInt16,
pInt32,
pInt64,
pUint,
pUint8,
pUint16,
pUint32,
pUint64,
pUintptr,
pFloat32,
pFloat64,
(string : stdgo.GoString),
pString,
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>();
        for (key => value in map_) {
            __obj__[(key : stdgo.GoString)] = value;
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>();
        for (key => value in mapP) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>);
        };
        __obj__;
    },
(pMap : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>>),
(pMapP : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>();
        for (key => value in emptyMap) {
            __obj__[(key : stdgo.GoString)] = value;
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_small.Small>();
        for (key => value in nilMap) {
            __obj__[(key : stdgo.GoString)] = value;
        };
        __obj__;
    },
([for (i in slice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>),
([for (i in sliceP) (i : stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>),
(pSlice : stdgo.Ref<stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>>),
(pSliceP : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>>),
([for (i in emptySlice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>),
([for (i in nilSlice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_small.Small>),
([for (i in stringSlice) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in byteSlice) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
small,
(pSmall : stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>),
(pPSmall : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.json.Json_small.Small>>),
(interface_ : stdgo.AnyInterface),
(pInterface : stdgo.Ref<stdgo.AnyInterface>),
(_unexported : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Small_static_extension) abstract Small(stdgo._internal.encoding.json.Json_small.Small) from stdgo._internal.encoding.json.Json_small.Small to stdgo._internal.encoding.json.Json_small.Small {
    public var tag(get, set) : String;
    function get_tag():String return this.tag;
    function set_tag(v:String):String {
        this.tag = (v : stdgo.GoString);
        return v;
    }
    public function new(?tag:String) this = new stdgo._internal.encoding.json.Json_small.Small((tag : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.NullTest_static_extension) abstract NullTest(stdgo._internal.encoding.json.Json_nulltest.NullTest) from stdgo._internal.encoding.json.Json_nulltest.NullTest to stdgo._internal.encoding.json.Json_nulltest.NullTest {
    public var bool_(get, set) : Bool;
    function get_bool_():Bool return this.bool_;
    function set_bool_(v:Bool):Bool {
        this.bool_ = v;
        return v;
    }
    public var int_(get, set) : StdTypes.Int;
    function get_int_():StdTypes.Int return this.int_;
    function set_int_(v:StdTypes.Int):StdTypes.Int {
        this.int_ = (v : stdgo.GoInt);
        return v;
    }
    public var int8(get, set) : StdTypes.Int;
    function get_int8():StdTypes.Int return this.int8;
    function set_int8(v:StdTypes.Int):StdTypes.Int {
        this.int8 = (v : stdgo.GoInt8);
        return v;
    }
    public var int16(get, set) : StdTypes.Int;
    function get_int16():StdTypes.Int return this.int16;
    function set_int16(v:StdTypes.Int):StdTypes.Int {
        this.int16 = (v : stdgo.GoInt16);
        return v;
    }
    public var int32(get, set) : StdTypes.Int;
    function get_int32():StdTypes.Int return this.int32;
    function set_int32(v:StdTypes.Int):StdTypes.Int {
        this.int32 = (v : stdgo.GoInt32);
        return v;
    }
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = (v : stdgo.GoInt64);
        return v;
    }
    public var uint(get, set) : std.UInt;
    function get_uint():std.UInt return this.uint;
    function set_uint(v:std.UInt):std.UInt {
        this.uint = (v : stdgo.GoUInt);
        return v;
    }
    public var uint8(get, set) : std.UInt;
    function get_uint8():std.UInt return this.uint8;
    function set_uint8(v:std.UInt):std.UInt {
        this.uint8 = (v : stdgo.GoUInt8);
        return v;
    }
    public var uint16(get, set) : std.UInt;
    function get_uint16():std.UInt return this.uint16;
    function set_uint16(v:std.UInt):std.UInt {
        this.uint16 = (v : stdgo.GoUInt16);
        return v;
    }
    public var uint32(get, set) : std.UInt;
    function get_uint32():std.UInt return this.uint32;
    function set_uint32(v:std.UInt):std.UInt {
        this.uint32 = (v : stdgo.GoUInt32);
        return v;
    }
    public var uint64(get, set) : haxe.UInt64;
    function get_uint64():haxe.UInt64 return this.uint64;
    function set_uint64(v:haxe.UInt64):haxe.UInt64 {
        this.uint64 = (v : stdgo.GoUInt64);
        return v;
    }
    public var float32(get, set) : StdTypes.Float;
    function get_float32():StdTypes.Float return this.float32;
    function set_float32(v:StdTypes.Float):StdTypes.Float {
        this.float32 = (v : stdgo.GoFloat32);
        return v;
    }
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = (v : stdgo.GoFloat64);
        return v;
    }
    public var string(get, set) : String;
    function get_string():String return this.string;
    function set_string(v:String):String {
        this.string = (v : stdgo.GoString);
        return v;
    }
    public var pBool(get, set) : stdgo.Pointer<Bool>;
    function get_pBool():stdgo.Pointer<Bool> return this.pBool;
    function set_pBool(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        this.pBool = v;
        return v;
    }
    public var map_(get, set) : Map<String, String>;
    function get_map_():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this.map_) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_map_(v:Map<String, String>):Map<String, String> {
        this.map_ = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public var slice(get, set) : Array<String>;
    function get_slice():Array<String> return [for (i in this.slice) i];
    function set_slice(v:Array<String>):Array<String> {
        this.slice = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var interface_(get, set) : stdgo.AnyInterface;
    function get_interface_():stdgo.AnyInterface return this.interface_;
    function set_interface_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.interface_ = (v : stdgo.AnyInterface);
        return v;
    }
    public var pRaw(get, set) : RawMessage;
    function get_pRaw():RawMessage return this.pRaw;
    function set_pRaw(v:RawMessage):RawMessage {
        this.pRaw = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
        return v;
    }
    public var pTime(get, set) : stdgo._internal.time.Time_time.Time;
    function get_pTime():stdgo._internal.time.Time_time.Time return this.pTime;
    function set_pTime(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.pTime = (v : stdgo.Ref<stdgo._internal.time.Time_time.Time>);
        return v;
    }
    public var pBigInt(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_pBigInt():stdgo._internal.math.big.Big_int_.Int_ return this.pBigInt;
    function set_pBigInt(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.pBigInt = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var pText(get, set) : MustNotUnmarshalText;
    function get_pText():MustNotUnmarshalText return this.pText;
    function set_pText(v:MustNotUnmarshalText):MustNotUnmarshalText {
        this.pText = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText>);
        return v;
    }
    public var pBuffer(get, set) : stdgo._internal.bytes.Bytes_buffer.Buffer;
    function get_pBuffer():stdgo._internal.bytes.Bytes_buffer.Buffer return this.pBuffer;
    function set_pBuffer(v:stdgo._internal.bytes.Bytes_buffer.Buffer):stdgo._internal.bytes.Bytes_buffer.Buffer {
        this.pBuffer = (v : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        return v;
    }
    public var pStruct(get, set) : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue;
    function get_pStruct():stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue return this.pStruct;
    function set_pStruct(v:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue):stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue {
        this.pStruct = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>);
        return v;
    }
    public var raw(get, set) : RawMessage;
    function get_raw():RawMessage return this.raw;
    function set_raw(v:RawMessage):RawMessage {
        this.raw = v;
        return v;
    }
    public var time(get, set) : stdgo._internal.time.Time_time.Time;
    function get_time():stdgo._internal.time.Time_time.Time return this.time;
    function set_time(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.time = v;
        return v;
    }
    public var bigInt(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_bigInt():stdgo._internal.math.big.Big_int_.Int_ return this.bigInt;
    function set_bigInt(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.bigInt = v;
        return v;
    }
    public var text(get, set) : MustNotUnmarshalText;
    function get_text():MustNotUnmarshalText return this.text;
    function set_text(v:MustNotUnmarshalText):MustNotUnmarshalText {
        this.text = v;
        return v;
    }
    public var buffer(get, set) : stdgo._internal.bytes.Bytes_buffer.Buffer;
    function get_buffer():stdgo._internal.bytes.Bytes_buffer.Buffer return this.buffer;
    function set_buffer(v:stdgo._internal.bytes.Bytes_buffer.Buffer):stdgo._internal.bytes.Bytes_buffer.Buffer {
        this.buffer = v;
        return v;
    }
    public var struct_(get, set) : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue;
    function get_struct_():stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue return this.struct_;
    function set_struct_(v:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue):stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue {
        this.struct_ = v;
        return v;
    }
    public function new(?bool_:Bool, ?int_:StdTypes.Int, ?int8:StdTypes.Int, ?int16:StdTypes.Int, ?int32:StdTypes.Int, ?int64:haxe.Int64, ?uint:std.UInt, ?uint8:std.UInt, ?uint16:std.UInt, ?uint32:std.UInt, ?uint64:haxe.UInt64, ?float32:StdTypes.Float, ?float64:StdTypes.Float, ?string:String, ?pBool:stdgo.Pointer<Bool>, ?map_:Map<String, String>, ?slice:Array<String>, ?interface_:stdgo.AnyInterface, ?pRaw:RawMessage, ?pTime:stdgo._internal.time.Time_time.Time, ?pBigInt:stdgo._internal.math.big.Big_int_.Int_, ?pText:MustNotUnmarshalText, ?pBuffer:stdgo._internal.bytes.Bytes_buffer.Buffer, ?pStruct:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue, ?raw:RawMessage, ?time:stdgo._internal.time.Time_time.Time, ?bigInt:stdgo._internal.math.big.Big_int_.Int_, ?text:MustNotUnmarshalText, ?buffer:stdgo._internal.bytes.Bytes_buffer.Buffer, ?struct_:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue) this = new stdgo._internal.encoding.json.Json_nulltest.NullTest(
bool_,
(int_ : stdgo.GoInt),
(int8 : stdgo.GoInt8),
(int16 : stdgo.GoInt16),
(int32 : stdgo.GoInt32),
(int64 : stdgo.GoInt64),
(uint : stdgo.GoUInt),
(uint8 : stdgo.GoUInt8),
(uint16 : stdgo.GoUInt16),
(uint32 : stdgo.GoUInt32),
(uint64 : stdgo.GoUInt64),
(float32 : stdgo.GoFloat32),
(float64 : stdgo.GoFloat64),
(string : stdgo.GoString),
pBool,
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in map_) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    },
([for (i in slice) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(interface_ : stdgo.AnyInterface),
(pRaw : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>),
(pTime : stdgo.Ref<stdgo._internal.time.Time_time.Time>),
(pBigInt : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>),
(pText : stdgo.Ref<stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText>),
(pBuffer : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>),
(pStruct : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>),
raw,
time,
bigInt,
text,
buffer,
struct_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.MustNotUnmarshalJSON_static_extension) abstract MustNotUnmarshalJSON(stdgo._internal.encoding.json.Json_mustnotunmarshaljson.MustNotUnmarshalJSON) from stdgo._internal.encoding.json.Json_mustnotunmarshaljson.MustNotUnmarshalJSON to stdgo._internal.encoding.json.Json_mustnotunmarshaljson.MustNotUnmarshalJSON {
    public function new() this = new stdgo._internal.encoding.json.Json_mustnotunmarshaljson.MustNotUnmarshalJSON();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.MustNotUnmarshalText_static_extension) abstract MustNotUnmarshalText(stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText) from stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText to stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText {
    public function new() this = new stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unexportedFields_static_extension) @:dox(hide) abstract T_unexportedFields(stdgo._internal.encoding.json.Json_t_unexportedfields.T_unexportedFields) from stdgo._internal.encoding.json.Json_t_unexportedfields.T_unexportedFields to stdgo._internal.encoding.json.Json_t_unexportedfields.T_unexportedFields {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var _m(get, set) : Map<String, stdgo.AnyInterface>;
    function get__m():Map<String, stdgo.AnyInterface> return {
        final __obj__:Map<String, stdgo.AnyInterface> = [];
        for (key => value in this._m) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__m(v:Map<String, stdgo.AnyInterface>):Map<String, stdgo.AnyInterface> {
        this._m = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
            };
            __obj__;
        };
        return v;
    }
    public var _m2(get, set) : Map<String, stdgo.AnyInterface>;
    function get__m2():Map<String, stdgo.AnyInterface> return {
        final __obj__:Map<String, stdgo.AnyInterface> = [];
        for (key => value in this._m2) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__m2(v:Map<String, stdgo.AnyInterface>):Map<String, stdgo.AnyInterface> {
        this._m2 = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
            };
            __obj__;
        };
        return v;
    }
    public var _s(get, set) : Array<StdTypes.Int>;
    function get__s():Array<StdTypes.Int> return [for (i in this._s) i];
    function set__s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._s = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?name:String, ?_m:Map<String, stdgo.AnyInterface>, ?_m2:Map<String, stdgo.AnyInterface>, ?_s:Array<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json_t_unexportedfields.T_unexportedFields((name : stdgo.GoString), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
        for (key => value in _m) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
        for (key => value in _m2) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
        };
        __obj__;
    }, ([for (i in _s) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unmarshalPanic_static_extension) @:dox(hide) abstract T_unmarshalPanic(stdgo._internal.encoding.json.Json_t_unmarshalpanic.T_unmarshalPanic) from stdgo._internal.encoding.json.Json_t_unmarshalpanic.T_unmarshalPanic to stdgo._internal.encoding.json.Json_t_unmarshalpanic.T_unmarshalPanic {
    public function new() this = new stdgo._internal.encoding.json.Json_t_unmarshalpanic.T_unmarshalPanic();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnsupportedTypeError_static_extension) abstract UnsupportedTypeError(stdgo._internal.encoding.json.Json_unsupportedtypeerror.UnsupportedTypeError) from stdgo._internal.encoding.json.Json_unsupportedtypeerror.UnsupportedTypeError to stdgo._internal.encoding.json.Json_unsupportedtypeerror.UnsupportedTypeError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_type_.Type_) this = new stdgo._internal.encoding.json.Json_unsupportedtypeerror.UnsupportedTypeError(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnsupportedValueError_static_extension) abstract UnsupportedValueError(stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError) from stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError to stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError {
    public var value(get, set) : stdgo._internal.reflect.Reflect_value.Value;
    function get_value():stdgo._internal.reflect.Reflect_value.Value return this.value;
    function set_value(v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        this.value = v;
        return v;
    }
    public var str(get, set) : String;
    function get_str():String return this.str;
    function set_str(v:String):String {
        this.str = (v : stdgo.GoString);
        return v;
    }
    public function new(?value:stdgo._internal.reflect.Reflect_value.Value, ?str:String) this = new stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError(value, (str : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.InvalidUTF8Error_static_extension) abstract InvalidUTF8Error(stdgo._internal.encoding.json.Json_invalidutf8error.InvalidUTF8Error) from stdgo._internal.encoding.json.Json_invalidutf8error.InvalidUTF8Error to stdgo._internal.encoding.json.Json_invalidutf8error.InvalidUTF8Error {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.json.Json_invalidutf8error.InvalidUTF8Error((s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.MarshalerError_static_extension) abstract MarshalerError(stdgo._internal.encoding.json.Json_marshalererror.MarshalerError) from stdgo._internal.encoding.json.Json_marshalererror.MarshalerError to stdgo._internal.encoding.json.Json_marshalererror.MarshalerError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this.type = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public var _sourceFunc(get, set) : String;
    function get__sourceFunc():String return this._sourceFunc;
    function set__sourceFunc(v:String):String {
        this._sourceFunc = (v : stdgo.GoString);
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_type_.Type_, ?err:stdgo.Error, ?_sourceFunc:String) this = new stdgo._internal.encoding.json.Json_marshalererror.MarshalerError(type, (err : stdgo.Error), (_sourceFunc : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_encodeState_static_extension) @:dox(hide) abstract T_encodeState(stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState) from stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState to stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState {
    public var buffer(get, set) : stdgo._internal.bytes.Bytes_buffer.Buffer;
    function get_buffer():stdgo._internal.bytes.Bytes_buffer.Buffer return this.buffer;
    function set_buffer(v:stdgo._internal.bytes.Bytes_buffer.Buffer):stdgo._internal.bytes.Bytes_buffer.Buffer {
        this.buffer = v;
        return v;
    }
    public var _ptrLevel(get, set) : std.UInt;
    function get__ptrLevel():std.UInt return this._ptrLevel;
    function set__ptrLevel(v:std.UInt):std.UInt {
        this._ptrLevel = (v : stdgo.GoUInt);
        return v;
    }
    public var _ptrSeen(get, set) : Map<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>;
    function get__ptrSeen():Map<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue> return {
        final __obj__:Map<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue> = [];
        for (key => value in this._ptrSeen) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__ptrSeen(v:Map<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>):Map<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue> {
        this._ptrSeen = {
            final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>();
            for (key => value in v) {
                __obj__[(key : stdgo.AnyInterface)] = value;
            };
            __obj__;
        };
        return v;
    }
    public function new(?buffer:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_ptrLevel:std.UInt, ?_ptrSeen:Map<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>) this = new stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState(buffer, (_ptrLevel : stdgo.GoUInt), {
        final __obj__ = new stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>();
        for (key => value in _ptrSeen) {
            __obj__[(key : stdgo.AnyInterface)] = value;
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_jsonError_static_extension) @:dox(hide) abstract T_jsonError(stdgo._internal.encoding.json.Json_t_jsonerror.T_jsonError) from stdgo._internal.encoding.json.Json_t_jsonerror.T_jsonError to stdgo._internal.encoding.json.Json_t_jsonerror.T_jsonError {
    public var _error(get, set) : stdgo.Error;
    function get__error():stdgo.Error return this._error;
    function set__error(v:stdgo.Error):stdgo.Error {
        this._error = (v : stdgo.Error);
        return v;
    }
    public function new(?_error:stdgo.Error) this = new stdgo._internal.encoding.json.Json_t_jsonerror.T_jsonError((_error : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_encOpts_static_extension) @:dox(hide) abstract T_encOpts(stdgo._internal.encoding.json.Json_t_encopts.T_encOpts) from stdgo._internal.encoding.json.Json_t_encopts.T_encOpts to stdgo._internal.encoding.json.Json_t_encopts.T_encOpts {
    public var _quoted(get, set) : Bool;
    function get__quoted():Bool return this._quoted;
    function set__quoted(v:Bool):Bool {
        this._quoted = v;
        return v;
    }
    public var _escapeHTML(get, set) : Bool;
    function get__escapeHTML():Bool return this._escapeHTML;
    function set__escapeHTML(v:Bool):Bool {
        this._escapeHTML = v;
        return v;
    }
    public function new(?_quoted:Bool, ?_escapeHTML:Bool) this = new stdgo._internal.encoding.json.Json_t_encopts.T_encOpts(_quoted, _escapeHTML);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_structEncoder_static_extension) @:dox(hide) abstract T_structEncoder(stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder) from stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder to stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder {
    public var _fields(get, set) : T_structFields;
    function get__fields():T_structFields return this._fields;
    function set__fields(v:T_structFields):T_structFields {
        this._fields = v;
        return v;
    }
    public function new(?_fields:T_structFields) this = new stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder(_fields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_structFields_static_extension) @:dox(hide) abstract T_structFields(stdgo._internal.encoding.json.Json_t_structfields.T_structFields) from stdgo._internal.encoding.json.Json_t_structfields.T_structFields to stdgo._internal.encoding.json.Json_t_structfields.T_structFields {
    public var _list(get, set) : Array<T_field>;
    function get__list():Array<T_field> return [for (i in this._list) i];
    function set__list(v:Array<T_field>):Array<T_field> {
        this._list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>);
        return v;
    }
    public var _byExactName(get, set) : Map<String, T_field>;
    function get__byExactName():Map<String, T_field> return {
        final __obj__:Map<String, T_field> = [];
        for (key => value in this._byExactName) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__byExactName(v:Map<String, T_field>):Map<String, T_field> {
        this._byExactName = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
            };
            __obj__;
        };
        return v;
    }
    public var _byFoldedName(get, set) : Map<String, T_field>;
    function get__byFoldedName():Map<String, T_field> return {
        final __obj__:Map<String, T_field> = [];
        for (key => value in this._byFoldedName) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__byFoldedName(v:Map<String, T_field>):Map<String, T_field> {
        this._byFoldedName = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_list:Array<T_field>, ?_byExactName:Map<String, T_field>, ?_byFoldedName:Map<String, T_field>) this = new stdgo._internal.encoding.json.Json_t_structfields.T_structFields(([for (i in _list) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_t_field.T_field>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>();
        for (key => value in _byExactName) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>>();
        for (key => value in _byFoldedName) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_mapEncoder_static_extension) @:dox(hide) abstract T_mapEncoder(stdgo._internal.encoding.json.Json_t_mapencoder.T_mapEncoder) from stdgo._internal.encoding.json.Json_t_mapencoder.T_mapEncoder to stdgo._internal.encoding.json.Json_t_mapencoder.T_mapEncoder {
    public var _elemEnc(get, set) : T_encoderFunc;
    function get__elemEnc():T_encoderFunc return this._elemEnc;
    function set__elemEnc(v:T_encoderFunc):T_encoderFunc {
        this._elemEnc = v;
        return v;
    }
    public function new(?_elemEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_t_mapencoder.T_mapEncoder(_elemEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_sliceEncoder_static_extension) @:dox(hide) abstract T_sliceEncoder(stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder) from stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder to stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder {
    public var _arrayEnc(get, set) : T_encoderFunc;
    function get__arrayEnc():T_encoderFunc return this._arrayEnc;
    function set__arrayEnc(v:T_encoderFunc):T_encoderFunc {
        this._arrayEnc = v;
        return v;
    }
    public function new(?_arrayEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_t_sliceencoder.T_sliceEncoder(_arrayEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_arrayEncoder_static_extension) @:dox(hide) abstract T_arrayEncoder(stdgo._internal.encoding.json.Json_t_arrayencoder.T_arrayEncoder) from stdgo._internal.encoding.json.Json_t_arrayencoder.T_arrayEncoder to stdgo._internal.encoding.json.Json_t_arrayencoder.T_arrayEncoder {
    public var _elemEnc(get, set) : T_encoderFunc;
    function get__elemEnc():T_encoderFunc return this._elemEnc;
    function set__elemEnc(v:T_encoderFunc):T_encoderFunc {
        this._elemEnc = v;
        return v;
    }
    public function new(?_elemEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_t_arrayencoder.T_arrayEncoder(_elemEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_ptrEncoder_static_extension) @:dox(hide) abstract T_ptrEncoder(stdgo._internal.encoding.json.Json_t_ptrencoder.T_ptrEncoder) from stdgo._internal.encoding.json.Json_t_ptrencoder.T_ptrEncoder to stdgo._internal.encoding.json.Json_t_ptrencoder.T_ptrEncoder {
    public var _elemEnc(get, set) : T_encoderFunc;
    function get__elemEnc():T_encoderFunc return this._elemEnc;
    function set__elemEnc(v:T_encoderFunc):T_encoderFunc {
        this._elemEnc = v;
        return v;
    }
    public function new(?_elemEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_t_ptrencoder.T_ptrEncoder(_elemEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_condAddrEncoder_static_extension) @:dox(hide) abstract T_condAddrEncoder(stdgo._internal.encoding.json.Json_t_condaddrencoder.T_condAddrEncoder) from stdgo._internal.encoding.json.Json_t_condaddrencoder.T_condAddrEncoder to stdgo._internal.encoding.json.Json_t_condaddrencoder.T_condAddrEncoder {
    public var _canAddrEnc(get, set) : T_encoderFunc;
    function get__canAddrEnc():T_encoderFunc return this._canAddrEnc;
    function set__canAddrEnc(v:T_encoderFunc):T_encoderFunc {
        this._canAddrEnc = v;
        return v;
    }
    public var _elseEnc(get, set) : T_encoderFunc;
    function get__elseEnc():T_encoderFunc return this._elseEnc;
    function set__elseEnc(v:T_encoderFunc):T_encoderFunc {
        this._elseEnc = v;
        return v;
    }
    public function new(?_canAddrEnc:T_encoderFunc, ?_elseEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_t_condaddrencoder.T_condAddrEncoder(_canAddrEnc, _elseEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_reflectWithString_static_extension) @:dox(hide) abstract T_reflectWithString(stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString) from stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString to stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString {
    public var _k(get, set) : stdgo._internal.reflect.Reflect_value.Value;
    function get__k():stdgo._internal.reflect.Reflect_value.Value return this._k;
    function set__k(v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        this._k = v;
        return v;
    }
    public var _v(get, set) : stdgo._internal.reflect.Reflect_value.Value;
    function get__v():stdgo._internal.reflect.Reflect_value.Value return this._v;
    function set__v(v:stdgo._internal.reflect.Reflect_value.Value):stdgo._internal.reflect.Reflect_value.Value {
        this._v = v;
        return v;
    }
    public var _ks(get, set) : String;
    function get__ks():String return this._ks;
    function set__ks(v:String):String {
        this._ks = (v : stdgo.GoString);
        return v;
    }
    public function new(?_k:stdgo._internal.reflect.Reflect_value.Value, ?_v:stdgo._internal.reflect.Reflect_value.Value, ?_ks:String) this = new stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString(_k, _v, (_ks : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_field_static_extension) @:dox(hide) abstract T_field(stdgo._internal.encoding.json.Json_t_field.T_field) from stdgo._internal.encoding.json.Json_t_field.T_field to stdgo._internal.encoding.json.Json_t_field.T_field {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _nameBytes(get, set) : Array<std.UInt>;
    function get__nameBytes():Array<std.UInt> return [for (i in this._nameBytes) i];
    function set__nameBytes(v:Array<std.UInt>):Array<std.UInt> {
        this._nameBytes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _nameNonEsc(get, set) : String;
    function get__nameNonEsc():String return this._nameNonEsc;
    function set__nameNonEsc(v:String):String {
        this._nameNonEsc = (v : stdgo.GoString);
        return v;
    }
    public var _nameEscHTML(get, set) : String;
    function get__nameEscHTML():String return this._nameEscHTML;
    function set__nameEscHTML(v:String):String {
        this._nameEscHTML = (v : stdgo.GoString);
        return v;
    }
    public var _tag(get, set) : Bool;
    function get__tag():Bool return this._tag;
    function set__tag(v:Bool):Bool {
        this._tag = v;
        return v;
    }
    public var _index(get, set) : Array<StdTypes.Int>;
    function get__index():Array<StdTypes.Int> return [for (i in this._index) i];
    function set__index(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._index = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _typ(get, set) : stdgo._internal.reflect.Reflect_type_.Type_;
    function get__typ():stdgo._internal.reflect.Reflect_type_.Type_ return this._typ;
    function set__typ(v:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ {
        this._typ = v;
        return v;
    }
    public var _omitEmpty(get, set) : Bool;
    function get__omitEmpty():Bool return this._omitEmpty;
    function set__omitEmpty(v:Bool):Bool {
        this._omitEmpty = v;
        return v;
    }
    public var _quoted(get, set) : Bool;
    function get__quoted():Bool return this._quoted;
    function set__quoted(v:Bool):Bool {
        this._quoted = v;
        return v;
    }
    public var _encoder(get, set) : T_encoderFunc;
    function get__encoder():T_encoderFunc return this._encoder;
    function set__encoder(v:T_encoderFunc):T_encoderFunc {
        this._encoder = v;
        return v;
    }
    public function new(?_name:String, ?_nameBytes:Array<std.UInt>, ?_nameNonEsc:String, ?_nameEscHTML:String, ?_tag:Bool, ?_index:Array<StdTypes.Int>, ?_typ:stdgo._internal.reflect.Reflect_type_.Type_, ?_omitEmpty:Bool, ?_quoted:Bool, ?_encoder:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_t_field.T_field((_name : stdgo.GoString), ([for (i in _nameBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_nameNonEsc : stdgo.GoString), (_nameEscHTML : stdgo.GoString), _tag, ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), _typ, _omitEmpty, _quoted, _encoder);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Optionals_static_extension) abstract Optionals(stdgo._internal.encoding.json.Json_optionals.Optionals) from stdgo._internal.encoding.json.Json_optionals.Optionals to stdgo._internal.encoding.json.Json_optionals.Optionals {
    public var sr(get, set) : String;
    function get_sr():String return this.sr;
    function set_sr(v:String):String {
        this.sr = (v : stdgo.GoString);
        return v;
    }
    public var so(get, set) : String;
    function get_so():String return this.so;
    function set_so(v:String):String {
        this.so = (v : stdgo.GoString);
        return v;
    }
    public var sw(get, set) : String;
    function get_sw():String return this.sw;
    function set_sw(v:String):String {
        this.sw = (v : stdgo.GoString);
        return v;
    }
    public var ir(get, set) : StdTypes.Int;
    function get_ir():StdTypes.Int return this.ir;
    function set_ir(v:StdTypes.Int):StdTypes.Int {
        this.ir = (v : stdgo.GoInt);
        return v;
    }
    public var io(get, set) : StdTypes.Int;
    function get_io():StdTypes.Int return this.io;
    function set_io(v:StdTypes.Int):StdTypes.Int {
        this.io = (v : stdgo.GoInt);
        return v;
    }
    public var slr(get, set) : Array<String>;
    function get_slr():Array<String> return [for (i in this.slr) i];
    function set_slr(v:Array<String>):Array<String> {
        this.slr = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var slo(get, set) : Array<String>;
    function get_slo():Array<String> return [for (i in this.slo) i];
    function set_slo(v:Array<String>):Array<String> {
        this.slo = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var mr(get, set) : Map<String, stdgo.AnyInterface>;
    function get_mr():Map<String, stdgo.AnyInterface> return {
        final __obj__:Map<String, stdgo.AnyInterface> = [];
        for (key => value in this.mr) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mr(v:Map<String, stdgo.AnyInterface>):Map<String, stdgo.AnyInterface> {
        this.mr = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
            };
            __obj__;
        };
        return v;
    }
    public var mo(get, set) : Map<String, stdgo.AnyInterface>;
    function get_mo():Map<String, stdgo.AnyInterface> return {
        final __obj__:Map<String, stdgo.AnyInterface> = [];
        for (key => value in this.mo) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set_mo(v:Map<String, stdgo.AnyInterface>):Map<String, stdgo.AnyInterface> {
        this.mo = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
            };
            __obj__;
        };
        return v;
    }
    public var fr(get, set) : StdTypes.Float;
    function get_fr():StdTypes.Float return this.fr;
    function set_fr(v:StdTypes.Float):StdTypes.Float {
        this.fr = (v : stdgo.GoFloat64);
        return v;
    }
    public var fo(get, set) : StdTypes.Float;
    function get_fo():StdTypes.Float return this.fo;
    function set_fo(v:StdTypes.Float):StdTypes.Float {
        this.fo = (v : stdgo.GoFloat64);
        return v;
    }
    public var br(get, set) : Bool;
    function get_br():Bool return this.br;
    function set_br(v:Bool):Bool {
        this.br = v;
        return v;
    }
    public var bo(get, set) : Bool;
    function get_bo():Bool return this.bo;
    function set_bo(v:Bool):Bool {
        this.bo = v;
        return v;
    }
    public var ur(get, set) : std.UInt;
    function get_ur():std.UInt return this.ur;
    function set_ur(v:std.UInt):std.UInt {
        this.ur = (v : stdgo.GoUInt);
        return v;
    }
    public var uo(get, set) : std.UInt;
    function get_uo():std.UInt return this.uo;
    function set_uo(v:std.UInt):std.UInt {
        this.uo = (v : stdgo.GoUInt);
        return v;
    }
    public var str(get, set) : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue;
    function get_str():stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue return this.str;
    function set_str(v:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue):stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue {
        this.str = v;
        return v;
    }
    public var sto(get, set) : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue;
    function get_sto():stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue return this.sto;
    function set_sto(v:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue):stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue {
        this.sto = v;
        return v;
    }
    public function new(?sr:String, ?so:String, ?sw:String, ?ir:StdTypes.Int, ?io:StdTypes.Int, ?slr:Array<String>, ?slo:Array<String>, ?mr:Map<String, stdgo.AnyInterface>, ?mo:Map<String, stdgo.AnyInterface>, ?fr:StdTypes.Float, ?fo:StdTypes.Float, ?br:Bool, ?bo:Bool, ?ur:std.UInt, ?uo:std.UInt, ?str:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue, ?sto:stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue) this = new stdgo._internal.encoding.json.Json_optionals.Optionals(
(sr : stdgo.GoString),
(so : stdgo.GoString),
(sw : stdgo.GoString),
(ir : stdgo.GoInt),
(io : stdgo.GoInt),
([for (i in slr) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in slo) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
        for (key => value in mr) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
        };
        __obj__;
    },
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
        for (key => value in mo) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
        };
        __obj__;
    },
(fr : stdgo.GoFloat64),
(fo : stdgo.GoFloat64),
br,
bo,
(ur : stdgo.GoUInt),
(uo : stdgo.GoUInt),
str,
sto);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.StringTag_static_extension) abstract StringTag(stdgo._internal.encoding.json.Json_stringtag.StringTag) from stdgo._internal.encoding.json.Json_stringtag.StringTag to stdgo._internal.encoding.json.Json_stringtag.StringTag {
    public var boolStr(get, set) : Bool;
    function get_boolStr():Bool return this.boolStr;
    function set_boolStr(v:Bool):Bool {
        this.boolStr = v;
        return v;
    }
    public var intStr(get, set) : haxe.Int64;
    function get_intStr():haxe.Int64 return this.intStr;
    function set_intStr(v:haxe.Int64):haxe.Int64 {
        this.intStr = (v : stdgo.GoInt64);
        return v;
    }
    public var uintptrStr(get, set) : stdgo.GoUIntptr;
    function get_uintptrStr():stdgo.GoUIntptr return this.uintptrStr;
    function set_uintptrStr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptrStr = (v : stdgo.GoUIntptr);
        return v;
    }
    public var strStr(get, set) : String;
    function get_strStr():String return this.strStr;
    function set_strStr(v:String):String {
        this.strStr = (v : stdgo.GoString);
        return v;
    }
    public var numberStr(get, set) : Number;
    function get_numberStr():Number return this.numberStr;
    function set_numberStr(v:Number):Number {
        this.numberStr = v;
        return v;
    }
    public function new(?boolStr:Bool, ?intStr:haxe.Int64, ?uintptrStr:stdgo.GoUIntptr, ?strStr:String, ?numberStr:Number) this = new stdgo._internal.encoding.json.Json_stringtag.StringTag(boolStr, (intStr : stdgo.GoInt64), (uintptrStr : stdgo.GoUIntptr), (strStr : stdgo.GoString), numberStr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.SamePointerNoCycle_static_extension) abstract SamePointerNoCycle(stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle) from stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle to stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle {
    public var ptr1(get, set) : SamePointerNoCycle;
    function get_ptr1():SamePointerNoCycle return this.ptr1;
    function set_ptr1(v:SamePointerNoCycle):SamePointerNoCycle {
        this.ptr1 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle>);
        return v;
    }
    public var ptr2(get, set) : SamePointerNoCycle;
    function get_ptr2():SamePointerNoCycle return this.ptr2;
    function set_ptr2(v:SamePointerNoCycle):SamePointerNoCycle {
        this.ptr2 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle>);
        return v;
    }
    public function new(?ptr1:SamePointerNoCycle, ?ptr2:SamePointerNoCycle) this = new stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle((ptr1 : stdgo.Ref<stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle>), (ptr2 : stdgo.Ref<stdgo._internal.encoding.json.Json_samepointernocycle.SamePointerNoCycle>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.PointerCycle_static_extension) abstract PointerCycle(stdgo._internal.encoding.json.Json_pointercycle.PointerCycle) from stdgo._internal.encoding.json.Json_pointercycle.PointerCycle to stdgo._internal.encoding.json.Json_pointercycle.PointerCycle {
    public var ptr(get, set) : PointerCycle;
    function get_ptr():PointerCycle return this.ptr;
    function set_ptr(v:PointerCycle):PointerCycle {
        this.ptr = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_pointercycle.PointerCycle>);
        return v;
    }
    public function new(?ptr:PointerCycle) this = new stdgo._internal.encoding.json.Json_pointercycle.PointerCycle((ptr : stdgo.Ref<stdgo._internal.encoding.json.Json_pointercycle.PointerCycle>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.PointerCycleIndirect_static_extension) abstract PointerCycleIndirect(stdgo._internal.encoding.json.Json_pointercycleindirect.PointerCycleIndirect) from stdgo._internal.encoding.json.Json_pointercycleindirect.PointerCycleIndirect to stdgo._internal.encoding.json.Json_pointercycleindirect.PointerCycleIndirect {
    public var ptrs(get, set) : Array<stdgo.AnyInterface>;
    function get_ptrs():Array<stdgo.AnyInterface> return [for (i in this.ptrs) i];
    function set_ptrs(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.ptrs = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?ptrs:Array<stdgo.AnyInterface>) this = new stdgo._internal.encoding.json.Json_pointercycleindirect.PointerCycleIndirect(([for (i in ptrs) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugA_static_extension) abstract BugA(stdgo._internal.encoding.json.Json_buga.BugA) from stdgo._internal.encoding.json.Json_buga.BugA to stdgo._internal.encoding.json.Json_buga.BugA {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.json.Json_buga.BugA((s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugB_static_extension) abstract BugB(stdgo._internal.encoding.json.Json_bugb.BugB) from stdgo._internal.encoding.json.Json_bugb.BugB to stdgo._internal.encoding.json.Json_bugb.BugB {
    public var bugA(get, set) : BugA;
    function get_bugA():BugA return this.bugA;
    function set_bugA(v:BugA):BugA {
        this.bugA = v;
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public function new(?bugA:BugA, ?s:String) this = new stdgo._internal.encoding.json.Json_bugb.BugB(bugA, (s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugC_static_extension) abstract BugC(stdgo._internal.encoding.json.Json_bugc.BugC) from stdgo._internal.encoding.json.Json_bugc.BugC to stdgo._internal.encoding.json.Json_bugc.BugC {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = (v : stdgo.GoString);
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.json.Json_bugc.BugC((s : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugX_static_extension) abstract BugX(stdgo._internal.encoding.json.Json_bugx.BugX) from stdgo._internal.encoding.json.Json_bugx.BugX to stdgo._internal.encoding.json.Json_bugx.BugX {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var bugA(get, set) : BugA;
    function get_bugA():BugA return this.bugA;
    function set_bugA(v:BugA):BugA {
        this.bugA = v;
        return v;
    }
    public var bugB(get, set) : BugB;
    function get_bugB():BugB return this.bugB;
    function set_bugB(v:BugB):BugB {
        this.bugB = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?bugA:BugA, ?bugB:BugB) this = new stdgo._internal.encoding.json.Json_bugx.BugX((a : stdgo.GoInt), bugA, bugB);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugD_static_extension) abstract BugD(stdgo._internal.encoding.json.Json_bugd.BugD) from stdgo._internal.encoding.json.Json_bugd.BugD to stdgo._internal.encoding.json.Json_bugd.BugD {
    public var xXX(get, set) : String;
    function get_xXX():String return this.xXX;
    function set_xXX(v:String):String {
        this.xXX = (v : stdgo.GoString);
        return v;
    }
    public function new(?xXX:String) this = new stdgo._internal.encoding.json.Json_bugd.BugD((xXX : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugY_static_extension) abstract BugY(stdgo._internal.encoding.json.Json_bugy.BugY) from stdgo._internal.encoding.json.Json_bugy.BugY to stdgo._internal.encoding.json.Json_bugy.BugY {
    public var bugA(get, set) : BugA;
    function get_bugA():BugA return this.bugA;
    function set_bugA(v:BugA):BugA {
        this.bugA = v;
        return v;
    }
    public var bugD(get, set) : BugD;
    function get_bugD():BugD return this.bugD;
    function set_bugD(v:BugD):BugD {
        this.bugD = v;
        return v;
    }
    public function new(?bugA:BugA, ?bugD:BugD) this = new stdgo._internal.encoding.json.Json_bugy.BugY(bugA, bugD);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugZ_static_extension) abstract BugZ(stdgo._internal.encoding.json.Json_bugz.BugZ) from stdgo._internal.encoding.json.Json_bugz.BugZ to stdgo._internal.encoding.json.Json_bugz.BugZ {
    public var bugA(get, set) : BugA;
    function get_bugA():BugA return this.bugA;
    function set_bugA(v:BugA):BugA {
        this.bugA = v;
        return v;
    }
    public var bugC(get, set) : BugC;
    function get_bugC():BugC return this.bugC;
    function set_bugC(v:BugC):BugC {
        this.bugC = v;
        return v;
    }
    public var bugY(get, set) : BugY;
    function get_bugY():BugY return this.bugY;
    function set_bugY(v:BugY):BugY {
        this.bugY = v;
        return v;
    }
    public function new(?bugA:BugA, ?bugC:BugC, ?bugY:BugY) this = new stdgo._internal.encoding.json.Json_bugz.BugZ(bugA, bugC, bugY);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_marshalPanic_static_extension) @:dox(hide) abstract T_marshalPanic(stdgo._internal.encoding.json.Json_t_marshalpanic.T_marshalPanic) from stdgo._internal.encoding.json.Json_t_marshalpanic.T_marshalPanic to stdgo._internal.encoding.json.Json_t_marshalpanic.T_marshalPanic {
    public function new() this = new stdgo._internal.encoding.json.Json_t_marshalpanic.T_marshalPanic();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.SyntaxError_static_extension) abstract SyntaxError(stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError) from stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError to stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_msg:String, ?offset:haxe.Int64) this = new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError((_msg : stdgo.GoString), (offset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_scanner_static_extension) @:dox(hide) abstract T_scanner(stdgo._internal.encoding.json.Json_t_scanner.T_scanner) from stdgo._internal.encoding.json.Json_t_scanner.T_scanner to stdgo._internal.encoding.json.Json_t_scanner.T_scanner {
    public var _step(get, set) : (T_scanner, std.UInt) -> StdTypes.Int;
    function get__step():(T_scanner, std.UInt) -> StdTypes.Int return (_0, _1) -> this._step(_0, _1);
    function set__step(v:(T_scanner, std.UInt) -> StdTypes.Int):(T_scanner, std.UInt) -> StdTypes.Int {
        this._step = v;
        return v;
    }
    public var _endTop(get, set) : Bool;
    function get__endTop():Bool return this._endTop;
    function set__endTop(v:Bool):Bool {
        this._endTop = v;
        return v;
    }
    public var _parseState(get, set) : Array<StdTypes.Int>;
    function get__parseState():Array<StdTypes.Int> return [for (i in this._parseState) i];
    function set__parseState(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._parseState = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _bytes(get, set) : haxe.Int64;
    function get__bytes():haxe.Int64 return this._bytes;
    function set__bytes(v:haxe.Int64):haxe.Int64 {
        this._bytes = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_step:(T_scanner, std.UInt) -> StdTypes.Int, ?_endTop:Bool, ?_parseState:Array<StdTypes.Int>, ?_err:stdgo.Error, ?_bytes:haxe.Int64) this = new stdgo._internal.encoding.json.Json_t_scanner.T_scanner(_step, _endTop, ([for (i in _parseState) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (_err : stdgo.Error), (_bytes : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_example_static_extension) @:dox(hide) abstract T_example(stdgo._internal.encoding.json.Json_t_example.T_example) from stdgo._internal.encoding.json.Json_t_example.T_example to stdgo._internal.encoding.json.Json_t_example.T_example {
    public var _compact(get, set) : String;
    function get__compact():String return this._compact;
    function set__compact(v:String):String {
        this._compact = (v : stdgo.GoString);
        return v;
    }
    public var _indent(get, set) : String;
    function get__indent():String return this._indent;
    function set__indent(v:String):String {
        this._indent = (v : stdgo.GoString);
        return v;
    }
    public function new(?_compact:String, ?_indent:String) this = new stdgo._internal.encoding.json.Json_t_example.T_example((_compact : stdgo.GoString), (_indent : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_indentErrorTest_static_extension) @:dox(hide) abstract T_indentErrorTest(stdgo._internal.encoding.json.Json_t_indenterrortest.T_indentErrorTest) from stdgo._internal.encoding.json.Json_t_indenterrortest.T_indentErrorTest to stdgo._internal.encoding.json.Json_t_indenterrortest.T_indentErrorTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_in:String, ?_err:stdgo.Error) this = new stdgo._internal.encoding.json.Json_t_indenterrortest.T_indentErrorTest((_in : stdgo.GoString), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Decoder_static_extension) abstract Decoder(stdgo._internal.encoding.json.Json_decoder.Decoder) from stdgo._internal.encoding.json.Json_decoder.Decoder to stdgo._internal.encoding.json.Json_decoder.Decoder {
    public var _r(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get__r():stdgo._internal.io.Io_reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this._r = v;
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _d(get, set) : T_decodeState;
    function get__d():T_decodeState return this._d;
    function set__d(v:T_decodeState):T_decodeState {
        this._d = v;
        return v;
    }
    public var _scanp(get, set) : StdTypes.Int;
    function get__scanp():StdTypes.Int return this._scanp;
    function set__scanp(v:StdTypes.Int):StdTypes.Int {
        this._scanp = (v : stdgo.GoInt);
        return v;
    }
    public var _scanned(get, set) : haxe.Int64;
    function get__scanned():haxe.Int64 return this._scanned;
    function set__scanned(v:haxe.Int64):haxe.Int64 {
        this._scanned = (v : stdgo.GoInt64);
        return v;
    }
    public var _scan(get, set) : T_scanner;
    function get__scan():T_scanner return this._scan;
    function set__scan(v:T_scanner):T_scanner {
        this._scan = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _tokenState(get, set) : StdTypes.Int;
    function get__tokenState():StdTypes.Int return this._tokenState;
    function set__tokenState(v:StdTypes.Int):StdTypes.Int {
        this._tokenState = (v : stdgo.GoInt);
        return v;
    }
    public var _tokenStack(get, set) : Array<StdTypes.Int>;
    function get__tokenStack():Array<StdTypes.Int> return [for (i in this._tokenStack) i];
    function set__tokenStack(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._tokenStack = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_buf:Array<std.UInt>, ?_d:T_decodeState, ?_scanp:StdTypes.Int, ?_scanned:haxe.Int64, ?_scan:T_scanner, ?_err:stdgo.Error, ?_tokenState:StdTypes.Int, ?_tokenStack:Array<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json_decoder.Decoder(_r, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _d, (_scanp : stdgo.GoInt), (_scanned : stdgo.GoInt64), _scan, (_err : stdgo.Error), (_tokenState : stdgo.GoInt), ([for (i in _tokenStack) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Encoder_static_extension) abstract Encoder(stdgo._internal.encoding.json.Json_encoder.Encoder) from stdgo._internal.encoding.json.Json_encoder.Encoder to stdgo._internal.encoding.json.Json_encoder.Encoder {
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _escapeHTML(get, set) : Bool;
    function get__escapeHTML():Bool return this._escapeHTML;
    function set__escapeHTML(v:Bool):Bool {
        this._escapeHTML = v;
        return v;
    }
    public var _indentBuf(get, set) : Array<std.UInt>;
    function get__indentBuf():Array<std.UInt> return [for (i in this._indentBuf) i];
    function set__indentBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._indentBuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _indentPrefix(get, set) : String;
    function get__indentPrefix():String return this._indentPrefix;
    function set__indentPrefix(v:String):String {
        this._indentPrefix = (v : stdgo.GoString);
        return v;
    }
    public var _indentValue(get, set) : String;
    function get__indentValue():String return this._indentValue;
    function set__indentValue(v:String):String {
        this._indentValue = (v : stdgo.GoString);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_err:stdgo.Error, ?_escapeHTML:Bool, ?_indentBuf:Array<std.UInt>, ?_indentPrefix:String, ?_indentValue:String) this = new stdgo._internal.encoding.json.Json_encoder.Encoder(_w, (_err : stdgo.Error), _escapeHTML, ([for (i in _indentBuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_indentPrefix : stdgo.GoString), (_indentValue : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_tokenStreamCase_static_extension) @:dox(hide) abstract T_tokenStreamCase(stdgo._internal.encoding.json.Json_t_tokenstreamcase.T_tokenStreamCase) from stdgo._internal.encoding.json.Json_t_tokenstreamcase.T_tokenStreamCase to stdgo._internal.encoding.json.Json_t_tokenstreamcase.T_tokenStreamCase {
    public var _json(get, set) : String;
    function get__json():String return this._json;
    function set__json(v:String):String {
        this._json = (v : stdgo.GoString);
        return v;
    }
    public var _expTokens(get, set) : Array<stdgo.AnyInterface>;
    function get__expTokens():Array<stdgo.AnyInterface> return [for (i in this._expTokens) i];
    function set__expTokens(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this._expTokens = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?_json:String, ?_expTokens:Array<stdgo.AnyInterface>) this = new stdgo._internal.encoding.json.Json_t_tokenstreamcase.T_tokenStreamCase((_json : stdgo.GoString), ([for (i in _expTokens) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_decodeThis_static_extension) @:dox(hide) abstract T_decodeThis(stdgo._internal.encoding.json.Json_t_decodethis.T_decodeThis) from stdgo._internal.encoding.json.Json_t_decodethis.T_decodeThis to stdgo._internal.encoding.json.Json_t_decodethis.T_decodeThis {
    public var _v(get, set) : stdgo.AnyInterface;
    function get__v():stdgo.AnyInterface return this._v;
    function set__v(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._v = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?_v:stdgo.AnyInterface) this = new stdgo._internal.encoding.json.Json_t_decodethis.T_decodeThis((_v : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_basicLatin2xTag_static_extension) @:dox(hide) abstract T_basicLatin2xTag(stdgo._internal.encoding.json.Json_t_basiclatin2xtag.T_basicLatin2xTag) from stdgo._internal.encoding.json.Json_t_basiclatin2xtag.T_basicLatin2xTag to stdgo._internal.encoding.json.Json_t_basiclatin2xtag.T_basicLatin2xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_t_basiclatin2xtag.T_basicLatin2xTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_basicLatin3xTag_static_extension) @:dox(hide) abstract T_basicLatin3xTag(stdgo._internal.encoding.json.Json_t_basiclatin3xtag.T_basicLatin3xTag) from stdgo._internal.encoding.json.Json_t_basiclatin3xtag.T_basicLatin3xTag to stdgo._internal.encoding.json.Json_t_basiclatin3xtag.T_basicLatin3xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_t_basiclatin3xtag.T_basicLatin3xTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_basicLatin4xTag_static_extension) @:dox(hide) abstract T_basicLatin4xTag(stdgo._internal.encoding.json.Json_t_basiclatin4xtag.T_basicLatin4xTag) from stdgo._internal.encoding.json.Json_t_basiclatin4xtag.T_basicLatin4xTag to stdgo._internal.encoding.json.Json_t_basiclatin4xtag.T_basicLatin4xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_t_basiclatin4xtag.T_basicLatin4xTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_basicLatin5xTag_static_extension) @:dox(hide) abstract T_basicLatin5xTag(stdgo._internal.encoding.json.Json_t_basiclatin5xtag.T_basicLatin5xTag) from stdgo._internal.encoding.json.Json_t_basiclatin5xtag.T_basicLatin5xTag to stdgo._internal.encoding.json.Json_t_basiclatin5xtag.T_basicLatin5xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_t_basiclatin5xtag.T_basicLatin5xTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_basicLatin6xTag_static_extension) @:dox(hide) abstract T_basicLatin6xTag(stdgo._internal.encoding.json.Json_t_basiclatin6xtag.T_basicLatin6xTag) from stdgo._internal.encoding.json.Json_t_basiclatin6xtag.T_basicLatin6xTag to stdgo._internal.encoding.json.Json_t_basiclatin6xtag.T_basicLatin6xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_t_basiclatin6xtag.T_basicLatin6xTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_basicLatin7xTag_static_extension) @:dox(hide) abstract T_basicLatin7xTag(stdgo._internal.encoding.json.Json_t_basiclatin7xtag.T_basicLatin7xTag) from stdgo._internal.encoding.json.Json_t_basiclatin7xtag.T_basicLatin7xTag to stdgo._internal.encoding.json.Json_t_basiclatin7xtag.T_basicLatin7xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_t_basiclatin7xtag.T_basicLatin7xTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_miscPlaneTag_static_extension) @:dox(hide) abstract T_miscPlaneTag(stdgo._internal.encoding.json.Json_t_miscplanetag.T_miscPlaneTag) from stdgo._internal.encoding.json.Json_t_miscplanetag.T_miscPlaneTag to stdgo._internal.encoding.json.Json_t_miscplanetag.T_miscPlaneTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_t_miscplanetag.T_miscPlaneTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_percentSlashTag_static_extension) @:dox(hide) abstract T_percentSlashTag(stdgo._internal.encoding.json.Json_t_percentslashtag.T_percentSlashTag) from stdgo._internal.encoding.json.Json_t_percentslashtag.T_percentSlashTag to stdgo._internal.encoding.json.Json_t_percentslashtag.T_percentSlashTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_t_percentslashtag.T_percentSlashTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_punctuationTag_static_extension) @:dox(hide) abstract T_punctuationTag(stdgo._internal.encoding.json.Json_t_punctuationtag.T_punctuationTag) from stdgo._internal.encoding.json.Json_t_punctuationtag.T_punctuationTag to stdgo._internal.encoding.json.Json_t_punctuationtag.T_punctuationTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_t_punctuationtag.T_punctuationTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_dashTag_static_extension) @:dox(hide) abstract T_dashTag(stdgo._internal.encoding.json.Json_t_dashtag.T_dashTag) from stdgo._internal.encoding.json.Json_t_dashtag.T_dashTag to stdgo._internal.encoding.json.Json_t_dashtag.T_dashTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = (v : stdgo.GoString);
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_t_dashtag.T_dashTag((v : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_emptyTag_static_extension) @:dox(hide) abstract T_emptyTag(stdgo._internal.encoding.json.Json_t_emptytag.T_emptyTag) from stdgo._internal.encoding.json.Json_t_emptytag.T_emptyTag to stdgo._internal.encoding.json.Json_t_emptytag.T_emptyTag {
    public var w(get, set) : String;
    function get_w():String return this.w;
    function set_w(v:String):String {
        this.w = (v : stdgo.GoString);
        return v;
    }
    public function new(?w:String) this = new stdgo._internal.encoding.json.Json_t_emptytag.T_emptyTag((w : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_misnamedTag_static_extension) @:dox(hide) abstract T_misnamedTag(stdgo._internal.encoding.json.Json_t_misnamedtag.T_misnamedTag) from stdgo._internal.encoding.json.Json_t_misnamedtag.T_misnamedTag to stdgo._internal.encoding.json.Json_t_misnamedtag.T_misnamedTag {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:String) this = new stdgo._internal.encoding.json.Json_t_misnamedtag.T_misnamedTag((x : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_badFormatTag_static_extension) @:dox(hide) abstract T_badFormatTag(stdgo._internal.encoding.json.Json_t_badformattag.T_badFormatTag) from stdgo._internal.encoding.json.Json_t_badformattag.T_badFormatTag to stdgo._internal.encoding.json.Json_t_badformattag.T_badFormatTag {
    public var y(get, set) : String;
    function get_y():String return this.y;
    function set_y(v:String):String {
        this.y = (v : stdgo.GoString);
        return v;
    }
    public function new(?y:String) this = new stdgo._internal.encoding.json.Json_t_badformattag.T_badFormatTag((y : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_badCodeTag_static_extension) @:dox(hide) abstract T_badCodeTag(stdgo._internal.encoding.json.Json_t_badcodetag.T_badCodeTag) from stdgo._internal.encoding.json.Json_t_badcodetag.T_badCodeTag to stdgo._internal.encoding.json.Json_t_badcodetag.T_badCodeTag {
    public var z(get, set) : String;
    function get_z():String return this.z;
    function set_z(v:String):String {
        this.z = (v : stdgo.GoString);
        return v;
    }
    public function new(?z:String) this = new stdgo._internal.encoding.json.Json_t_badcodetag.T_badCodeTag((z : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_spaceTag_static_extension) @:dox(hide) abstract T_spaceTag(stdgo._internal.encoding.json.Json_t_spacetag.T_spaceTag) from stdgo._internal.encoding.json.Json_t_spacetag.T_spaceTag to stdgo._internal.encoding.json.Json_t_spacetag.T_spaceTag {
    public var q(get, set) : String;
    function get_q():String return this.q;
    function set_q(v:String):String {
        this.q = (v : stdgo.GoString);
        return v;
    }
    public function new(?q:String) this = new stdgo._internal.encoding.json.Json_t_spacetag.T_spaceTag((q : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unicodeTag_static_extension) @:dox(hide) abstract T_unicodeTag(stdgo._internal.encoding.json.Json_t_unicodetag.T_unicodeTag) from stdgo._internal.encoding.json.Json_t_unicodetag.T_unicodeTag to stdgo._internal.encoding.json.Json_t_unicodetag.T_unicodeTag {
    public var w(get, set) : String;
    function get_w():String return this.w;
    function set_w(v:String):String {
        this.w = (v : stdgo.GoString);
        return v;
    }
    public function new(?w:String) this = new stdgo._internal.encoding.json.Json_t_unicodetag.T_unicodeTag((w : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.encoding.json.Json_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.encoding.json.Json_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.encoding.json.Json_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.encoding.json.Json_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.encoding.json.Json_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.encoding.json.Json_t__struct_2.T__struct_2;
@:dox(hide) typedef T__struct_3Pointer = stdgo._internal.encoding.json.Json_t__struct_3pointer.T__struct_3Pointer;
@:dox(hide) class T__struct_3_static_extension {

}
@:dox(hide) typedef T__struct_3 = stdgo._internal.encoding.json.Json_t__struct_3.T__struct_3;
@:dox(hide) typedef T__struct_4Pointer = stdgo._internal.encoding.json.Json_t__struct_4pointer.T__struct_4Pointer;
@:dox(hide) class T__struct_4_static_extension {

}
@:dox(hide) typedef T__struct_4 = stdgo._internal.encoding.json.Json_t__struct_4.T__struct_4;
@:dox(hide) typedef T__struct_5Pointer = stdgo._internal.encoding.json.Json_t__struct_5pointer.T__struct_5Pointer;
@:dox(hide) class T__struct_5_static_extension {

}
@:dox(hide) typedef T__struct_5 = stdgo._internal.encoding.json.Json_t__struct_5.T__struct_5;
@:dox(hide) typedef T__struct_6Pointer = stdgo._internal.encoding.json.Json_t__struct_6pointer.T__struct_6Pointer;
@:dox(hide) class T__struct_6_static_extension {

}
@:dox(hide) typedef T__struct_6 = stdgo._internal.encoding.json.Json_t__struct_6.T__struct_6;
@:dox(hide) typedef T__struct_7Pointer = stdgo._internal.encoding.json.Json_t__struct_7pointer.T__struct_7Pointer;
@:dox(hide) class T__struct_7_static_extension {

}
@:dox(hide) typedef T__struct_7 = stdgo._internal.encoding.json.Json_t__struct_7.T__struct_7;
@:dox(hide) typedef T__struct_8Pointer = stdgo._internal.encoding.json.Json_t__struct_8pointer.T__struct_8Pointer;
@:dox(hide) class T__struct_8_static_extension {

}
@:dox(hide) typedef T__struct_8 = stdgo._internal.encoding.json.Json_t__struct_8.T__struct_8;
@:dox(hide) typedef T__struct_9Pointer = stdgo._internal.encoding.json.Json_t__struct_9pointer.T__struct_9Pointer;
@:dox(hide) class T__struct_9_static_extension {

}
@:dox(hide) typedef T__struct_9 = stdgo._internal.encoding.json.Json_t__struct_9.T__struct_9;
@:dox(hide) typedef T__struct_10Pointer = stdgo._internal.encoding.json.Json_t__struct_10pointer.T__struct_10Pointer;
@:dox(hide) class T__struct_10_static_extension {

}
@:dox(hide) typedef T__struct_10 = stdgo._internal.encoding.json.Json_t__struct_10.T__struct_10;
@:dox(hide) typedef T__struct_11Pointer = stdgo._internal.encoding.json.Json_t__struct_11pointer.T__struct_11Pointer;
@:dox(hide) class T__struct_11_static_extension {

}
@:dox(hide) typedef T__struct_11 = stdgo._internal.encoding.json.Json_t__struct_11.T__struct_11;
@:dox(hide) typedef T__struct_12Pointer = stdgo._internal.encoding.json.Json_t__struct_12pointer.T__struct_12Pointer;
@:dox(hide) class T__struct_12_static_extension {

}
@:dox(hide) typedef T__struct_12 = stdgo._internal.encoding.json.Json_t__struct_12.T__struct_12;
@:dox(hide) typedef T__struct_13Pointer = stdgo._internal.encoding.json.Json_t__struct_13pointer.T__struct_13Pointer;
@:dox(hide) class T__struct_13_static_extension {

}
@:dox(hide) typedef T__struct_13 = stdgo._internal.encoding.json.Json_t__struct_13.T__struct_13;
@:dox(hide) typedef T__struct_14Pointer = stdgo._internal.encoding.json.Json_t__struct_14pointer.T__struct_14Pointer;
@:dox(hide) class T__struct_14_static_extension {

}
@:dox(hide) typedef T__struct_14 = stdgo._internal.encoding.json.Json_t__struct_14.T__struct_14;
@:dox(hide) typedef T__struct_15Pointer = stdgo._internal.encoding.json.Json_t__struct_15pointer.T__struct_15Pointer;
@:dox(hide) class T__struct_15_static_extension {

}
@:dox(hide) typedef T__struct_15 = stdgo._internal.encoding.json.Json_t__struct_15.T__struct_15;
@:dox(hide) typedef T__struct_16Pointer = stdgo._internal.encoding.json.Json_t__struct_16pointer.T__struct_16Pointer;
@:dox(hide) class T__struct_16_static_extension {

}
@:dox(hide) typedef T__struct_16 = stdgo._internal.encoding.json.Json_t__struct_16.T__struct_16;
@:dox(hide) typedef T__struct_17Pointer = stdgo._internal.encoding.json.Json_t__struct_17pointer.T__struct_17Pointer;
@:dox(hide) class T__struct_17_static_extension {

}
@:dox(hide) typedef T__struct_17 = stdgo._internal.encoding.json.Json_t__struct_17.T__struct_17;
@:dox(hide) typedef T__struct_18Pointer = stdgo._internal.encoding.json.Json_t__struct_18pointer.T__struct_18Pointer;
@:dox(hide) class T__struct_18_static_extension {

}
@:dox(hide) typedef T__struct_18 = stdgo._internal.encoding.json.Json_t__struct_18.T__struct_18;
@:dox(hide) typedef T__struct_19Pointer = stdgo._internal.encoding.json.Json_t__struct_19pointer.T__struct_19Pointer;
@:dox(hide) class T__struct_19_static_extension {

}
@:dox(hide) typedef T__struct_19 = stdgo._internal.encoding.json.Json_t__struct_19.T__struct_19;
@:dox(hide) typedef T__struct_20Pointer = stdgo._internal.encoding.json.Json_t__struct_20pointer.T__struct_20Pointer;
@:dox(hide) class T__struct_20_static_extension {

}
@:dox(hide) typedef T__struct_20 = stdgo._internal.encoding.json.Json_t__struct_20.T__struct_20;
@:dox(hide) typedef T__struct_21Pointer = stdgo._internal.encoding.json.Json_t__struct_21pointer.T__struct_21Pointer;
@:dox(hide) class T__struct_21_static_extension {

}
@:dox(hide) typedef T__struct_21 = stdgo._internal.encoding.json.Json_t__struct_21.T__struct_21;
@:dox(hide) typedef T__struct_22Pointer = stdgo._internal.encoding.json.Json_t__struct_22pointer.T__struct_22Pointer;
@:dox(hide) class T__struct_22_static_extension {

}
@:dox(hide) typedef T__struct_22 = stdgo._internal.encoding.json.Json_t__struct_22.T__struct_22;
@:dox(hide) typedef T__struct_23Pointer = stdgo._internal.encoding.json.Json_t__struct_23pointer.T__struct_23Pointer;
@:dox(hide) class T__struct_23_static_extension {

}
@:dox(hide) typedef T__struct_23 = stdgo._internal.encoding.json.Json_t__struct_23.T__struct_23;
@:dox(hide) typedef T__struct_24Pointer = stdgo._internal.encoding.json.Json_t__struct_24pointer.T__struct_24Pointer;
@:dox(hide) class T__struct_24_static_extension {

}
@:dox(hide) typedef T__struct_24 = stdgo._internal.encoding.json.Json_t__struct_24.T__struct_24;
@:dox(hide) typedef T__struct_25Pointer = stdgo._internal.encoding.json.Json_t__struct_25pointer.T__struct_25Pointer;
@:dox(hide) class T__struct_25_static_extension {

}
@:dox(hide) typedef T__struct_25 = stdgo._internal.encoding.json.Json_t__struct_25.T__struct_25;
@:dox(hide) typedef T__struct_26Pointer = stdgo._internal.encoding.json.Json_t__struct_26pointer.T__struct_26Pointer;
@:dox(hide) class T__struct_26_static_extension {

}
@:dox(hide) typedef T__struct_26 = stdgo._internal.encoding.json.Json_t__struct_26.T__struct_26;
@:dox(hide) typedef T__struct_27Pointer = stdgo._internal.encoding.json.Json_t__struct_27pointer.T__struct_27Pointer;
@:dox(hide) class T__struct_27_static_extension {

}
@:dox(hide) typedef T__struct_27 = stdgo._internal.encoding.json.Json_t__struct_27.T__struct_27;
@:dox(hide) typedef T__struct_28Pointer = stdgo._internal.encoding.json.Json_t__struct_28pointer.T__struct_28Pointer;
@:dox(hide) class T__struct_28_static_extension {

}
@:dox(hide) typedef T__struct_28 = stdgo._internal.encoding.json.Json_t__struct_28.T__struct_28;
@:dox(hide) typedef T__struct_29Pointer = stdgo._internal.encoding.json.Json_t__struct_29pointer.T__struct_29Pointer;
@:dox(hide) class T__struct_29_static_extension {

}
@:dox(hide) typedef T__struct_29 = stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29;
@:dox(hide) typedef T__struct_30Pointer = stdgo._internal.encoding.json.Json_t__struct_30pointer.T__struct_30Pointer;
@:dox(hide) class T__struct_30_static_extension {

}
@:dox(hide) typedef T__struct_30 = stdgo._internal.encoding.json.Json_t__struct_30.T__struct_30;
@:dox(hide) typedef T__struct_31Pointer = stdgo._internal.encoding.json.Json_t__struct_31pointer.T__struct_31Pointer;
@:dox(hide) class T__struct_31_static_extension {

}
@:dox(hide) typedef T__struct_31 = stdgo._internal.encoding.json.Json_t__struct_31.T__struct_31;
@:dox(hide) typedef T__struct_32Pointer = stdgo._internal.encoding.json.Json_t__struct_32pointer.T__struct_32Pointer;
@:dox(hide) class T__struct_32_static_extension {

}
@:dox(hide) typedef T__struct_32 = stdgo._internal.encoding.json.Json_t__struct_32.T__struct_32;
@:dox(hide) typedef T__struct_33Pointer = stdgo._internal.encoding.json.Json_t__struct_33pointer.T__struct_33Pointer;
@:dox(hide) class T__struct_33_static_extension {

}
@:dox(hide) typedef T__struct_33 = stdgo._internal.encoding.json.Json_t__struct_33.T__struct_33;
@:dox(hide) typedef T__struct_34Pointer = stdgo._internal.encoding.json.Json_t__struct_34pointer.T__struct_34Pointer;
@:dox(hide) class T__struct_34_static_extension {

}
@:dox(hide) typedef T__struct_34 = stdgo._internal.encoding.json.Json_t__struct_34.T__struct_34;
@:dox(hide) typedef T__struct_35Pointer = stdgo._internal.encoding.json.Json_t__struct_35pointer.T__struct_35Pointer;
@:dox(hide) class T__struct_35_static_extension {

}
@:dox(hide) typedef T__struct_35 = stdgo._internal.encoding.json.Json_t__struct_35.T__struct_35;
@:dox(hide) typedef T__struct_36Pointer = stdgo._internal.encoding.json.Json_t__struct_36pointer.T__struct_36Pointer;
@:dox(hide) class T__struct_36_static_extension {

}
@:dox(hide) typedef T__struct_36 = stdgo._internal.encoding.json.Json_t__struct_36.T__struct_36;
@:dox(hide) typedef T__struct_37Pointer = stdgo._internal.encoding.json.Json_t__struct_37pointer.T__struct_37Pointer;
@:dox(hide) class T__struct_37_static_extension {

}
@:dox(hide) typedef T__struct_37 = stdgo._internal.encoding.json.Json_t__struct_37.T__struct_37;
@:dox(hide) typedef T__struct_38Pointer = stdgo._internal.encoding.json.Json_t__struct_38pointer.T__struct_38Pointer;
@:dox(hide) class T__struct_38_static_extension {

}
@:dox(hide) typedef T__struct_38 = stdgo._internal.encoding.json.Json_t__struct_38.T__struct_38;
@:dox(hide) typedef T__struct_39Pointer = stdgo._internal.encoding.json.Json_t__struct_39pointer.T__struct_39Pointer;
@:dox(hide) class T__struct_39_static_extension {

}
@:dox(hide) typedef T__struct_39 = stdgo._internal.encoding.json.Json_t__struct_39.T__struct_39;
@:dox(hide) typedef T__struct_40Pointer = stdgo._internal.encoding.json.Json_t__struct_40pointer.T__struct_40Pointer;
@:dox(hide) class T__struct_40_static_extension {

}
@:dox(hide) typedef T__struct_40 = stdgo._internal.encoding.json.Json_t__struct_40.T__struct_40;
@:dox(hide) typedef T__struct_41Pointer = stdgo._internal.encoding.json.Json_t__struct_41pointer.T__struct_41Pointer;
@:dox(hide) class T__struct_41_static_extension {

}
@:dox(hide) typedef T__struct_41 = stdgo._internal.encoding.json.Json_t__struct_41.T__struct_41;
@:dox(hide) typedef T__struct_42Pointer = stdgo._internal.encoding.json.Json_t__struct_42pointer.T__struct_42Pointer;
@:dox(hide) class T__struct_42_static_extension {

}
@:dox(hide) typedef T__struct_42 = stdgo._internal.encoding.json.Json_t__struct_42.T__struct_42;
@:dox(hide) typedef T__struct_43Pointer = stdgo._internal.encoding.json.Json_t__struct_43pointer.T__struct_43Pointer;
@:dox(hide) class T__struct_43_static_extension {

}
@:dox(hide) typedef T__struct_43 = stdgo._internal.encoding.json.Json_t__struct_43.T__struct_43;
@:dox(hide) typedef T__struct_44Pointer = stdgo._internal.encoding.json.Json_t__struct_44pointer.T__struct_44Pointer;
@:dox(hide) class T__struct_44_static_extension {

}
@:dox(hide) typedef T__struct_44 = stdgo._internal.encoding.json.Json_t__struct_44.T__struct_44;
@:dox(hide) typedef T__struct_45Pointer = stdgo._internal.encoding.json.Json_t__struct_45pointer.T__struct_45Pointer;
@:dox(hide) class T__struct_45_static_extension {

}
@:dox(hide) typedef T__struct_45 = stdgo._internal.encoding.json.Json_t__struct_45.T__struct_45;
@:dox(hide) typedef T__struct_46Pointer = stdgo._internal.encoding.json.Json_t__struct_46pointer.T__struct_46Pointer;
@:dox(hide) class T__struct_46_static_extension {

}
@:dox(hide) typedef T__struct_46 = stdgo._internal.encoding.json.Json_t__struct_46.T__struct_46;
typedef Number = stdgo._internal.encoding.json.Json_number.Number;
typedef SS = stdgo._internal.encoding.json.Json_ss.SS;
@:dox(hide) typedef T_u8 = stdgo._internal.encoding.json.Json_t_u8.T_u8;
@:dox(hide) typedef T_u8marshal = stdgo._internal.encoding.json.Json_t_u8marshal.T_u8marshal;
typedef Embed0b = stdgo._internal.encoding.json.Json_embed0b.Embed0b;
typedef Embed0c = stdgo._internal.encoding.json.Json_embed0c.Embed0c;
typedef S7 = stdgo._internal.encoding.json.Json_s7.S7;
@:dox(hide) typedef T_byteWithMarshalJSON = stdgo._internal.encoding.json.Json_t_bytewithmarshaljson.T_byteWithMarshalJSON;
@:dox(hide) typedef T_byteWithPtrMarshalJSON = stdgo._internal.encoding.json.Json_t_bytewithptrmarshaljson.T_byteWithPtrMarshalJSON;
@:dox(hide) typedef T_byteWithMarshalText = stdgo._internal.encoding.json.Json_t_bytewithmarshaltext.T_byteWithMarshalText;
@:dox(hide) typedef T_byteWithPtrMarshalText = stdgo._internal.encoding.json.Json_t_bytewithptrmarshaltext.T_byteWithPtrMarshalText;
@:dox(hide) typedef T_intWithMarshalJSON = stdgo._internal.encoding.json.Json_t_intwithmarshaljson.T_intWithMarshalJSON;
@:dox(hide) typedef T_intWithPtrMarshalJSON = stdgo._internal.encoding.json.Json_t_intwithptrmarshaljson.T_intWithPtrMarshalJSON;
@:dox(hide) typedef T_intWithMarshalText = stdgo._internal.encoding.json.Json_t_intwithmarshaltext.T_intWithMarshalText;
@:dox(hide) typedef T_intWithPtrMarshalText = stdgo._internal.encoding.json.Json_t_intwithptrmarshaltext.T_intWithPtrMarshalText;
typedef Time3339 = stdgo._internal.encoding.json.Json_time3339.Time3339;
@:dox(hide) typedef T_textUnmarshalerString = stdgo._internal.encoding.json.Json_t_textunmarshalerstring.T_textUnmarshalerString;
@:dox(hide) typedef T_encoderFunc = stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc;
@:dox(hide) typedef T_floatEncoder = stdgo._internal.encoding.json.Json_t_floatencoder.T_floatEncoder;
@:dox(hide) typedef T_byIndex = stdgo._internal.encoding.json.Json_t_byindex.T_byIndex;
@:dox(hide) typedef T_renamedByte = stdgo._internal.encoding.json.Json_t_renamedbyte.T_renamedByte;
@:dox(hide) typedef T_renamedByteSlice = stdgo._internal.encoding.json.Json_t_renamedbyteslice.T_renamedByteSlice;
@:dox(hide) typedef T_renamedRenamedByteSlice = stdgo._internal.encoding.json.Json_t_renamedrenamedbyteslice.T_renamedRenamedByteSlice;
typedef RecursiveSlice = stdgo._internal.encoding.json.Json_recursiveslice.RecursiveSlice;
typedef Ref = stdgo._internal.encoding.json.Json_ref.Ref;
typedef Val = stdgo._internal.encoding.json.Json_val.Val;
typedef RefText = stdgo._internal.encoding.json.Json_reftext.RefText;
typedef ValText = stdgo._internal.encoding.json.Json_valtext.ValText;
typedef C = stdgo._internal.encoding.json.Json_c.C;
typedef CText = stdgo._internal.encoding.json.Json_ctext.CText;
@:dox(hide) typedef T_nilJSONMarshaler = stdgo._internal.encoding.json.Json_t_niljsonmarshaler.T_nilJSONMarshaler;
@:dox(hide) typedef T_nilTextMarshaler = stdgo._internal.encoding.json.Json_t_niltextmarshaler.T_nilTextMarshaler;
@:dox(hide) typedef T_jsonbyte = stdgo._internal.encoding.json.Json_t_jsonbyte.T_jsonbyte;
@:dox(hide) typedef T_textbyte = stdgo._internal.encoding.json.Json_t_textbyte.T_textbyte;
@:dox(hide) typedef T_jsonint = stdgo._internal.encoding.json.Json_t_jsonint.T_jsonint;
@:dox(hide) typedef T_textint = stdgo._internal.encoding.json.Json_t_textint.T_textint;
@:dox(hide) typedef T_textfloat = stdgo._internal.encoding.json.Json_t_textfloat.T_textfloat;
typedef RawMessage = stdgo._internal.encoding.json.Json_rawmessage.RawMessage;
typedef Token = stdgo._internal.encoding.json.Json_token.Token;
typedef Delim = stdgo._internal.encoding.json.Json_delim.Delim;
@:dox(hide) typedef T_strMarshaler = stdgo._internal.encoding.json.Json_t_strmarshaler.T_strMarshaler;
@:dox(hide) typedef T_strPtrMarshaler = stdgo._internal.encoding.json.Json_t_strptrmarshaler.T_strPtrMarshaler;
@:dox(hide) typedef T_tagOptions = stdgo._internal.encoding.json.Json_t_tagoptions.T_tagOptions;
@:structInit @:using(stdgo.encoding.json.Json.T_benchmarkCodeEncoderError___localname___Dummy_2370_static_extension) @:dox(hide) abstract T_benchmarkCodeEncoderError___localname___Dummy_2370(stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370) from stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370 to stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T_benchmarkCodeEncoderError___localname___Dummy_2370;
    function get_next():T_benchmarkCodeEncoderError___localname___Dummy_2370 return this.next;
    function set_next(v:T_benchmarkCodeEncoderError___localname___Dummy_2370):T_benchmarkCodeEncoderError___localname___Dummy_2370 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370>);
        return v;
    }
    public function new(?name:String, ?next:T_benchmarkCodeEncoderError___localname___Dummy_2370) this = new stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370((name : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_benchmarkCodeMarshalError___localname___Dummy_3282_static_extension) @:dox(hide) abstract T_benchmarkCodeMarshalError___localname___Dummy_3282(stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282) from stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282 to stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T_benchmarkCodeMarshalError___localname___Dummy_3282;
    function get_next():T_benchmarkCodeMarshalError___localname___Dummy_3282 return this.next;
    function set_next(v:T_benchmarkCodeMarshalError___localname___Dummy_3282):T_benchmarkCodeMarshalError___localname___Dummy_3282 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282>);
        return v;
    }
    public function new(?name:String, ?next:T_benchmarkCodeMarshalError___localname___Dummy_3282) this = new stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282((name : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T__benchMarshalBytesError___localname___Dummy_4406_static_extension) @:dox(hide) abstract T__benchMarshalBytesError___localname___Dummy_4406(stdgo._internal.encoding.json.Json_t__benchmarshalbyteserror___localname___dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406) from stdgo._internal.encoding.json.Json_t__benchmarshalbyteserror___localname___dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406 to stdgo._internal.encoding.json.Json_t__benchmarshalbyteserror___localname___dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T__benchMarshalBytesError___localname___Dummy_4406;
    function get_next():T__benchMarshalBytesError___localname___Dummy_4406 return this.next;
    function set_next(v:T__benchMarshalBytesError___localname___Dummy_4406):T__benchMarshalBytesError___localname___Dummy_4406 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t__benchmarshalbyteserror___localname___dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406>);
        return v;
    }
    public function new(?name:String, ?next:T__benchMarshalBytesError___localname___Dummy_4406) this = new stdgo._internal.encoding.json.Json_t__benchmarshalbyteserror___localname___dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406((name : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.json.Json_t__benchmarshalbyteserror___localname___dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_benchmarkEncoderEncode___localname___T_11092_static_extension) @:dox(hide) abstract T_benchmarkEncoderEncode___localname___T_11092(stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092.T_benchmarkEncoderEncode___localname___T_11092) from stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092.T_benchmarkEncoderEncode___localname___T_11092 to stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092.T_benchmarkEncoderEncode___localname___T_11092 {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public var y(get, set) : String;
    function get_y():String return this.y;
    function set_y(v:String):String {
        this.y = (v : stdgo.GoString);
        return v;
    }
    public function new(?x:String, ?y:String) this = new stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092.T_benchmarkEncoderEncode___localname___T_11092((x : stdgo.GoString), (y : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testRefUnmarshal___localname___S_40168_static_extension) @:dox(hide) abstract T_testRefUnmarshal___localname___S_40168(stdgo._internal.encoding.json.Json_t_testrefunmarshal___localname___s_40168.T_testRefUnmarshal___localname___S_40168) from stdgo._internal.encoding.json.Json_t_testrefunmarshal___localname___s_40168.T_testRefUnmarshal___localname___S_40168 to stdgo._internal.encoding.json.Json_t_testrefunmarshal___localname___s_40168.T_testRefUnmarshal___localname___S_40168 {
    public var r0(get, set) : Ref;
    function get_r0():Ref return this.r0;
    function set_r0(v:Ref):Ref {
        this.r0 = v;
        return v;
    }
    public var r1(get, set) : stdgo.Pointer<Ref>;
    function get_r1():stdgo.Pointer<Ref> return this.r1;
    function set_r1(v:stdgo.Pointer<Ref>):stdgo.Pointer<Ref> {
        this.r1 = v;
        return v;
    }
    public var r2(get, set) : RefText;
    function get_r2():RefText return this.r2;
    function set_r2(v:RefText):RefText {
        this.r2 = v;
        return v;
    }
    public var r3(get, set) : stdgo.Pointer<RefText>;
    function get_r3():stdgo.Pointer<RefText> return this.r3;
    function set_r3(v:stdgo.Pointer<RefText>):stdgo.Pointer<RefText> {
        this.r3 = v;
        return v;
    }
    public function new(?r0:Ref, ?r1:stdgo.Pointer<Ref>, ?r2:RefText, ?r3:stdgo.Pointer<RefText>) this = new stdgo._internal.encoding.json.Json_t_testrefunmarshal___localname___s_40168.T_testRefUnmarshal___localname___S_40168(r0, r1, r2, r3);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testEmptyString___localname___T2_40735_static_extension) @:dox(hide) abstract T_testEmptyString___localname___T2_40735(stdgo._internal.encoding.json.Json_t_testemptystring___localname___t2_40735.T_testEmptyString___localname___T2_40735) from stdgo._internal.encoding.json.Json_t_testemptystring___localname___t2_40735.T_testEmptyString___localname___T2_40735 to stdgo._internal.encoding.json.Json_t_testemptystring___localname___t2_40735.T_testEmptyString___localname___T2_40735 {
    public var number1(get, set) : StdTypes.Int;
    function get_number1():StdTypes.Int return this.number1;
    function set_number1(v:StdTypes.Int):StdTypes.Int {
        this.number1 = (v : stdgo.GoInt);
        return v;
    }
    public var number2(get, set) : StdTypes.Int;
    function get_number2():StdTypes.Int return this.number2;
    function set_number2(v:StdTypes.Int):StdTypes.Int {
        this.number2 = (v : stdgo.GoInt);
        return v;
    }
    public function new(?number1:StdTypes.Int, ?number2:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testemptystring___localname___t2_40735.T_testEmptyString___localname___T2_40735((number1 : stdgo.GoInt), (number2 : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testNullString___localname___T_41259_static_extension) @:dox(hide) abstract T_testNullString___localname___T_41259(stdgo._internal.encoding.json.Json_t_testnullstring___localname___t_41259.T_testNullString___localname___T_41259) from stdgo._internal.encoding.json.Json_t_testnullstring___localname___t_41259.T_testNullString___localname___T_41259 to stdgo._internal.encoding.json.Json_t_testnullstring___localname___t_41259.T_testNullString___localname___T_41259 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = (v : stdgo.GoInt);
        return v;
    }
    public var c(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_c():stdgo.Pointer<StdTypes.Int> return this.c;
    function set_c(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.c = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:stdgo.Pointer<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json_t_testnullstring___localname___t_41259.T_testNullString___localname___T_41259((a : stdgo.GoInt), (b : stdgo.GoInt), c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_testStringKind___localname___stringKind_47067 = stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067.T_testStringKind___localname___stringKind_47067;
@:dox(hide) typedef T_testByteKind___localname___byteKind_47617 = stdgo._internal.encoding.json.Json_t_testbytekind___localname___bytekind_47617.T_testByteKind___localname___byteKind_47617;
@:dox(hide) typedef T_testSliceOfCustomByte___localname___Uint8_47988 = stdgo._internal.encoding.json.Json_t_testsliceofcustombyte___localname___uint8_47988.T_testSliceOfCustomByte___localname___Uint8_47988;
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___embed1_54365(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = (v : stdgo.GoInt);
        return v;
    }
    public function new(?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365((q : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___embed2_54390(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = (v : stdgo.GoInt);
        return v;
    }
    public function new(?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390((q : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___embed3_54415(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 {
    public var q(get, set) : haxe.Int64;
    function get_q():haxe.Int64 return this.q;
    function set_q(v:haxe.Int64):haxe.Int64 {
        this.q = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?q:haxe.Int64) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415((q : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S1_54465_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___S1_54465(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>);
        return v;
    }
    public var r(get, set) : StdTypes.Int;
    function get_r():StdTypes.Int return this.r;
    function set_r(v:StdTypes.Int):StdTypes.Int {
        this.r = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?r:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465((_embed1 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>), (r : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S2_54503_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___S2_54503(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>);
        return v;
    }
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503((_embed1 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>), (q : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S3_54541_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___S3_54541(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s3_54541.T_testUnmarshalEmbeddedUnexported___localname___S3_54541) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s3_54541.T_testUnmarshalEmbeddedUnexported___localname___S3_54541 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s3_54541.T_testUnmarshalEmbeddedUnexported___localname___S3_54541 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var r(get, set) : StdTypes.Int;
    function get_r():StdTypes.Int return this.r;
    function set_r(v:StdTypes.Int):StdTypes.Int {
        this.r = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?r:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s3_54541.T_testUnmarshalEmbeddedUnexported___localname___S3_54541(_embed1, (r : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S4_54578_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___S4_54578(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s4_54578.T_testUnmarshalEmbeddedUnexported___localname___S4_54578) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s4_54578.T_testUnmarshalEmbeddedUnexported___localname___S4_54578 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s4_54578.T_testUnmarshalEmbeddedUnexported___localname___S4_54578 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>);
        return v;
    }
    public var _embed2(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed2_54390;
    function get__embed2():T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 return this._embed2;
    function set__embed2(v:T_testUnmarshalEmbeddedUnexported___localname___embed2_54390):T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
        this._embed2 = v;
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:T_testUnmarshalEmbeddedUnexported___localname___embed2_54390) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s4_54578.T_testUnmarshalEmbeddedUnexported___localname___S4_54578((_embed1 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365>), _embed2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S5_54617_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___S5_54617(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617 {
    public var _embed3(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed3_54415;
    function get__embed3():T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 return this._embed3;
    function set__embed3(v:T_testUnmarshalEmbeddedUnexported___localname___embed3_54415):T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 {
        this._embed3 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415>);
        return v;
    }
    public var r(get, set) : StdTypes.Int;
    function get_r():StdTypes.Int return this.r;
    function set_r(v:StdTypes.Int):StdTypes.Int {
        this.r = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_embed3:T_testUnmarshalEmbeddedUnexported___localname___embed3_54415, ?r:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617((_embed3 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415>), (r : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S6_54655_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___S6_54655(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s6_54655.T_testUnmarshalEmbeddedUnexported___localname___S6_54655) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s6_54655.T_testUnmarshalEmbeddedUnexported___localname___S6_54655 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s6_54655.T_testUnmarshalEmbeddedUnexported___localname___S6_54655 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s6_54655.T_testUnmarshalEmbeddedUnexported___localname___S6_54655(_embed1);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S7_54699_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___S7_54699(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s7_54699.T_testUnmarshalEmbeddedUnexported___localname___S7_54699) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s7_54699.T_testUnmarshalEmbeddedUnexported___localname___S7_54699 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s7_54699.T_testUnmarshalEmbeddedUnexported___localname___S7_54699 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var _embed2(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed2_54390;
    function get__embed2():T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 return this._embed2;
    function set__embed2(v:T_testUnmarshalEmbeddedUnexported___localname___embed2_54390):T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
        this._embed2 = v;
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:T_testUnmarshalEmbeddedUnexported___localname___embed2_54390) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s7_54699.T_testUnmarshalEmbeddedUnexported___localname___S7_54699(_embed1, _embed2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S8_54753_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___S8_54753(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var _embed2(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed2_54390;
    function get__embed2():T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 return this._embed2;
    function set__embed2(v:T_testUnmarshalEmbeddedUnexported___localname___embed2_54390):T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
        this._embed2 = v;
        return v;
    }
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:T_testUnmarshalEmbeddedUnexported___localname___embed2_54390, ?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753(_embed1, _embed2, (q : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension) @:dox(hide) abstract T_testUnmarshalEmbeddedUnexported___localname___S9_54837(stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s9_54837.T_testUnmarshalEmbeddedUnexported___localname___S9_54837) from stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s9_54837.T_testUnmarshalEmbeddedUnexported___localname___S9_54837 to stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s9_54837.T_testUnmarshalEmbeddedUnexported___localname___S9_54837 {
    public var _unexportedWithMethods(get, set) : T_unexportedWithMethods;
    function get__unexportedWithMethods():T_unexportedWithMethods return this._unexportedWithMethods;
    function set__unexportedWithMethods(v:T_unexportedWithMethods):T_unexportedWithMethods {
        this._unexportedWithMethods = v;
        return v;
    }
    public function new(?_unexportedWithMethods:T_unexportedWithMethods) this = new stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s9_54837.T_testUnmarshalEmbeddedUnexported___localname___S9_54837(_unexportedWithMethods);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829_static_extension) @:dox(hide) abstract T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829(stdgo._internal.encoding.json.Json_t_testunmarshalrescanliteralmangledunquote___localname___t_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829) from stdgo._internal.encoding.json.Json_t_testunmarshalrescanliteralmangledunquote___localname___t_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829 to stdgo._internal.encoding.json.Json_t_testunmarshalrescanliteralmangledunquote___localname___t_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829 {
    public var f1(get, set) : String;
    function get_f1():String return this.f1;
    function set_f1(v:String):String {
        this.f1 = (v : stdgo.GoString);
        return v;
    }
    public function new(?f1:String) this = new stdgo._internal.encoding.json.Json_t_testunmarshalrescanliteralmangledunquote___localname___t_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829((f1 : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S1_8122_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S1_8122(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8122.T_testAnonymousFields___localname___S1_8122) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8122.T_testAnonymousFields___localname___S1_8122 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8122.T_testAnonymousFields___localname___S1_8122 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8122.T_testAnonymousFields___localname___S1_8122((_x : stdgo.GoInt), (x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S2_8148_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S2_8148(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8148.T_testAnonymousFields___localname___S2_8148) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8148.T_testAnonymousFields___localname___S2_8148 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8148.T_testAnonymousFields___localname___S2_8148 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8148.T_testAnonymousFields___localname___S2_8148((_x : stdgo.GoInt), (x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_8174_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S_8174(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8174.T_testAnonymousFields___localname___S_8174) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8174.T_testAnonymousFields___localname___S_8174 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8174.T_testAnonymousFields___localname___S_8174 {
    public var s1(get, set) : T_testAnonymousFields___localname___S1_8122;
    function get_s1():T_testAnonymousFields___localname___S1_8122 return this.s1;
    function set_s1(v:T_testAnonymousFields___localname___S1_8122):T_testAnonymousFields___localname___S1_8122 {
        this.s1 = v;
        return v;
    }
    public var s2(get, set) : T_testAnonymousFields___localname___S2_8148;
    function get_s2():T_testAnonymousFields___localname___S2_8148 return this.s2;
    function set_s2(v:T_testAnonymousFields___localname___S2_8148):T_testAnonymousFields___localname___S2_8148 {
        this.s2 = v;
        return v;
    }
    public function new(?s1:T_testAnonymousFields___localname___S1_8122, ?s2:T_testAnonymousFields___localname___S2_8148) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8174.T_testAnonymousFields___localname___S_8174(s1, s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S1_8459_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S1_8459(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8459.T_testAnonymousFields___localname___S1_8459) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8459.T_testAnonymousFields___localname___S1_8459 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8459.T_testAnonymousFields___localname___S1_8459 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8459.T_testAnonymousFields___localname___S1_8459((_x : stdgo.GoInt), (x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S2_8485_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S2_8485(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8485.T_testAnonymousFields___localname___S2_8485) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8485.T_testAnonymousFields___localname___S2_8485 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8485.T_testAnonymousFields___localname___S2_8485 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8485.T_testAnonymousFields___localname___S2_8485((_x : stdgo.GoInt), (x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_8511_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S_8511(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8511.T_testAnonymousFields___localname___S_8511) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8511.T_testAnonymousFields___localname___S_8511 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8511.T_testAnonymousFields___localname___S_8511 {
    public var s1(get, set) : T_testAnonymousFields___localname___S1_8459;
    function get_s1():T_testAnonymousFields___localname___S1_8459 return this.s1;
    function set_s1(v:T_testAnonymousFields___localname___S1_8459):T_testAnonymousFields___localname___S1_8459 {
        this.s1 = v;
        return v;
    }
    public var s2(get, set) : T_testAnonymousFields___localname___S2_8485;
    function get_s2():T_testAnonymousFields___localname___S2_8485 return this.s2;
    function set_s2(v:T_testAnonymousFields___localname___S2_8485):T_testAnonymousFields___localname___S2_8485 {
        this.s2 = v;
        return v;
    }
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?s1:T_testAnonymousFields___localname___S1_8459, ?s2:T_testAnonymousFields___localname___S2_8485, ?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8511.T_testAnonymousFields___localname___S_8511(s1, s2, (_x : stdgo.GoInt), (x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_testAnonymousFields___localname___myInt_8782 = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_8782.T_testAnonymousFields___localname___myInt_8782;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_8796_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S_8796(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8796.T_testAnonymousFields___localname___S_8796) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8796.T_testAnonymousFields___localname___S_8796 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8796.T_testAnonymousFields___localname___S_8796 {
    public var _myInt(get, set) : T_testAnonymousFields___localname___myInt_8782;
    function get__myInt():T_testAnonymousFields___localname___myInt_8782 return this._myInt;
    function set__myInt(v:T_testAnonymousFields___localname___myInt_8782):T_testAnonymousFields___localname___myInt_8782 {
        this._myInt = v;
        return v;
    }
    public function new(?_myInt:T_testAnonymousFields___localname___myInt_8782) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8796.T_testAnonymousFields___localname___S_8796(_myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_testAnonymousFields___localname___MyInt_9005 = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9005.T_testAnonymousFields___localname___MyInt_9005;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9019_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S_9019(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9019.T_testAnonymousFields___localname___S_9019) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9019.T_testAnonymousFields___localname___S_9019 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9019.T_testAnonymousFields___localname___S_9019 {
    public var myInt(get, set) : T_testAnonymousFields___localname___MyInt_9005;
    function get_myInt():T_testAnonymousFields___localname___MyInt_9005 return this.myInt;
    function set_myInt(v:T_testAnonymousFields___localname___MyInt_9005):T_testAnonymousFields___localname___MyInt_9005 {
        this.myInt = v;
        return v;
    }
    public function new(?myInt:T_testAnonymousFields___localname___MyInt_9005) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9019.T_testAnonymousFields___localname___S_9019(myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_testAnonymousFields___localname___myInt_9268 = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9268.T_testAnonymousFields___localname___myInt_9268;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9282_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S_9282(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9282.T_testAnonymousFields___localname___S_9282) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9282.T_testAnonymousFields___localname___S_9282 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9282.T_testAnonymousFields___localname___S_9282 {
    public var _myInt(get, set) : stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268>;
    function get__myInt():stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268> return this._myInt;
    function set__myInt(v:stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268>):stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268> {
        this._myInt = v;
        return v;
    }
    public function new(?_myInt:stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268>) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9282.T_testAnonymousFields___localname___S_9282(_myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_testAnonymousFields___localname___MyInt_9550 = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9550.T_testAnonymousFields___localname___MyInt_9550;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9564_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S_9564(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9564.T_testAnonymousFields___localname___S_9564) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9564.T_testAnonymousFields___localname___S_9564 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9564.T_testAnonymousFields___localname___S_9564 {
    public var myInt(get, set) : stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550>;
    function get_myInt():stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550> return this.myInt;
    function set_myInt(v:stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550>):stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550> {
        this.myInt = v;
        return v;
    }
    public function new(?myInt:stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550>) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9564.T_testAnonymousFields___localname___S_9564(myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___s1_9906_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___s1_9906(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906((_x : stdgo.GoInt), (x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S2_9932_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S2_9932(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_9932.T_testAnonymousFields___localname___S2_9932) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_9932.T_testAnonymousFields___localname___S2_9932 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_9932.T_testAnonymousFields___localname___S2_9932 {
    public var _y(get, set) : StdTypes.Int;
    function get__y():StdTypes.Int return this._y;
    function set__y(v:StdTypes.Int):StdTypes.Int {
        this._y = (v : stdgo.GoInt);
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_y:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_9932.T_testAnonymousFields___localname___S2_9932((_y : stdgo.GoInt), (y : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9958_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S_9958(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9958.T_testAnonymousFields___localname___S_9958) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9958.T_testAnonymousFields___localname___S_9958 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9958.T_testAnonymousFields___localname___S_9958 {
    public var _s1(get, set) : T_testAnonymousFields___localname___s1_9906;
    function get__s1():T_testAnonymousFields___localname___s1_9906 return this._s1;
    function set__s1(v:T_testAnonymousFields___localname___s1_9906):T_testAnonymousFields___localname___s1_9906 {
        this._s1 = v;
        return v;
    }
    public var s2(get, set) : T_testAnonymousFields___localname___S2_9932;
    function get_s2():T_testAnonymousFields___localname___S2_9932 return this.s2;
    function set_s2(v:T_testAnonymousFields___localname___S2_9932):T_testAnonymousFields___localname___S2_9932 {
        this.s2 = v;
        return v;
    }
    public function new(?_s1:T_testAnonymousFields___localname___s1_9906, ?s2:T_testAnonymousFields___localname___S2_9932) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9958.T_testAnonymousFields___localname___S_9958(_s1, s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___s1_10314_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___s1_10314(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314((_x : stdgo.GoInt), (x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S2_10340_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S2_10340(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10340.T_testAnonymousFields___localname___S2_10340) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10340.T_testAnonymousFields___localname___S2_10340 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10340.T_testAnonymousFields___localname___S2_10340 {
    public var _y(get, set) : StdTypes.Int;
    function get__y():StdTypes.Int return this._y;
    function set__y(v:StdTypes.Int):StdTypes.Int {
        this._y = (v : stdgo.GoInt);
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_y:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10340.T_testAnonymousFields___localname___S2_10340((_y : stdgo.GoInt), (y : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_10366_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S_10366(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10366.T_testAnonymousFields___localname___S_10366) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10366.T_testAnonymousFields___localname___S_10366 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10366.T_testAnonymousFields___localname___S_10366 {
    public var _s1(get, set) : T_testAnonymousFields___localname___s1_10314;
    function get__s1():T_testAnonymousFields___localname___s1_10314 return this._s1;
    function set__s1(v:T_testAnonymousFields___localname___s1_10314):T_testAnonymousFields___localname___s1_10314 {
        this._s1 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314>);
        return v;
    }
    public var s2(get, set) : T_testAnonymousFields___localname___S2_10340;
    function get_s2():T_testAnonymousFields___localname___S2_10340 return this.s2;
    function set_s2(v:T_testAnonymousFields___localname___S2_10340):T_testAnonymousFields___localname___S2_10340 {
        this.s2 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10340.T_testAnonymousFields___localname___S2_10340>);
        return v;
    }
    public function new(?_s1:T_testAnonymousFields___localname___s1_10314, ?s2:T_testAnonymousFields___localname___S2_10340) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10366.T_testAnonymousFields___localname___S_10366((_s1 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314>), (s2 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10340.T_testAnonymousFields___localname___S2_10340>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_testAnonymousFields___localname___MyInt1_10664 = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint1_10664.T_testAnonymousFields___localname___MyInt1_10664;
@:dox(hide) typedef T_testAnonymousFields___localname___MyInt2_10679 = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint2_10679.T_testAnonymousFields___localname___MyInt2_10679;
@:dox(hide) typedef T_testAnonymousFields___localname___myInt_10694 = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_10694.T_testAnonymousFields___localname___myInt_10694;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___s2_10709_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___s2_10709(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709 {
    public var myInt2(get, set) : T_testAnonymousFields___localname___MyInt2_10679;
    function get_myInt2():T_testAnonymousFields___localname___MyInt2_10679 return this.myInt2;
    function set_myInt2(v:T_testAnonymousFields___localname___MyInt2_10679):T_testAnonymousFields___localname___MyInt2_10679 {
        this.myInt2 = v;
        return v;
    }
    public var _myInt(get, set) : T_testAnonymousFields___localname___myInt_10694;
    function get__myInt():T_testAnonymousFields___localname___myInt_10694 return this._myInt;
    function set__myInt(v:T_testAnonymousFields___localname___myInt_10694):T_testAnonymousFields___localname___myInt_10694 {
        this._myInt = v;
        return v;
    }
    public function new(?myInt2:T_testAnonymousFields___localname___MyInt2_10679, ?_myInt:T_testAnonymousFields___localname___myInt_10694) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709(myInt2, _myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___s1_10758_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___s1_10758(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758 {
    public var myInt1(get, set) : T_testAnonymousFields___localname___MyInt1_10664;
    function get_myInt1():T_testAnonymousFields___localname___MyInt1_10664 return this.myInt1;
    function set_myInt1(v:T_testAnonymousFields___localname___MyInt1_10664):T_testAnonymousFields___localname___MyInt1_10664 {
        this.myInt1 = v;
        return v;
    }
    public var _myInt(get, set) : T_testAnonymousFields___localname___myInt_10694;
    function get__myInt():T_testAnonymousFields___localname___myInt_10694 return this._myInt;
    function set__myInt(v:T_testAnonymousFields___localname___myInt_10694):T_testAnonymousFields___localname___myInt_10694 {
        this._myInt = v;
        return v;
    }
    public var _s2(get, set) : T_testAnonymousFields___localname___s2_10709;
    function get__s2():T_testAnonymousFields___localname___s2_10709 return this._s2;
    function set__s2(v:T_testAnonymousFields___localname___s2_10709):T_testAnonymousFields___localname___s2_10709 {
        this._s2 = v;
        return v;
    }
    public function new(?myInt1:T_testAnonymousFields___localname___MyInt1_10664, ?_myInt:T_testAnonymousFields___localname___myInt_10694, ?_s2:T_testAnonymousFields___localname___s2_10709) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758(myInt1, _myInt, _s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_10811_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S_10811(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10811.T_testAnonymousFields___localname___S_10811) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10811.T_testAnonymousFields___localname___S_10811 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10811.T_testAnonymousFields___localname___S_10811 {
    public var _s1(get, set) : T_testAnonymousFields___localname___s1_10758;
    function get__s1():T_testAnonymousFields___localname___s1_10758 return this._s1;
    function set__s1(v:T_testAnonymousFields___localname___s1_10758):T_testAnonymousFields___localname___s1_10758 {
        this._s1 = v;
        return v;
    }
    public var _myInt(get, set) : T_testAnonymousFields___localname___myInt_10694;
    function get__myInt():T_testAnonymousFields___localname___myInt_10694 return this._myInt;
    function set__myInt(v:T_testAnonymousFields___localname___myInt_10694):T_testAnonymousFields___localname___myInt_10694 {
        this._myInt = v;
        return v;
    }
    public function new(?_s1:T_testAnonymousFields___localname___s1_10758, ?_myInt:T_testAnonymousFields___localname___myInt_10694) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10811.T_testAnonymousFields___localname___S_10811(_s1, _myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S2_11195_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S2_11195(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_11195.T_testAnonymousFields___localname___S2_11195) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_11195.T_testAnonymousFields___localname___S2_11195 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_11195.T_testAnonymousFields___localname___S2_11195 {
    public var field(get, set) : String;
    function get_field():String return this.field;
    function set_field(v:String):String {
        this.field = (v : stdgo.GoString);
        return v;
    }
    public function new(?field:String) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_11195.T_testAnonymousFields___localname___S2_11195((field : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_11225_static_extension) @:dox(hide) abstract T_testAnonymousFields___localname___S_11225(stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_11225.T_testAnonymousFields___localname___S_11225) from stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_11225.T_testAnonymousFields___localname___S_11225 to stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_11225.T_testAnonymousFields___localname___S_11225 {
    public var s2(get, set) : T_testAnonymousFields___localname___S2_11195;
    function get_s2():T_testAnonymousFields___localname___S2_11195 return this.s2;
    function set_s2(v:T_testAnonymousFields___localname___S2_11195):T_testAnonymousFields___localname___S2_11195 {
        this.s2 = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_11195.T_testAnonymousFields___localname___S2_11195>);
        return v;
    }
    public function new(?s2:T_testAnonymousFields___localname___S2_11195) this = new stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_11225.T_testAnonymousFields___localname___S_11225((s2 : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_11195.T_testAnonymousFields___localname___S2_11195>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testIssue10281___localname___Foo_15026_static_extension) @:dox(hide) abstract T_testIssue10281___localname___Foo_15026(stdgo._internal.encoding.json.Json_t_testissue10281___localname___foo_15026.T_testIssue10281___localname___Foo_15026) from stdgo._internal.encoding.json.Json_t_testissue10281___localname___foo_15026.T_testIssue10281___localname___Foo_15026 to stdgo._internal.encoding.json.Json_t_testissue10281___localname___foo_15026.T_testIssue10281___localname___Foo_15026 {
    public var n(get, set) : Number;
    function get_n():Number return this.n;
    function set_n(v:Number):Number {
        this.n = v;
        return v;
    }
    public function new(?n:Number) this = new stdgo._internal.encoding.json.Json_t_testissue10281___localname___foo_15026.T_testIssue10281___localname___Foo_15026(n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460_static_extension) @:dox(hide) abstract T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460(stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460) from stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 to stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460;
    function get_next():T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 return this.next;
    function set_next(v:T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460):T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>);
        return v;
    }
    public function new(?name:String, ?next:T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460) this = new stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460((name : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661_static_extension) @:dox(hide) abstract T_testMarshalErrorAndReuseEncodeState___localname___Data_15661(stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661) from stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 to stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:String, ?i:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661((a : stdgo.GoString), (i : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testEncodePointerString___localname___stringPointer_16452_static_extension) @:dox(hide) abstract T_testEncodePointerString___localname___stringPointer_16452(stdgo._internal.encoding.json.Json_t_testencodepointerstring___localname___stringpointer_16452.T_testEncodePointerString___localname___stringPointer_16452) from stdgo._internal.encoding.json.Json_t_testencodepointerstring___localname___stringpointer_16452.T_testEncodePointerString___localname___stringPointer_16452 to stdgo._internal.encoding.json.Json_t_testencodepointerstring___localname___stringpointer_16452.T_testEncodePointerString___localname___stringPointer_16452 {
    public var n(get, set) : stdgo.Pointer<haxe.Int64>;
    function get_n():stdgo.Pointer<haxe.Int64> return this.n;
    function set_n(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        this.n = v;
        return v;
    }
    public function new(?n:stdgo.Pointer<haxe.Int64>) this = new stdgo._internal.encoding.json.Json_t_testencodepointerstring___localname___stringpointer_16452.T_testEncodePointerString___localname___stringPointer_16452(n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testMarshalRawMessageValue___localname___T1_23519_static_extension) @:dox(hide) abstract T_testMarshalRawMessageValue___localname___T1_23519(stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519) from stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519 to stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519 {
    public var m(get, set) : RawMessage;
    function get_m():RawMessage return this.m;
    function set_m(v:RawMessage):RawMessage {
        this.m = v;
        return v;
    }
    public function new(?m:RawMessage) this = new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testMarshalRawMessageValue___localname___T2_23573_static_extension) @:dox(hide) abstract T_testMarshalRawMessageValue___localname___T2_23573(stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573) from stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573 to stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573 {
    public var m(get, set) : RawMessage;
    function get_m():RawMessage return this.m;
    function set_m(v:RawMessage):RawMessage {
        this.m = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
        return v;
    }
    public function new(?m:RawMessage) this = new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573((m : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487_static_extension) @:dox(hide) abstract T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487(stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487) from stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 to stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var next(get, set) : T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487;
    function get_next():T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 return this.next;
    function set_next(v:T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487):T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 {
        this.next = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487>);
        return v;
    }
    public function new(?name:String, ?next:T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487) this = new stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487((name : stdgo.GoString), (next : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733_static_extension) @:dox(hide) abstract T_testEncoderErrorAndReuseEncodeState___localname___Data_1733(stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733) from stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733 to stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = (v : stdgo.GoString);
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:String, ?i:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733((a : stdgo.GoString), (i : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_codeResponsePointer = stdgo._internal.encoding.json.Json_t_coderesponsepointer.T_codeResponsePointer;
@:dox(hide) class T_codeResponse_static_extension {

}
@:dox(hide) typedef T_codeNodePointer = stdgo._internal.encoding.json.Json_t_codenodepointer.T_codeNodePointer;
@:dox(hide) class T_codeNode_static_extension {

}
typedef UnmarshalTypeErrorPointer = stdgo._internal.encoding.json.Json_unmarshaltypeerrorpointer.UnmarshalTypeErrorPointer;
class UnmarshalTypeError_static_extension {
    static public function error(_e:UnmarshalTypeError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>);
        return stdgo._internal.encoding.json.Json_unmarshaltypeerror_static_extension.UnmarshalTypeError_static_extension.error(_e);
    }
}
typedef UnmarshalFieldErrorPointer = stdgo._internal.encoding.json.Json_unmarshalfielderrorpointer.UnmarshalFieldErrorPointer;
class UnmarshalFieldError_static_extension {
    static public function error(_e:UnmarshalFieldError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshalfielderror.UnmarshalFieldError>);
        return stdgo._internal.encoding.json.Json_unmarshalfielderror_static_extension.UnmarshalFieldError_static_extension.error(_e);
    }
}
typedef InvalidUnmarshalErrorPointer = stdgo._internal.encoding.json.Json_invalidunmarshalerrorpointer.InvalidUnmarshalErrorPointer;
class InvalidUnmarshalError_static_extension {
    static public function error(_e:InvalidUnmarshalError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError>);
        return stdgo._internal.encoding.json.Json_invalidunmarshalerror_static_extension.InvalidUnmarshalError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_errorContextPointer = stdgo._internal.encoding.json.Json_t_errorcontextpointer.T_errorContextPointer;
@:dox(hide) class T_errorContext_static_extension {

}
@:dox(hide) typedef T_decodeStatePointer = stdgo._internal.encoding.json.Json_t_decodestatepointer.T_decodeStatePointer;
@:dox(hide) class T_decodeState_static_extension {
    static public function _literalInterface(_d:T_decodeState):stdgo.AnyInterface {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        return stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._literalInterface(_d);
    }
    static public function _objectInterface(_d:T_decodeState):Map<String, stdgo.AnyInterface> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        return {
            final __obj__:Map<String, stdgo.AnyInterface> = [];
            for (key => value in stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._objectInterface(_d)) {
                __obj__[key] = value;
            };
            __obj__;
        };
    }
    static public function _arrayInterface(_d:T_decodeState):Array<stdgo.AnyInterface> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        return [for (i in stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._arrayInterface(_d)) i];
    }
    static public function _valueInterface(_d:T_decodeState):stdgo.AnyInterface {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        return stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._valueInterface(_d);
    }
    static public function _literalStore(_d:T_decodeState, _item:Array<std.UInt>, _v:stdgo._internal.reflect.Reflect_value.Value, _fromQuoted:Bool):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        final _item = ([for (i in _item) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._literalStore(_d, _item, _v, _fromQuoted);
    }
    static public function _convertNumber(_d:T_decodeState, _s:String):stdgo.Tuple<stdgo.AnyInterface, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._convertNumber(_d, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _object(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        return stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._object(_d, _v);
    }
    static public function _array(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        return stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._array(_d, _v);
    }
    static public function _valueQuoted(_d:T_decodeState):stdgo.AnyInterface {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        return stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._valueQuoted(_d);
    }
    static public function _value(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect_value.Value):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        return stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._value(_d, _v);
    }
    static public function _rescanLiteral(_d:T_decodeState):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._rescanLiteral(_d);
    }
    static public function _scanWhile(_d:T_decodeState, _op:StdTypes.Int):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        final _op = (_op : stdgo.GoInt);
        stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._scanWhile(_d, _op);
    }
    static public function _scanNext(_d:T_decodeState):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._scanNext(_d);
    }
    static public function _skip(_d:T_decodeState):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._skip(_d);
    }
    static public function _addErrorContext(_d:T_decodeState, _err:stdgo.Error):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._addErrorContext(_d, _err);
    }
    static public function _saveError(_d:T_decodeState, _err:stdgo.Error):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._saveError(_d, _err);
    }
    static public function _init(_d:T_decodeState, _data:Array<std.UInt>):T_decodeState {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._init(_d, _data);
    }
    static public function _readIndex(_d:T_decodeState):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        return stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._readIndex(_d);
    }
    static public function _unmarshal(_d:T_decodeState, _v:stdgo.AnyInterface):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_t_decodestate.T_decodeState>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension._unmarshal(_d, _v);
    }
}
@:dox(hide) typedef T_unquotedValuePointer = stdgo._internal.encoding.json.Json_t_unquotedvaluepointer.T_unquotedValuePointer;
@:dox(hide) class T_unquotedValue_static_extension {

}
@:dox(hide) typedef T_Pointer = stdgo._internal.encoding.json.Json_t_pointer.T_Pointer;
@:dox(hide) class T__static_extension {

}
typedef UPointer = stdgo._internal.encoding.json.Json_upointer.UPointer;
class U_static_extension {

}
typedef VPointer = stdgo._internal.encoding.json.Json_vpointer.VPointer;
class V_static_extension {

}
typedef VOuterPointer = stdgo._internal.encoding.json.Json_vouterpointer.VOuterPointer;
class VOuter_static_extension {

}
typedef WPointer = stdgo._internal.encoding.json.Json_wpointer.WPointer;
class W_static_extension {

}
typedef PPointer = stdgo._internal.encoding.json.Json_ppointer.PPointer;
class P_static_extension {

}
typedef PPPointer = stdgo._internal.encoding.json.Json_pppointer.PPPointer;
class PP_static_extension {

}
@:dox(hide) typedef T_txPointer = stdgo._internal.encoding.json.Json_t_txpointer.T_txPointer;
@:dox(hide) class T_tx_static_extension {

}
@:dox(hide) typedef T_unmarshalerPointer = stdgo._internal.encoding.json.Json_t_unmarshalerpointer.T_unmarshalerPointer;
@:dox(hide) class T_unmarshaler_static_extension {
    static public function unmarshalJSON(_u:T_unmarshaler, _b:Array<std.UInt>):stdgo.Error {
        final _u = (_u : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_unmarshaler_static_extension.T_unmarshaler_static_extension.unmarshalJSON(_u, _b);
    }
}
@:dox(hide) typedef T_ustructPointer = stdgo._internal.encoding.json.Json_t_ustructpointer.T_ustructPointer;
@:dox(hide) class T_ustruct_static_extension {

}
@:dox(hide) typedef T_unmarshalerTextPointer = stdgo._internal.encoding.json.Json_t_unmarshalertextpointer.T_unmarshalerTextPointer;
@:dox(hide) class T_unmarshalerText_static_extension {
    static public function unmarshalText(_u:T_unmarshalerText, _b:Array<std.UInt>):stdgo.Error {
        final _u = (_u : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unmarshalertext.T_unmarshalerText>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_unmarshalertext_static_extension.T_unmarshalerText_static_extension.unmarshalText(_u, _b);
    }
    static public function marshalText(_u:T_unmarshalerText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_unmarshalertext_static_extension.T_unmarshalerText_static_extension.marshalText(_u);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_ustructTextPointer = stdgo._internal.encoding.json.Json_t_ustructtextpointer.T_ustructTextPointer;
@:dox(hide) class T_ustructText_static_extension {

}
typedef PointPointer = stdgo._internal.encoding.json.Json_pointpointer.PointPointer;
class Point_static_extension {

}
typedef TopPointer = stdgo._internal.encoding.json.Json_toppointer.TopPointer;
class Top_static_extension {
    public static function sub(__self__:stdgo._internal.encoding.json.Json_top.Top, _0:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point {
        return stdgo._internal.encoding.json.Json_top_static_extension.Top_static_extension.sub(__self__, _0);
    }
    public static function string(__self__:stdgo._internal.encoding.json.Json_top.Top):String {
        return stdgo._internal.encoding.json.Json_top_static_extension.Top_static_extension.string(__self__);
    }
    public static function mul(__self__:stdgo._internal.encoding.json.Json_top.Top, _0:StdTypes.Int):stdgo._internal.image.Image_point.Point {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.encoding.json.Json_top_static_extension.Top_static_extension.mul(__self__, _0);
    }
    public static function mod(__self__:stdgo._internal.encoding.json.Json_top.Top, _0:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_point.Point {
        return stdgo._internal.encoding.json.Json_top_static_extension.Top_static_extension.mod(__self__, _0);
    }
    public static function in_(__self__:stdgo._internal.encoding.json.Json_top.Top, _0:stdgo._internal.image.Image_rectangle.Rectangle):Bool {
        return stdgo._internal.encoding.json.Json_top_static_extension.Top_static_extension.in_(__self__, _0);
    }
    public static function eq(__self__:stdgo._internal.encoding.json.Json_top.Top, _0:stdgo._internal.image.Image_point.Point):Bool {
        return stdgo._internal.encoding.json.Json_top_static_extension.Top_static_extension.eq(__self__, _0);
    }
    public static function div(__self__:stdgo._internal.encoding.json.Json_top.Top, _0:StdTypes.Int):stdgo._internal.image.Image_point.Point {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.encoding.json.Json_top_static_extension.Top_static_extension.div(__self__, _0);
    }
    public static function add(__self__:stdgo._internal.encoding.json.Json_top.Top, _0:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point {
        return stdgo._internal.encoding.json.Json_top_static_extension.Top_static_extension.add(__self__, _0);
    }
}
typedef Embed0Pointer = stdgo._internal.encoding.json.Json_embed0pointer.Embed0Pointer;
class Embed0_static_extension {

}
typedef Embed0aPointer = stdgo._internal.encoding.json.Json_embed0apointer.Embed0aPointer;
class Embed0a_static_extension {

}
typedef Embed0pPointer = stdgo._internal.encoding.json.Json_embed0ppointer.Embed0pPointer;
class Embed0p_static_extension {
    public static function sub(__self__:stdgo._internal.encoding.json.Json_embed0p.Embed0p, _0:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point {
        return stdgo._internal.encoding.json.Json_embed0p_static_extension.Embed0p_static_extension.sub(__self__, _0);
    }
    public static function string(__self__:stdgo._internal.encoding.json.Json_embed0p.Embed0p):String {
        return stdgo._internal.encoding.json.Json_embed0p_static_extension.Embed0p_static_extension.string(__self__);
    }
    public static function mul(__self__:stdgo._internal.encoding.json.Json_embed0p.Embed0p, _0:StdTypes.Int):stdgo._internal.image.Image_point.Point {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.encoding.json.Json_embed0p_static_extension.Embed0p_static_extension.mul(__self__, _0);
    }
    public static function mod(__self__:stdgo._internal.encoding.json.Json_embed0p.Embed0p, _0:stdgo._internal.image.Image_rectangle.Rectangle):stdgo._internal.image.Image_point.Point {
        return stdgo._internal.encoding.json.Json_embed0p_static_extension.Embed0p_static_extension.mod(__self__, _0);
    }
    public static function in_(__self__:stdgo._internal.encoding.json.Json_embed0p.Embed0p, _0:stdgo._internal.image.Image_rectangle.Rectangle):Bool {
        return stdgo._internal.encoding.json.Json_embed0p_static_extension.Embed0p_static_extension.in_(__self__, _0);
    }
    public static function eq(__self__:stdgo._internal.encoding.json.Json_embed0p.Embed0p, _0:stdgo._internal.image.Image_point.Point):Bool {
        return stdgo._internal.encoding.json.Json_embed0p_static_extension.Embed0p_static_extension.eq(__self__, _0);
    }
    public static function div(__self__:stdgo._internal.encoding.json.Json_embed0p.Embed0p, _0:StdTypes.Int):stdgo._internal.image.Image_point.Point {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.encoding.json.Json_embed0p_static_extension.Embed0p_static_extension.div(__self__, _0);
    }
    public static function add(__self__:stdgo._internal.encoding.json.Json_embed0p.Embed0p, _0:stdgo._internal.image.Image_point.Point):stdgo._internal.image.Image_point.Point {
        return stdgo._internal.encoding.json.Json_embed0p_static_extension.Embed0p_static_extension.add(__self__, _0);
    }
}
typedef Embed0qPointer = stdgo._internal.encoding.json.Json_embed0qpointer.Embed0qPointer;
class Embed0q_static_extension {

}
@:dox(hide) typedef T_embedPointer = stdgo._internal.encoding.json.Json_t_embedpointer.T_embedPointer;
@:dox(hide) class T_embed_static_extension {

}
typedef LoopPointer = stdgo._internal.encoding.json.Json_looppointer.LoopPointer;
class Loop_static_extension {

}
typedef S5Pointer = stdgo._internal.encoding.json.Json_s5pointer.S5Pointer;
class S5_static_extension {

}
typedef S6Pointer = stdgo._internal.encoding.json.Json_s6pointer.S6Pointer;
class S6_static_extension {

}
typedef S8Pointer = stdgo._internal.encoding.json.Json_s8pointer.S8Pointer;
class S8_static_extension {

}
typedef S9Pointer = stdgo._internal.encoding.json.Json_s9pointer.S9Pointer;
class S9_static_extension {

}
typedef S10Pointer = stdgo._internal.encoding.json.Json_s10pointer.S10Pointer;
class S10_static_extension {

}
typedef S11Pointer = stdgo._internal.encoding.json.Json_s11pointer.S11Pointer;
class S11_static_extension {

}
typedef S12Pointer = stdgo._internal.encoding.json.Json_s12pointer.S12Pointer;
class S12_static_extension {

}
typedef S13Pointer = stdgo._internal.encoding.json.Json_s13pointer.S13Pointer;
class S13_static_extension {

}
typedef AmbigPointer = stdgo._internal.encoding.json.Json_ambigpointer.AmbigPointer;
class Ambig_static_extension {

}
typedef XYZPointer = stdgo._internal.encoding.json.Json_xyzpointer.XYZPointer;
class XYZ_static_extension {

}
@:dox(hide) typedef T_unexportedWithMethodsPointer = stdgo._internal.encoding.json.Json_t_unexportedwithmethodspointer.T_unexportedWithMethodsPointer;
@:dox(hide) class T_unexportedWithMethods_static_extension {
    static public function f(_:T_unexportedWithMethods):Void {
        stdgo._internal.encoding.json.Json_t_unexportedwithmethods_static_extension.T_unexportedWithMethods_static_extension.f(_);
    }
}
@:dox(hide) typedef T_mapStringToStringDataPointer = stdgo._internal.encoding.json.Json_t_mapstringtostringdatapointer.T_mapStringToStringDataPointer;
@:dox(hide) class T_mapStringToStringData_static_extension {

}
@:dox(hide) typedef T_unmarshalTestPointer = stdgo._internal.encoding.json.Json_t_unmarshaltestpointer.T_unmarshalTestPointer;
@:dox(hide) class T_unmarshalTest_static_extension {

}
typedef BPointer = stdgo._internal.encoding.json.Json_bpointer.BPointer;
class B_static_extension {

}
typedef DoublePtrPointer = stdgo._internal.encoding.json.Json_doubleptrpointer.DoublePtrPointer;
class DoublePtr_static_extension {

}
typedef XintPointer = stdgo._internal.encoding.json.Json_xintpointer.XintPointer;
class Xint_static_extension {

}
typedef WrongStringPointer = stdgo._internal.encoding.json.Json_wrongstringpointer.WrongStringPointer;
class WrongString_static_extension {

}
@:dox(hide) typedef T_wrongStringTestPointer = stdgo._internal.encoding.json.Json_t_wrongstringtestpointer.T_wrongStringTestPointer;
@:dox(hide) class T_wrongStringTest_static_extension {

}
typedef AllPointer = stdgo._internal.encoding.json.Json_allpointer.AllPointer;
class All_static_extension {

}
typedef SmallPointer = stdgo._internal.encoding.json.Json_smallpointer.SmallPointer;
class Small_static_extension {

}
typedef NullTestPointer = stdgo._internal.encoding.json.Json_nulltestpointer.NullTestPointer;
class NullTest_static_extension {

}
typedef MustNotUnmarshalJSONPointer = stdgo._internal.encoding.json.Json_mustnotunmarshaljsonpointer.MustNotUnmarshalJSONPointer;
class MustNotUnmarshalJSON_static_extension {
    static public function unmarshalJSON(_x:MustNotUnmarshalJSON, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_mustnotunmarshaljson_static_extension.MustNotUnmarshalJSON_static_extension.unmarshalJSON(_x, _data);
    }
}
typedef MustNotUnmarshalTextPointer = stdgo._internal.encoding.json.Json_mustnotunmarshaltextpointer.MustNotUnmarshalTextPointer;
class MustNotUnmarshalText_static_extension {
    static public function unmarshalText(_x:MustNotUnmarshalText, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_mustnotunmarshaltext_static_extension.MustNotUnmarshalText_static_extension.unmarshalText(_x, _text);
    }
}
@:dox(hide) typedef T_unexportedFieldsPointer = stdgo._internal.encoding.json.Json_t_unexportedfieldspointer.T_unexportedFieldsPointer;
@:dox(hide) class T_unexportedFields_static_extension {

}
@:dox(hide) typedef T_unmarshalPanicPointer = stdgo._internal.encoding.json.Json_t_unmarshalpanicpointer.T_unmarshalPanicPointer;
@:dox(hide) class T_unmarshalPanic_static_extension {
    static public function unmarshalJSON(_:T_unmarshalPanic, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_unmarshalpanic_static_extension.T_unmarshalPanic_static_extension.unmarshalJSON(_, _0);
    }
}
typedef UnsupportedTypeErrorPointer = stdgo._internal.encoding.json.Json_unsupportedtypeerrorpointer.UnsupportedTypeErrorPointer;
class UnsupportedTypeError_static_extension {
    static public function error(_e:UnsupportedTypeError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedtypeerror.UnsupportedTypeError>);
        return stdgo._internal.encoding.json.Json_unsupportedtypeerror_static_extension.UnsupportedTypeError_static_extension.error(_e);
    }
}
typedef UnsupportedValueErrorPointer = stdgo._internal.encoding.json.Json_unsupportedvalueerrorpointer.UnsupportedValueErrorPointer;
class UnsupportedValueError_static_extension {
    static public function error(_e:UnsupportedValueError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_unsupportedvalueerror.UnsupportedValueError>);
        return stdgo._internal.encoding.json.Json_unsupportedvalueerror_static_extension.UnsupportedValueError_static_extension.error(_e);
    }
}
typedef InvalidUTF8ErrorPointer = stdgo._internal.encoding.json.Json_invalidutf8errorpointer.InvalidUTF8ErrorPointer;
class InvalidUTF8Error_static_extension {
    static public function error(_e:InvalidUTF8Error):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_invalidutf8error.InvalidUTF8Error>);
        return stdgo._internal.encoding.json.Json_invalidutf8error_static_extension.InvalidUTF8Error_static_extension.error(_e);
    }
}
typedef MarshalerErrorPointer = stdgo._internal.encoding.json.Json_marshalererrorpointer.MarshalerErrorPointer;
class MarshalerError_static_extension {
    static public function unwrap(_e:MarshalerError):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>);
        return stdgo._internal.encoding.json.Json_marshalererror_static_extension.MarshalerError_static_extension.unwrap(_e);
    }
    static public function error(_e:MarshalerError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>);
        return stdgo._internal.encoding.json.Json_marshalererror_static_extension.MarshalerError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_encodeStatePointer = stdgo._internal.encoding.json.Json_t_encodestatepointer.T_encodeStatePointer;
@:dox(hide) class T_encodeState_static_extension {
    static public function _reflectValue(_e:T_encodeState, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:T_encOpts):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
        stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension._reflectValue(_e, _v, _opts);
    }
    static public function _error(_e:T_encodeState, _err:stdgo.Error):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension._error(_e, _err);
    }
    static public function _marshal(_e:T_encodeState, _v:stdgo.AnyInterface, _opts:T_encOpts):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension._marshal(_e, _v, _opts);
    }
    public static function _tryGrowByReslice(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, Bool> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension._tryGrowByReslice(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readSlice(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension._readSlice(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _grow(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:StdTypes.Int):StdTypes.Int {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension._grow(__self__, _0);
    }
    public static function _empty(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):Bool {
        return stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension._empty(__self__);
    }
    public static function writeTo(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.writeTo(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeString(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.writeString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.writeRune(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:std.UInt):stdgo.Error {
        final _0 = (_0 : stdgo.GoUInt8);
        return stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.writeByte(__self__, _0);
    }
    public static function write(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.Error {
        return stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.unreadRune(__self__);
    }
    public static function unreadByte(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.Error {
        return stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.unreadByte(__self__);
    }
    public static function truncate(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt);
        stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.truncate(__self__, _0);
    }
    public static function string(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):String {
        return stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.string(__self__);
    }
    public static function reset(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):Void {
        stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.reset(__self__);
    }
    public static function readString(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.readString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readRune(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.readRune(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readFrom(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readBytes(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.readBytes(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readByte(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.readByte(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function next(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:StdTypes.Int):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoInt);
        return [for (i in stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.next(__self__, _0)) i];
    }
    public static function len(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.len(__self__);
    }
    public static function grow(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt);
        stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.grow(__self__, _0);
    }
    public static function cap(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.cap(__self__);
    }
    public static function bytes(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.bytes(__self__)) i];
    }
    public static function availableBuffer(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_t_encodestate_static_extension.T_encodeState_static_extension.available(__self__);
    }
}
@:dox(hide) typedef T_jsonErrorPointer = stdgo._internal.encoding.json.Json_t_jsonerrorpointer.T_jsonErrorPointer;
@:dox(hide) class T_jsonError_static_extension {
    public static function error(__self__:stdgo._internal.encoding.json.Json_t_jsonerror.T_jsonError):String {
        return stdgo._internal.encoding.json.Json_t_jsonerror_static_extension.T_jsonError_static_extension.error(__self__);
    }
}
@:dox(hide) typedef T_encOptsPointer = stdgo._internal.encoding.json.Json_t_encoptspointer.T_encOptsPointer;
@:dox(hide) class T_encOpts_static_extension {

}
@:dox(hide) typedef T_structEncoderPointer = stdgo._internal.encoding.json.Json_t_structencoderpointer.T_structEncoderPointer;
@:dox(hide) class T_structEncoder_static_extension {
    static public function _encode(_se:T_structEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:T_encOpts):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
        stdgo._internal.encoding.json.Json_t_structencoder_static_extension.T_structEncoder_static_extension._encode(_se, _e, _v, _opts);
    }
}
@:dox(hide) typedef T_structFieldsPointer = stdgo._internal.encoding.json.Json_t_structfieldspointer.T_structFieldsPointer;
@:dox(hide) class T_structFields_static_extension {

}
@:dox(hide) typedef T_mapEncoderPointer = stdgo._internal.encoding.json.Json_t_mapencoderpointer.T_mapEncoderPointer;
@:dox(hide) class T_mapEncoder_static_extension {
    static public function _encode(_me:T_mapEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:T_encOpts):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
        stdgo._internal.encoding.json.Json_t_mapencoder_static_extension.T_mapEncoder_static_extension._encode(_me, _e, _v, _opts);
    }
}
@:dox(hide) typedef T_sliceEncoderPointer = stdgo._internal.encoding.json.Json_t_sliceencoderpointer.T_sliceEncoderPointer;
@:dox(hide) class T_sliceEncoder_static_extension {
    static public function _encode(_se:T_sliceEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:T_encOpts):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
        stdgo._internal.encoding.json.Json_t_sliceencoder_static_extension.T_sliceEncoder_static_extension._encode(_se, _e, _v, _opts);
    }
}
@:dox(hide) typedef T_arrayEncoderPointer = stdgo._internal.encoding.json.Json_t_arrayencoderpointer.T_arrayEncoderPointer;
@:dox(hide) class T_arrayEncoder_static_extension {
    static public function _encode(_ae:T_arrayEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:T_encOpts):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
        stdgo._internal.encoding.json.Json_t_arrayencoder_static_extension.T_arrayEncoder_static_extension._encode(_ae, _e, _v, _opts);
    }
}
@:dox(hide) typedef T_ptrEncoderPointer = stdgo._internal.encoding.json.Json_t_ptrencoderpointer.T_ptrEncoderPointer;
@:dox(hide) class T_ptrEncoder_static_extension {
    static public function _encode(_pe:T_ptrEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:T_encOpts):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
        stdgo._internal.encoding.json.Json_t_ptrencoder_static_extension.T_ptrEncoder_static_extension._encode(_pe, _e, _v, _opts);
    }
}
@:dox(hide) typedef T_condAddrEncoderPointer = stdgo._internal.encoding.json.Json_t_condaddrencoderpointer.T_condAddrEncoderPointer;
@:dox(hide) class T_condAddrEncoder_static_extension {
    static public function _encode(_ce:T_condAddrEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:T_encOpts):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
        stdgo._internal.encoding.json.Json_t_condaddrencoder_static_extension.T_condAddrEncoder_static_extension._encode(_ce, _e, _v, _opts);
    }
}
@:dox(hide) typedef T_reflectWithStringPointer = stdgo._internal.encoding.json.Json_t_reflectwithstringpointer.T_reflectWithStringPointer;
@:dox(hide) class T_reflectWithString_static_extension {
    static public function _resolve(_w:T_reflectWithString):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.encoding.json.Json_t_reflectwithstring.T_reflectWithString>);
        return stdgo._internal.encoding.json.Json_t_reflectwithstring_static_extension.T_reflectWithString_static_extension._resolve(_w);
    }
}
@:dox(hide) typedef T_fieldPointer = stdgo._internal.encoding.json.Json_t_fieldpointer.T_fieldPointer;
@:dox(hide) class T_field_static_extension {

}
typedef OptionalsPointer = stdgo._internal.encoding.json.Json_optionalspointer.OptionalsPointer;
class Optionals_static_extension {

}
typedef StringTagPointer = stdgo._internal.encoding.json.Json_stringtagpointer.StringTagPointer;
class StringTag_static_extension {

}
typedef SamePointerNoCyclePointer = stdgo._internal.encoding.json.Json_samepointernocyclepointer.SamePointerNoCyclePointer;
class SamePointerNoCycle_static_extension {

}
typedef PointerCyclePointer = stdgo._internal.encoding.json.Json_pointercyclepointer.PointerCyclePointer;
class PointerCycle_static_extension {

}
typedef PointerCycleIndirectPointer = stdgo._internal.encoding.json.Json_pointercycleindirectpointer.PointerCycleIndirectPointer;
class PointerCycleIndirect_static_extension {

}
typedef BugAPointer = stdgo._internal.encoding.json.Json_bugapointer.BugAPointer;
class BugA_static_extension {

}
typedef BugBPointer = stdgo._internal.encoding.json.Json_bugbpointer.BugBPointer;
class BugB_static_extension {

}
typedef BugCPointer = stdgo._internal.encoding.json.Json_bugcpointer.BugCPointer;
class BugC_static_extension {

}
typedef BugXPointer = stdgo._internal.encoding.json.Json_bugxpointer.BugXPointer;
class BugX_static_extension {

}
typedef BugDPointer = stdgo._internal.encoding.json.Json_bugdpointer.BugDPointer;
class BugD_static_extension {

}
typedef BugYPointer = stdgo._internal.encoding.json.Json_bugypointer.BugYPointer;
class BugY_static_extension {

}
typedef BugZPointer = stdgo._internal.encoding.json.Json_bugzpointer.BugZPointer;
class BugZ_static_extension {

}
@:dox(hide) typedef T_marshalPanicPointer = stdgo._internal.encoding.json.Json_t_marshalpanicpointer.T_marshalPanicPointer;
@:dox(hide) class T_marshalPanic_static_extension {
    static public function marshalJSON(_:T_marshalPanic):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_marshalpanic_static_extension.T_marshalPanic_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef SyntaxErrorPointer = stdgo._internal.encoding.json.Json_syntaxerrorpointer.SyntaxErrorPointer;
class SyntaxError_static_extension {
    static public function error(_e:SyntaxError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>);
        return stdgo._internal.encoding.json.Json_syntaxerror_static_extension.SyntaxError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_scannerPointer = stdgo._internal.encoding.json.Json_t_scannerpointer.T_scannerPointer;
@:dox(hide) class T_scanner_static_extension {
    static public function _error(_s:T_scanner, _c:std.UInt, _context:String):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>);
        final _c = (_c : stdgo.GoUInt8);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.encoding.json.Json_t_scanner_static_extension.T_scanner_static_extension._error(_s, _c, _context);
    }
    static public function _popParseState(_s:T_scanner):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>);
        stdgo._internal.encoding.json.Json_t_scanner_static_extension.T_scanner_static_extension._popParseState(_s);
    }
    static public function _pushParseState(_s:T_scanner, _c:std.UInt, _newParseState:StdTypes.Int, _successState:StdTypes.Int):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>);
        final _c = (_c : stdgo.GoUInt8);
        final _newParseState = (_newParseState : stdgo.GoInt);
        final _successState = (_successState : stdgo.GoInt);
        return stdgo._internal.encoding.json.Json_t_scanner_static_extension.T_scanner_static_extension._pushParseState(_s, _c, _newParseState, _successState);
    }
    static public function _eof(_s:T_scanner):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>);
        return stdgo._internal.encoding.json.Json_t_scanner_static_extension.T_scanner_static_extension._eof(_s);
    }
    static public function _reset(_s:T_scanner):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>);
        stdgo._internal.encoding.json.Json_t_scanner_static_extension.T_scanner_static_extension._reset(_s);
    }
}
@:dox(hide) typedef T_examplePointer = stdgo._internal.encoding.json.Json_t_examplepointer.T_examplePointer;
@:dox(hide) class T_example_static_extension {

}
@:dox(hide) typedef T_indentErrorTestPointer = stdgo._internal.encoding.json.Json_t_indenterrortestpointer.T_indentErrorTestPointer;
@:dox(hide) class T_indentErrorTest_static_extension {

}
typedef DecoderPointer = stdgo._internal.encoding.json.Json_decoderpointer.DecoderPointer;
class Decoder_static_extension {
    static public function inputOffset(_dec:Decoder):haxe.Int64 {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension.inputOffset(_dec);
    }
    static public function _peek(_dec:Decoder):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension._peek(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function more(_dec:Decoder):Bool {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension.more(_dec);
    }
    static public function _tokenError(_dec:Decoder, _c:std.UInt):stdgo.Tuple<Token, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        final _c = (_c : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension._tokenError(_dec, _c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function token(_dec:Decoder):stdgo.Tuple<Token, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension.token(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _tokenValueEnd(_dec:Decoder):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension._tokenValueEnd(_dec);
    }
    static public function _tokenValueAllowed(_dec:Decoder):Bool {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension._tokenValueAllowed(_dec);
    }
    static public function _tokenPrepareForDecode(_dec:Decoder):stdgo.Error {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension._tokenPrepareForDecode(_dec);
    }
    static public function _refill(_dec:Decoder):stdgo.Error {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension._refill(_dec);
    }
    static public function _readValue(_dec:Decoder):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension._readValue(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function buffered(_dec:Decoder):stdgo._internal.io.Io_reader.Reader {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        return stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension.buffered(_dec);
    }
    static public function decode(_dec:Decoder, _v:stdgo.AnyInterface):stdgo.Error {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension.decode(_dec, _v);
    }
    static public function disallowUnknownFields(_dec:Decoder):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension.disallowUnknownFields(_dec);
    }
    static public function useNumber(_dec:Decoder):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>);
        stdgo._internal.encoding.json.Json_decoder_static_extension.Decoder_static_extension.useNumber(_dec);
    }
}
typedef EncoderPointer = stdgo._internal.encoding.json.Json_encoderpointer.EncoderPointer;
class Encoder_static_extension {
    static public function setEscapeHTML(_enc:Encoder, _on:Bool):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>);
        stdgo._internal.encoding.json.Json_encoder_static_extension.Encoder_static_extension.setEscapeHTML(_enc, _on);
    }
    static public function setIndent(_enc:Encoder, _prefix:String, _indent:String):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>);
        final _prefix = (_prefix : stdgo.GoString);
        final _indent = (_indent : stdgo.GoString);
        stdgo._internal.encoding.json.Json_encoder_static_extension.Encoder_static_extension.setIndent(_enc, _prefix, _indent);
    }
    static public function encode(_enc:Encoder, _v:stdgo.AnyInterface):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.json.Json_encoder.Encoder>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.json.Json_encoder_static_extension.Encoder_static_extension.encode(_enc, _v);
    }
}
@:dox(hide) typedef T_tokenStreamCasePointer = stdgo._internal.encoding.json.Json_t_tokenstreamcasepointer.T_tokenStreamCasePointer;
@:dox(hide) class T_tokenStreamCase_static_extension {

}
@:dox(hide) typedef T_decodeThisPointer = stdgo._internal.encoding.json.Json_t_decodethispointer.T_decodeThisPointer;
@:dox(hide) class T_decodeThis_static_extension {

}
@:dox(hide) typedef T_basicLatin2xTagPointer = stdgo._internal.encoding.json.Json_t_basiclatin2xtagpointer.T_basicLatin2xTagPointer;
@:dox(hide) class T_basicLatin2xTag_static_extension {

}
@:dox(hide) typedef T_basicLatin3xTagPointer = stdgo._internal.encoding.json.Json_t_basiclatin3xtagpointer.T_basicLatin3xTagPointer;
@:dox(hide) class T_basicLatin3xTag_static_extension {

}
@:dox(hide) typedef T_basicLatin4xTagPointer = stdgo._internal.encoding.json.Json_t_basiclatin4xtagpointer.T_basicLatin4xTagPointer;
@:dox(hide) class T_basicLatin4xTag_static_extension {

}
@:dox(hide) typedef T_basicLatin5xTagPointer = stdgo._internal.encoding.json.Json_t_basiclatin5xtagpointer.T_basicLatin5xTagPointer;
@:dox(hide) class T_basicLatin5xTag_static_extension {

}
@:dox(hide) typedef T_basicLatin6xTagPointer = stdgo._internal.encoding.json.Json_t_basiclatin6xtagpointer.T_basicLatin6xTagPointer;
@:dox(hide) class T_basicLatin6xTag_static_extension {

}
@:dox(hide) typedef T_basicLatin7xTagPointer = stdgo._internal.encoding.json.Json_t_basiclatin7xtagpointer.T_basicLatin7xTagPointer;
@:dox(hide) class T_basicLatin7xTag_static_extension {

}
@:dox(hide) typedef T_miscPlaneTagPointer = stdgo._internal.encoding.json.Json_t_miscplanetagpointer.T_miscPlaneTagPointer;
@:dox(hide) class T_miscPlaneTag_static_extension {

}
@:dox(hide) typedef T_percentSlashTagPointer = stdgo._internal.encoding.json.Json_t_percentslashtagpointer.T_percentSlashTagPointer;
@:dox(hide) class T_percentSlashTag_static_extension {

}
@:dox(hide) typedef T_punctuationTagPointer = stdgo._internal.encoding.json.Json_t_punctuationtagpointer.T_punctuationTagPointer;
@:dox(hide) class T_punctuationTag_static_extension {

}
@:dox(hide) typedef T_dashTagPointer = stdgo._internal.encoding.json.Json_t_dashtagpointer.T_dashTagPointer;
@:dox(hide) class T_dashTag_static_extension {

}
@:dox(hide) typedef T_emptyTagPointer = stdgo._internal.encoding.json.Json_t_emptytagpointer.T_emptyTagPointer;
@:dox(hide) class T_emptyTag_static_extension {

}
@:dox(hide) typedef T_misnamedTagPointer = stdgo._internal.encoding.json.Json_t_misnamedtagpointer.T_misnamedTagPointer;
@:dox(hide) class T_misnamedTag_static_extension {

}
@:dox(hide) typedef T_badFormatTagPointer = stdgo._internal.encoding.json.Json_t_badformattagpointer.T_badFormatTagPointer;
@:dox(hide) class T_badFormatTag_static_extension {

}
@:dox(hide) typedef T_badCodeTagPointer = stdgo._internal.encoding.json.Json_t_badcodetagpointer.T_badCodeTagPointer;
@:dox(hide) class T_badCodeTag_static_extension {

}
@:dox(hide) typedef T_spaceTagPointer = stdgo._internal.encoding.json.Json_t_spacetagpointer.T_spaceTagPointer;
@:dox(hide) class T_spaceTag_static_extension {

}
@:dox(hide) typedef T_unicodeTagPointer = stdgo._internal.encoding.json.Json_t_unicodetagpointer.T_unicodeTagPointer;
@:dox(hide) class T_unicodeTag_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.encoding.json.Json_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.encoding.json.Json_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.encoding.json.Json_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
@:dox(hide) typedef T__struct_3PointerPointer = stdgo._internal.encoding.json.Json_t__struct_3pointerpointer.T__struct_3PointerPointer;
@:dox(hide) class T__struct_3Pointer_static_extension {

}
@:dox(hide) typedef T__struct_4PointerPointer = stdgo._internal.encoding.json.Json_t__struct_4pointerpointer.T__struct_4PointerPointer;
@:dox(hide) class T__struct_4Pointer_static_extension {

}
@:dox(hide) typedef T__struct_5PointerPointer = stdgo._internal.encoding.json.Json_t__struct_5pointerpointer.T__struct_5PointerPointer;
@:dox(hide) class T__struct_5Pointer_static_extension {

}
@:dox(hide) typedef T__struct_6PointerPointer = stdgo._internal.encoding.json.Json_t__struct_6pointerpointer.T__struct_6PointerPointer;
@:dox(hide) class T__struct_6Pointer_static_extension {

}
@:dox(hide) typedef T__struct_7PointerPointer = stdgo._internal.encoding.json.Json_t__struct_7pointerpointer.T__struct_7PointerPointer;
@:dox(hide) class T__struct_7Pointer_static_extension {

}
@:dox(hide) typedef T__struct_8PointerPointer = stdgo._internal.encoding.json.Json_t__struct_8pointerpointer.T__struct_8PointerPointer;
@:dox(hide) class T__struct_8Pointer_static_extension {

}
@:dox(hide) typedef T__struct_9PointerPointer = stdgo._internal.encoding.json.Json_t__struct_9pointerpointer.T__struct_9PointerPointer;
@:dox(hide) class T__struct_9Pointer_static_extension {

}
@:dox(hide) typedef T__struct_10PointerPointer = stdgo._internal.encoding.json.Json_t__struct_10pointerpointer.T__struct_10PointerPointer;
@:dox(hide) class T__struct_10Pointer_static_extension {

}
@:dox(hide) typedef T__struct_11PointerPointer = stdgo._internal.encoding.json.Json_t__struct_11pointerpointer.T__struct_11PointerPointer;
@:dox(hide) class T__struct_11Pointer_static_extension {

}
@:dox(hide) typedef T__struct_12PointerPointer = stdgo._internal.encoding.json.Json_t__struct_12pointerpointer.T__struct_12PointerPointer;
@:dox(hide) class T__struct_12Pointer_static_extension {

}
@:dox(hide) typedef T__struct_13PointerPointer = stdgo._internal.encoding.json.Json_t__struct_13pointerpointer.T__struct_13PointerPointer;
@:dox(hide) class T__struct_13Pointer_static_extension {

}
@:dox(hide) typedef T__struct_14PointerPointer = stdgo._internal.encoding.json.Json_t__struct_14pointerpointer.T__struct_14PointerPointer;
@:dox(hide) class T__struct_14Pointer_static_extension {

}
@:dox(hide) typedef T__struct_15PointerPointer = stdgo._internal.encoding.json.Json_t__struct_15pointerpointer.T__struct_15PointerPointer;
@:dox(hide) class T__struct_15Pointer_static_extension {

}
@:dox(hide) typedef T__struct_16PointerPointer = stdgo._internal.encoding.json.Json_t__struct_16pointerpointer.T__struct_16PointerPointer;
@:dox(hide) class T__struct_16Pointer_static_extension {

}
@:dox(hide) typedef T__struct_17PointerPointer = stdgo._internal.encoding.json.Json_t__struct_17pointerpointer.T__struct_17PointerPointer;
@:dox(hide) class T__struct_17Pointer_static_extension {

}
@:dox(hide) typedef T__struct_18PointerPointer = stdgo._internal.encoding.json.Json_t__struct_18pointerpointer.T__struct_18PointerPointer;
@:dox(hide) class T__struct_18Pointer_static_extension {

}
@:dox(hide) typedef T__struct_19PointerPointer = stdgo._internal.encoding.json.Json_t__struct_19pointerpointer.T__struct_19PointerPointer;
@:dox(hide) class T__struct_19Pointer_static_extension {

}
@:dox(hide) typedef T__struct_20PointerPointer = stdgo._internal.encoding.json.Json_t__struct_20pointerpointer.T__struct_20PointerPointer;
@:dox(hide) class T__struct_20Pointer_static_extension {

}
@:dox(hide) typedef T__struct_21PointerPointer = stdgo._internal.encoding.json.Json_t__struct_21pointerpointer.T__struct_21PointerPointer;
@:dox(hide) class T__struct_21Pointer_static_extension {

}
@:dox(hide) typedef T__struct_22PointerPointer = stdgo._internal.encoding.json.Json_t__struct_22pointerpointer.T__struct_22PointerPointer;
@:dox(hide) class T__struct_22Pointer_static_extension {

}
@:dox(hide) typedef T__struct_23PointerPointer = stdgo._internal.encoding.json.Json_t__struct_23pointerpointer.T__struct_23PointerPointer;
@:dox(hide) class T__struct_23Pointer_static_extension {

}
@:dox(hide) typedef T__struct_24PointerPointer = stdgo._internal.encoding.json.Json_t__struct_24pointerpointer.T__struct_24PointerPointer;
@:dox(hide) class T__struct_24Pointer_static_extension {

}
@:dox(hide) typedef T__struct_25PointerPointer = stdgo._internal.encoding.json.Json_t__struct_25pointerpointer.T__struct_25PointerPointer;
@:dox(hide) class T__struct_25Pointer_static_extension {

}
@:dox(hide) typedef T__struct_26PointerPointer = stdgo._internal.encoding.json.Json_t__struct_26pointerpointer.T__struct_26PointerPointer;
@:dox(hide) class T__struct_26Pointer_static_extension {

}
@:dox(hide) typedef T__struct_27PointerPointer = stdgo._internal.encoding.json.Json_t__struct_27pointerpointer.T__struct_27PointerPointer;
@:dox(hide) class T__struct_27Pointer_static_extension {

}
@:dox(hide) typedef T__struct_28PointerPointer = stdgo._internal.encoding.json.Json_t__struct_28pointerpointer.T__struct_28PointerPointer;
@:dox(hide) class T__struct_28Pointer_static_extension {

}
@:dox(hide) typedef T__struct_29PointerPointer = stdgo._internal.encoding.json.Json_t__struct_29pointerpointer.T__struct_29PointerPointer;
@:dox(hide) class T__struct_29Pointer_static_extension {

}
@:dox(hide) typedef T__struct_30PointerPointer = stdgo._internal.encoding.json.Json_t__struct_30pointerpointer.T__struct_30PointerPointer;
@:dox(hide) class T__struct_30Pointer_static_extension {

}
@:dox(hide) typedef T__struct_31PointerPointer = stdgo._internal.encoding.json.Json_t__struct_31pointerpointer.T__struct_31PointerPointer;
@:dox(hide) class T__struct_31Pointer_static_extension {

}
@:dox(hide) typedef T__struct_32PointerPointer = stdgo._internal.encoding.json.Json_t__struct_32pointerpointer.T__struct_32PointerPointer;
@:dox(hide) class T__struct_32Pointer_static_extension {

}
@:dox(hide) typedef T__struct_33PointerPointer = stdgo._internal.encoding.json.Json_t__struct_33pointerpointer.T__struct_33PointerPointer;
@:dox(hide) class T__struct_33Pointer_static_extension {

}
@:dox(hide) typedef T__struct_34PointerPointer = stdgo._internal.encoding.json.Json_t__struct_34pointerpointer.T__struct_34PointerPointer;
@:dox(hide) class T__struct_34Pointer_static_extension {

}
@:dox(hide) typedef T__struct_35PointerPointer = stdgo._internal.encoding.json.Json_t__struct_35pointerpointer.T__struct_35PointerPointer;
@:dox(hide) class T__struct_35Pointer_static_extension {

}
@:dox(hide) typedef T__struct_36PointerPointer = stdgo._internal.encoding.json.Json_t__struct_36pointerpointer.T__struct_36PointerPointer;
@:dox(hide) class T__struct_36Pointer_static_extension {

}
@:dox(hide) typedef T__struct_37PointerPointer = stdgo._internal.encoding.json.Json_t__struct_37pointerpointer.T__struct_37PointerPointer;
@:dox(hide) class T__struct_37Pointer_static_extension {

}
@:dox(hide) typedef T__struct_38PointerPointer = stdgo._internal.encoding.json.Json_t__struct_38pointerpointer.T__struct_38PointerPointer;
@:dox(hide) class T__struct_38Pointer_static_extension {

}
@:dox(hide) typedef T__struct_39PointerPointer = stdgo._internal.encoding.json.Json_t__struct_39pointerpointer.T__struct_39PointerPointer;
@:dox(hide) class T__struct_39Pointer_static_extension {

}
@:dox(hide) typedef T__struct_40PointerPointer = stdgo._internal.encoding.json.Json_t__struct_40pointerpointer.T__struct_40PointerPointer;
@:dox(hide) class T__struct_40Pointer_static_extension {

}
@:dox(hide) typedef T__struct_41PointerPointer = stdgo._internal.encoding.json.Json_t__struct_41pointerpointer.T__struct_41PointerPointer;
@:dox(hide) class T__struct_41Pointer_static_extension {

}
@:dox(hide) typedef T__struct_42PointerPointer = stdgo._internal.encoding.json.Json_t__struct_42pointerpointer.T__struct_42PointerPointer;
@:dox(hide) class T__struct_42Pointer_static_extension {

}
@:dox(hide) typedef T__struct_43PointerPointer = stdgo._internal.encoding.json.Json_t__struct_43pointerpointer.T__struct_43PointerPointer;
@:dox(hide) class T__struct_43Pointer_static_extension {

}
@:dox(hide) typedef T__struct_44PointerPointer = stdgo._internal.encoding.json.Json_t__struct_44pointerpointer.T__struct_44PointerPointer;
@:dox(hide) class T__struct_44Pointer_static_extension {

}
@:dox(hide) typedef T__struct_45PointerPointer = stdgo._internal.encoding.json.Json_t__struct_45pointerpointer.T__struct_45PointerPointer;
@:dox(hide) class T__struct_45Pointer_static_extension {

}
@:dox(hide) typedef T__struct_46PointerPointer = stdgo._internal.encoding.json.Json_t__struct_46pointerpointer.T__struct_46PointerPointer;
@:dox(hide) class T__struct_46Pointer_static_extension {

}
typedef NumberPointer = stdgo._internal.encoding.json.Json_numberpointer.NumberPointer;
class Number_static_extension {
    static public function int64(_n:Number):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_number_static_extension.Number_static_extension.int64(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(_n:Number):stdgo.Tuple<StdTypes.Float, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_number_static_extension.Number_static_extension.float64(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_n:Number):String {
        return stdgo._internal.encoding.json.Json_number_static_extension.Number_static_extension.string(_n);
    }
}
typedef SSPointer = stdgo._internal.encoding.json.Json_sspointer.SSPointer;
class SS_static_extension {
    static public function unmarshalJSON(_:stdgo.Pointer<SS>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_ss_static_extension.SS_static_extension.unmarshalJSON(_, _data);
    }
}
@:dox(hide) typedef T_u8Pointer = stdgo._internal.encoding.json.Json_t_u8pointer.T_u8Pointer;
@:dox(hide) class T_u8_static_extension {

}
@:dox(hide) typedef T_u8marshalPointer = stdgo._internal.encoding.json.Json_t_u8marshalpointer.T_u8marshalPointer;
@:dox(hide) class T_u8marshal_static_extension {
    static public function unmarshalText(_u8:stdgo.Pointer<T_u8marshal>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_u8marshal_static_extension.T_u8marshal_static_extension.unmarshalText(_u8, _b);
    }
    static public function marshalText(_u8:T_u8marshal):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_u8marshal_static_extension.T_u8marshal_static_extension.marshalText(_u8);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef Embed0bPointer = stdgo._internal.encoding.json.Json_embed0bpointer.Embed0bPointer;
class Embed0b_static_extension {

}
typedef Embed0cPointer = stdgo._internal.encoding.json.Json_embed0cpointer.Embed0cPointer;
class Embed0c_static_extension {

}
typedef S7Pointer = stdgo._internal.encoding.json.Json_s7pointer.S7Pointer;
class S7_static_extension {

}
@:dox(hide) typedef T_byteWithMarshalJSONPointer = stdgo._internal.encoding.json.Json_t_bytewithmarshaljsonpointer.T_byteWithMarshalJSONPointer;
@:dox(hide) class T_byteWithMarshalJSON_static_extension {
    static public function unmarshalJSON(_b:stdgo.Pointer<T_byteWithMarshalJSON>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_bytewithmarshaljson_static_extension.T_byteWithMarshalJSON_static_extension.unmarshalJSON(_b, _data);
    }
    static public function marshalJSON(_b:T_byteWithMarshalJSON):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_bytewithmarshaljson_static_extension.T_byteWithMarshalJSON_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_byteWithPtrMarshalJSONPointer = stdgo._internal.encoding.json.Json_t_bytewithptrmarshaljsonpointer.T_byteWithPtrMarshalJSONPointer;
@:dox(hide) class T_byteWithPtrMarshalJSON_static_extension {
    static public function unmarshalJSON(_b:stdgo.Pointer<T_byteWithPtrMarshalJSON>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_bytewithptrmarshaljson_static_extension.T_byteWithPtrMarshalJSON_static_extension.unmarshalJSON(_b, _data);
    }
    static public function marshalJSON(_b:stdgo.Pointer<T_byteWithPtrMarshalJSON>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_bytewithptrmarshaljson_static_extension.T_byteWithPtrMarshalJSON_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_byteWithMarshalTextPointer = stdgo._internal.encoding.json.Json_t_bytewithmarshaltextpointer.T_byteWithMarshalTextPointer;
@:dox(hide) class T_byteWithMarshalText_static_extension {
    static public function unmarshalText(_b:stdgo.Pointer<T_byteWithMarshalText>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_bytewithmarshaltext_static_extension.T_byteWithMarshalText_static_extension.unmarshalText(_b, _data);
    }
    static public function marshalText(_b:T_byteWithMarshalText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_bytewithmarshaltext_static_extension.T_byteWithMarshalText_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_byteWithPtrMarshalTextPointer = stdgo._internal.encoding.json.Json_t_bytewithptrmarshaltextpointer.T_byteWithPtrMarshalTextPointer;
@:dox(hide) class T_byteWithPtrMarshalText_static_extension {
    static public function unmarshalText(_b:stdgo.Pointer<T_byteWithPtrMarshalText>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_bytewithptrmarshaltext_static_extension.T_byteWithPtrMarshalText_static_extension.unmarshalText(_b, _data);
    }
    static public function marshalText(_b:stdgo.Pointer<T_byteWithPtrMarshalText>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_bytewithptrmarshaltext_static_extension.T_byteWithPtrMarshalText_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_intWithMarshalJSONPointer = stdgo._internal.encoding.json.Json_t_intwithmarshaljsonpointer.T_intWithMarshalJSONPointer;
@:dox(hide) class T_intWithMarshalJSON_static_extension {
    static public function unmarshalJSON(_b:stdgo.Pointer<T_intWithMarshalJSON>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_intwithmarshaljson_static_extension.T_intWithMarshalJSON_static_extension.unmarshalJSON(_b, _data);
    }
    static public function marshalJSON(_b:T_intWithMarshalJSON):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_intwithmarshaljson_static_extension.T_intWithMarshalJSON_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_intWithPtrMarshalJSONPointer = stdgo._internal.encoding.json.Json_t_intwithptrmarshaljsonpointer.T_intWithPtrMarshalJSONPointer;
@:dox(hide) class T_intWithPtrMarshalJSON_static_extension {
    static public function unmarshalJSON(_b:stdgo.Pointer<T_intWithPtrMarshalJSON>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_intwithptrmarshaljson_static_extension.T_intWithPtrMarshalJSON_static_extension.unmarshalJSON(_b, _data);
    }
    static public function marshalJSON(_b:stdgo.Pointer<T_intWithPtrMarshalJSON>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_intwithptrmarshaljson_static_extension.T_intWithPtrMarshalJSON_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_intWithMarshalTextPointer = stdgo._internal.encoding.json.Json_t_intwithmarshaltextpointer.T_intWithMarshalTextPointer;
@:dox(hide) class T_intWithMarshalText_static_extension {
    static public function unmarshalText(_b:stdgo.Pointer<T_intWithMarshalText>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_intwithmarshaltext_static_extension.T_intWithMarshalText_static_extension.unmarshalText(_b, _data);
    }
    static public function marshalText(_b:T_intWithMarshalText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_intwithmarshaltext_static_extension.T_intWithMarshalText_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_intWithPtrMarshalTextPointer = stdgo._internal.encoding.json.Json_t_intwithptrmarshaltextpointer.T_intWithPtrMarshalTextPointer;
@:dox(hide) class T_intWithPtrMarshalText_static_extension {
    static public function unmarshalText(_b:stdgo.Pointer<T_intWithPtrMarshalText>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_intwithptrmarshaltext_static_extension.T_intWithPtrMarshalText_static_extension.unmarshalText(_b, _data);
    }
    static public function marshalText(_b:stdgo.Pointer<T_intWithPtrMarshalText>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_intwithptrmarshaltext_static_extension.T_intWithPtrMarshalText_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef Time3339Pointer = stdgo._internal.encoding.json.Json_time3339pointer.Time3339Pointer;
class Time3339_static_extension {
    static public function unmarshalJSON(_t:Time3339, _b:Array<std.UInt>):stdgo.Error {
        final _t = (_t : stdgo.Ref<stdgo._internal.encoding.json.Json_time3339.Time3339>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_time3339_static_extension.Time3339_static_extension.unmarshalJSON(_t, _b);
    }
}
@:dox(hide) typedef T_textUnmarshalerStringPointer = stdgo._internal.encoding.json.Json_t_textunmarshalerstringpointer.T_textUnmarshalerStringPointer;
@:dox(hide) class T_textUnmarshalerString_static_extension {
    static public function unmarshalText(_m:stdgo.Pointer<T_textUnmarshalerString>, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_t_textunmarshalerstring_static_extension.T_textUnmarshalerString_static_extension.unmarshalText(_m, _text);
    }
}
@:dox(hide) typedef T_encoderFuncPointer = stdgo._internal.encoding.json.Json_t_encoderfuncpointer.T_encoderFuncPointer;
@:dox(hide) class T_encoderFunc_static_extension {

}
@:dox(hide) typedef T_floatEncoderPointer = stdgo._internal.encoding.json.Json_t_floatencoderpointer.T_floatEncoderPointer;
@:dox(hide) class T_floatEncoder_static_extension {
    static public function _encode(_bits:T_floatEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:T_encOpts):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
        stdgo._internal.encoding.json.Json_t_floatencoder_static_extension.T_floatEncoder_static_extension._encode(_bits, _e, _v, _opts);
    }
}
@:dox(hide) typedef T_byIndexPointer = stdgo._internal.encoding.json.Json_t_byindexpointer.T_byIndexPointer;
@:dox(hide) class T_byIndex_static_extension {
    static public function less(_x:T_byIndex, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.encoding.json.Json_t_byindex_static_extension.T_byIndex_static_extension.less(_x, _i, _j);
    }
    static public function swap(_x:T_byIndex, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.encoding.json.Json_t_byindex_static_extension.T_byIndex_static_extension.swap(_x, _i, _j);
    }
    static public function len(_x:T_byIndex):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_t_byindex_static_extension.T_byIndex_static_extension.len(_x);
    }
}
@:dox(hide) typedef T_renamedBytePointer = stdgo._internal.encoding.json.Json_t_renamedbytepointer.T_renamedBytePointer;
@:dox(hide) class T_renamedByte_static_extension {

}
@:dox(hide) typedef T_renamedByteSlicePointer = stdgo._internal.encoding.json.Json_t_renamedbyteslicepointer.T_renamedByteSlicePointer;
@:dox(hide) class T_renamedByteSlice_static_extension {

}
@:dox(hide) typedef T_renamedRenamedByteSlicePointer = stdgo._internal.encoding.json.Json_t_renamedrenamedbyteslicepointer.T_renamedRenamedByteSlicePointer;
@:dox(hide) class T_renamedRenamedByteSlice_static_extension {

}
typedef RecursiveSlicePointer = stdgo._internal.encoding.json.Json_recursiveslicepointer.RecursiveSlicePointer;
class RecursiveSlice_static_extension {

}
typedef RefPointer = stdgo._internal.encoding.json.Json_refpointer.RefPointer;
class Ref_static_extension {
    static public function unmarshalJSON(_r:stdgo.Pointer<Ref>, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_ref_static_extension.Ref_static_extension.unmarshalJSON(_r, _0);
    }
    static public function marshalJSON(_:stdgo.Pointer<Ref>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_ref_static_extension.Ref_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef ValPointer = stdgo._internal.encoding.json.Json_valpointer.ValPointer;
class Val_static_extension {
    static public function marshalJSON(_:Val):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_val_static_extension.Val_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef RefTextPointer = stdgo._internal.encoding.json.Json_reftextpointer.RefTextPointer;
class RefText_static_extension {
    static public function unmarshalText(_r:stdgo.Pointer<RefText>, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_reftext_static_extension.RefText_static_extension.unmarshalText(_r, _0);
    }
    static public function marshalText(_:stdgo.Pointer<RefText>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_reftext_static_extension.RefText_static_extension.marshalText(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef ValTextPointer = stdgo._internal.encoding.json.Json_valtextpointer.ValTextPointer;
class ValText_static_extension {
    static public function marshalText(_:ValText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_valtext_static_extension.ValText_static_extension.marshalText(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef CPointer = stdgo._internal.encoding.json.Json_cpointer.CPointer;
class C_static_extension {
    static public function marshalJSON(_:C):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_c_static_extension.C_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef CTextPointer = stdgo._internal.encoding.json.Json_ctextpointer.CTextPointer;
class CText_static_extension {
    static public function marshalText(_:CText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_ctext_static_extension.CText_static_extension.marshalText(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_nilJSONMarshalerPointer = stdgo._internal.encoding.json.Json_t_niljsonmarshalerpointer.T_nilJSONMarshalerPointer;
@:dox(hide) class T_nilJSONMarshaler_static_extension {
    static public function marshalJSON(_nm:stdgo.Pointer<T_nilJSONMarshaler>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_niljsonmarshaler_static_extension.T_nilJSONMarshaler_static_extension.marshalJSON(_nm);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_nilTextMarshalerPointer = stdgo._internal.encoding.json.Json_t_niltextmarshalerpointer.T_nilTextMarshalerPointer;
@:dox(hide) class T_nilTextMarshaler_static_extension {
    static public function marshalText(_nm:stdgo.Pointer<T_nilTextMarshaler>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_niltextmarshaler_static_extension.T_nilTextMarshaler_static_extension.marshalText(_nm);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_jsonbytePointer = stdgo._internal.encoding.json.Json_t_jsonbytepointer.T_jsonbytePointer;
@:dox(hide) class T_jsonbyte_static_extension {
    static public function marshalJSON(_b:T_jsonbyte):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_jsonbyte_static_extension.T_jsonbyte_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_textbytePointer = stdgo._internal.encoding.json.Json_t_textbytepointer.T_textbytePointer;
@:dox(hide) class T_textbyte_static_extension {
    static public function marshalText(_b:T_textbyte):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_textbyte_static_extension.T_textbyte_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_jsonintPointer = stdgo._internal.encoding.json.Json_t_jsonintpointer.T_jsonintPointer;
@:dox(hide) class T_jsonint_static_extension {
    static public function marshalJSON(_i:T_jsonint):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_jsonint_static_extension.T_jsonint_static_extension.marshalJSON(_i);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_textintPointer = stdgo._internal.encoding.json.Json_t_textintpointer.T_textintPointer;
@:dox(hide) class T_textint_static_extension {
    static public function marshalText(_i:T_textint):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_textint_static_extension.T_textint_static_extension.marshalText(_i);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_textfloatPointer = stdgo._internal.encoding.json.Json_t_textfloatpointer.T_textfloatPointer;
@:dox(hide) class T_textfloat_static_extension {
    static public function marshalText(_f:T_textfloat):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_textfloat_static_extension.T_textfloat_static_extension.marshalText(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef RawMessagePointer = stdgo._internal.encoding.json.Json_rawmessagepointer.RawMessagePointer;
class RawMessage_static_extension {
    static public function unmarshalJSON(_m:RawMessage, _data:Array<std.UInt>):stdgo.Error {
        final _m = (_m : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_rawmessage_static_extension.RawMessage_static_extension.unmarshalJSON(_m, _data);
    }
    static public function marshalJSON(_m:RawMessage):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_rawmessage_static_extension.RawMessage_static_extension.marshalJSON(_m);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef TokenPointer = stdgo._internal.encoding.json.Json_tokenpointer.TokenPointer;
class Token_static_extension {

}
typedef DelimPointer = stdgo._internal.encoding.json.Json_delimpointer.DelimPointer;
class Delim_static_extension {
    static public function string(_d:Delim):String {
        return stdgo._internal.encoding.json.Json_delim_static_extension.Delim_static_extension.string(_d);
    }
}
@:dox(hide) typedef T_strMarshalerPointer = stdgo._internal.encoding.json.Json_t_strmarshalerpointer.T_strMarshalerPointer;
@:dox(hide) class T_strMarshaler_static_extension {
    static public function marshalJSON(_s:T_strMarshaler):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_strmarshaler_static_extension.T_strMarshaler_static_extension.marshalJSON(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_strPtrMarshalerPointer = stdgo._internal.encoding.json.Json_t_strptrmarshalerpointer.T_strPtrMarshalerPointer;
@:dox(hide) class T_strPtrMarshaler_static_extension {
    static public function marshalJSON(_s:stdgo.Pointer<T_strPtrMarshaler>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_t_strptrmarshaler_static_extension.T_strPtrMarshaler_static_extension.marshalJSON(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_tagOptionsPointer = stdgo._internal.encoding.json.Json_t_tagoptionspointer.T_tagOptionsPointer;
@:dox(hide) class T_tagOptions_static_extension {
    static public function contains(_o:T_tagOptions, _optionName:String):Bool {
        final _optionName = (_optionName : stdgo.GoString);
        return stdgo._internal.encoding.json.Json_t_tagoptions_static_extension.T_tagOptions_static_extension.contains(_o, _optionName);
    }
}
@:dox(hide) typedef T_benchmarkCodeEncoderError___localname___Dummy_2370Pointer = stdgo._internal.encoding.json.Json_t_benchmarkcodeencodererror___localname___dummy_2370pointer.T_benchmarkCodeEncoderError___localname___Dummy_2370Pointer;
@:dox(hide) class T_benchmarkCodeEncoderError___localname___Dummy_2370_static_extension {

}
@:dox(hide) typedef T_benchmarkCodeMarshalError___localname___Dummy_3282Pointer = stdgo._internal.encoding.json.Json_t_benchmarkcodemarshalerror___localname___dummy_3282pointer.T_benchmarkCodeMarshalError___localname___Dummy_3282Pointer;
@:dox(hide) class T_benchmarkCodeMarshalError___localname___Dummy_3282_static_extension {

}
@:dox(hide) typedef T__benchMarshalBytesError___localname___Dummy_4406Pointer = stdgo._internal.encoding.json.Json_t__benchmarshalbyteserror___localname___dummy_4406pointer.T__benchMarshalBytesError___localname___Dummy_4406Pointer;
@:dox(hide) class T__benchMarshalBytesError___localname___Dummy_4406_static_extension {

}
@:dox(hide) typedef T_benchmarkEncoderEncode___localname___T_11092Pointer = stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092pointer.T_benchmarkEncoderEncode___localname___T_11092Pointer;
@:dox(hide) class T_benchmarkEncoderEncode___localname___T_11092_static_extension {

}
@:dox(hide) typedef T_testRefUnmarshal___localname___S_40168Pointer = stdgo._internal.encoding.json.Json_t_testrefunmarshal___localname___s_40168pointer.T_testRefUnmarshal___localname___S_40168Pointer;
@:dox(hide) class T_testRefUnmarshal___localname___S_40168_static_extension {

}
@:dox(hide) typedef T_testEmptyString___localname___T2_40735Pointer = stdgo._internal.encoding.json.Json_t_testemptystring___localname___t2_40735pointer.T_testEmptyString___localname___T2_40735Pointer;
@:dox(hide) class T_testEmptyString___localname___T2_40735_static_extension {

}
@:dox(hide) typedef T_testNullString___localname___T_41259Pointer = stdgo._internal.encoding.json.Json_t_testnullstring___localname___t_41259pointer.T_testNullString___localname___T_41259Pointer;
@:dox(hide) class T_testNullString___localname___T_41259_static_extension {

}
@:dox(hide) typedef T_testStringKind___localname___stringKind_47067Pointer = stdgo._internal.encoding.json.Json_t_teststringkind___localname___stringkind_47067pointer.T_testStringKind___localname___stringKind_47067Pointer;
@:dox(hide) class T_testStringKind___localname___stringKind_47067_static_extension {

}
@:dox(hide) typedef T_testByteKind___localname___byteKind_47617Pointer = stdgo._internal.encoding.json.Json_t_testbytekind___localname___bytekind_47617pointer.T_testByteKind___localname___byteKind_47617Pointer;
@:dox(hide) class T_testByteKind___localname___byteKind_47617_static_extension {

}
@:dox(hide) typedef T_testSliceOfCustomByte___localname___Uint8_47988Pointer = stdgo._internal.encoding.json.Json_t_testsliceofcustombyte___localname___uint8_47988pointer.T_testSliceOfCustomByte___localname___Uint8_47988Pointer;
@:dox(hide) class T_testSliceOfCustomByte___localname___Uint8_47988_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___embed1_54365Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed1_54365pointer.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___embed1_54365_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___embed2_54390Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed2_54390pointer.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___embed2_54390_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___embed3_54415Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___embed3_54415pointer.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___embed3_54415_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___S1_54465Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s1_54465pointer.T_testUnmarshalEmbeddedUnexported___localname___S1_54465Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___S1_54465_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___S2_54503Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s2_54503pointer.T_testUnmarshalEmbeddedUnexported___localname___S2_54503Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___S2_54503_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___S3_54541Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s3_54541pointer.T_testUnmarshalEmbeddedUnexported___localname___S3_54541Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___S3_54541_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___S4_54578Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s4_54578pointer.T_testUnmarshalEmbeddedUnexported___localname___S4_54578Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___S4_54578_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___S5_54617Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s5_54617pointer.T_testUnmarshalEmbeddedUnexported___localname___S5_54617Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___S5_54617_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___S6_54655Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s6_54655pointer.T_testUnmarshalEmbeddedUnexported___localname___S6_54655Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___S6_54655_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___S7_54699Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s7_54699pointer.T_testUnmarshalEmbeddedUnexported___localname___S7_54699Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___S7_54699_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___S8_54753Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s8_54753pointer.T_testUnmarshalEmbeddedUnexported___localname___S8_54753Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___S8_54753_static_extension {

}
@:dox(hide) typedef T_testUnmarshalEmbeddedUnexported___localname___S9_54837Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s9_54837pointer.T_testUnmarshalEmbeddedUnexported___localname___S9_54837Pointer;
@:dox(hide) class T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension {
    public static function f(__self__:stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s9_54837.T_testUnmarshalEmbeddedUnexported___localname___S9_54837):Void {
        stdgo._internal.encoding.json.Json_t_testunmarshalembeddedunexported___localname___s9_54837_static_extension.T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension.f(__self__);
    }
}
@:dox(hide) typedef T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829Pointer = stdgo._internal.encoding.json.Json_t_testunmarshalrescanliteralmangledunquote___localname___t_59829pointer.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829Pointer;
@:dox(hide) class T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S1_8122Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8122pointer.T_testAnonymousFields___localname___S1_8122Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S1_8122_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S2_8148Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8148pointer.T_testAnonymousFields___localname___S2_8148Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S2_8148_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S_8174Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8174pointer.T_testAnonymousFields___localname___S_8174Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S_8174_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S1_8459Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_8459pointer.T_testAnonymousFields___localname___S1_8459Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S1_8459_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S2_8485Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_8485pointer.T_testAnonymousFields___localname___S2_8485Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S2_8485_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S_8511Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8511pointer.T_testAnonymousFields___localname___S_8511Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S_8511_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___myInt_8782Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_8782pointer.T_testAnonymousFields___localname___myInt_8782Pointer;
@:dox(hide) class T_testAnonymousFields___localname___myInt_8782_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S_8796Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_8796pointer.T_testAnonymousFields___localname___S_8796Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S_8796_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___MyInt_9005Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9005pointer.T_testAnonymousFields___localname___MyInt_9005Pointer;
@:dox(hide) class T_testAnonymousFields___localname___MyInt_9005_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S_9019Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9019pointer.T_testAnonymousFields___localname___S_9019Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S_9019_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___myInt_9268Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9268pointer.T_testAnonymousFields___localname___myInt_9268Pointer;
@:dox(hide) class T_testAnonymousFields___localname___myInt_9268_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S_9282Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9282pointer.T_testAnonymousFields___localname___S_9282Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S_9282_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___MyInt_9550Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_9550pointer.T_testAnonymousFields___localname___MyInt_9550Pointer;
@:dox(hide) class T_testAnonymousFields___localname___MyInt_9550_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S_9564Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9564pointer.T_testAnonymousFields___localname___S_9564Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S_9564_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___s1_9906Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_9906pointer.T_testAnonymousFields___localname___s1_9906Pointer;
@:dox(hide) class T_testAnonymousFields___localname___s1_9906_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S2_9932Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_9932pointer.T_testAnonymousFields___localname___S2_9932Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S2_9932_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S_9958Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_9958pointer.T_testAnonymousFields___localname___S_9958Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S_9958_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___s1_10314Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10314pointer.T_testAnonymousFields___localname___s1_10314Pointer;
@:dox(hide) class T_testAnonymousFields___localname___s1_10314_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S2_10340Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10340pointer.T_testAnonymousFields___localname___S2_10340Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S2_10340_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S_10366Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10366pointer.T_testAnonymousFields___localname___S_10366Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S_10366_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___MyInt1_10664Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint1_10664pointer.T_testAnonymousFields___localname___MyInt1_10664Pointer;
@:dox(hide) class T_testAnonymousFields___localname___MyInt1_10664_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___MyInt2_10679Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint2_10679pointer.T_testAnonymousFields___localname___MyInt2_10679Pointer;
@:dox(hide) class T_testAnonymousFields___localname___MyInt2_10679_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___myInt_10694Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___myint_10694pointer.T_testAnonymousFields___localname___myInt_10694Pointer;
@:dox(hide) class T_testAnonymousFields___localname___myInt_10694_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___s2_10709Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_10709pointer.T_testAnonymousFields___localname___s2_10709Pointer;
@:dox(hide) class T_testAnonymousFields___localname___s2_10709_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___s1_10758Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s1_10758pointer.T_testAnonymousFields___localname___s1_10758Pointer;
@:dox(hide) class T_testAnonymousFields___localname___s1_10758_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S_10811Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_10811pointer.T_testAnonymousFields___localname___S_10811Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S_10811_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S2_11195Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s2_11195pointer.T_testAnonymousFields___localname___S2_11195Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S2_11195_static_extension {

}
@:dox(hide) typedef T_testAnonymousFields___localname___S_11225Pointer = stdgo._internal.encoding.json.Json_t_testanonymousfields___localname___s_11225pointer.T_testAnonymousFields___localname___S_11225Pointer;
@:dox(hide) class T_testAnonymousFields___localname___S_11225_static_extension {

}
@:dox(hide) typedef T_testIssue10281___localname___Foo_15026Pointer = stdgo._internal.encoding.json.Json_t_testissue10281___localname___foo_15026pointer.T_testIssue10281___localname___Foo_15026Pointer;
@:dox(hide) class T_testIssue10281___localname___Foo_15026_static_extension {

}
@:dox(hide) typedef T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460Pointer = stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___dummy_15460pointer.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460Pointer;
@:dox(hide) class T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460_static_extension {

}
@:dox(hide) typedef T_testMarshalErrorAndReuseEncodeState___localname___Data_15661Pointer = stdgo._internal.encoding.json.Json_t_testmarshalerrorandreuseencodestate___localname___data_15661pointer.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661Pointer;
@:dox(hide) class T_testMarshalErrorAndReuseEncodeState___localname___Data_15661_static_extension {

}
@:dox(hide) typedef T_testEncodePointerString___localname___stringPointer_16452Pointer = stdgo._internal.encoding.json.Json_t_testencodepointerstring___localname___stringpointer_16452pointer.T_testEncodePointerString___localname___stringPointer_16452Pointer;
@:dox(hide) class T_testEncodePointerString___localname___stringPointer_16452_static_extension {

}
@:dox(hide) typedef T_testMarshalRawMessageValue___localname___T1_23519Pointer = stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519pointer.T_testMarshalRawMessageValue___localname___T1_23519Pointer;
@:dox(hide) class T_testMarshalRawMessageValue___localname___T1_23519_static_extension {

}
@:dox(hide) typedef T_testMarshalRawMessageValue___localname___T2_23573Pointer = stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573pointer.T_testMarshalRawMessageValue___localname___T2_23573Pointer;
@:dox(hide) class T_testMarshalRawMessageValue___localname___T2_23573_static_extension {

}
@:dox(hide) typedef T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487Pointer = stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___dummy_1487pointer.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487Pointer;
@:dox(hide) class T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487_static_extension {

}
@:dox(hide) typedef T_testEncoderErrorAndReuseEncodeState___localname___Data_1733Pointer = stdgo._internal.encoding.json.Json_t_testencodererrorandreuseencodestate___localname___data_1733pointer.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733Pointer;
@:dox(hide) class T_testEncoderErrorAndReuseEncodeState___localname___Data_1733_static_extension {

}
/**
    * Package json implements encoding and decoding of JSON as defined in
    * RFC 7159. The mapping between JSON and Go values is described
    * in the documentation for the Marshal and Unmarshal functions.
    * 
    * See "JSON and Go" for an introduction to this package:
    * https://golang.org/doc/articles/json_and_go.html
**/
class Json {
    static public inline function benchmarkCodeEncoder(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkcodeencoder.benchmarkCodeEncoder(_b);
    }
    static public inline function benchmarkCodeEncoderError(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkcodeencodererror.benchmarkCodeEncoderError(_b);
    }
    static public inline function benchmarkCodeMarshal(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkcodemarshal.benchmarkCodeMarshal(_b);
    }
    static public inline function benchmarkCodeMarshalError(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkcodemarshalerror.benchmarkCodeMarshalError(_b);
    }
    static public inline function benchmarkMarshalBytes(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkmarshalbytes.benchmarkMarshalBytes(_b);
    }
    static public inline function benchmarkMarshalBytesError(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkmarshalbyteserror.benchmarkMarshalBytesError(_b);
    }
    static public inline function benchmarkCodeDecoder(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkcodedecoder.benchmarkCodeDecoder(_b);
    }
    static public inline function benchmarkUnicodeDecoder(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkunicodedecoder.benchmarkUnicodeDecoder(_b);
    }
    static public inline function benchmarkDecoderStream(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkdecoderstream.benchmarkDecoderStream(_b);
    }
    static public inline function benchmarkCodeUnmarshal(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkcodeunmarshal.benchmarkCodeUnmarshal(_b);
    }
    static public inline function benchmarkCodeUnmarshalReuse(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkcodeunmarshalreuse.benchmarkCodeUnmarshalReuse(_b);
    }
    static public inline function benchmarkUnmarshalString(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkunmarshalstring.benchmarkUnmarshalString(_b);
    }
    static public inline function benchmarkUnmarshalFloat64(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkunmarshalfloat64.benchmarkUnmarshalFloat64(_b);
    }
    static public inline function benchmarkUnmarshalInt64(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkunmarshalint64.benchmarkUnmarshalInt64(_b);
    }
    static public inline function benchmarkIssue10335(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkissue10335.benchmarkIssue10335(_b);
    }
    static public inline function benchmarkIssue34127(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkissue34127.benchmarkIssue34127(_b);
    }
    static public inline function benchmarkUnmapped(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkunmapped.benchmarkUnmapped(_b);
    }
    static public inline function benchmarkTypeFieldsCache(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarktypefieldscache.benchmarkTypeFieldsCache(_b);
    }
    static public inline function benchmarkEncodeMarshaler(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkencodemarshaler.benchmarkEncodeMarshaler(_b);
    }
    static public inline function benchmarkEncoderEncode(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarkencoderencode.benchmarkEncoderEncode(_b);
    }
    static public inline function benchmarkNumberIsValid(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarknumberisvalid.benchmarkNumberIsValid(_b);
    }
    static public inline function benchmarkNumberIsValidRegexp(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.encoding.json.Json_benchmarknumberisvalidregexp.benchmarkNumberIsValidRegexp(_b);
    }
    /**
        * Unmarshal parses the JSON-encoded data and stores the result
        * in the value pointed to by v. If v is nil or not a pointer,
        * Unmarshal returns an InvalidUnmarshalError.
        * 
        * Unmarshal uses the inverse of the encodings that
        * Marshal uses, allocating maps, slices, and pointers as necessary,
        * with the following additional rules:
        * 
        * To unmarshal JSON into a pointer, Unmarshal first handles the case of
        * the JSON being the JSON literal null. In that case, Unmarshal sets
        * the pointer to nil. Otherwise, Unmarshal unmarshals the JSON into
        * the value pointed at by the pointer. If the pointer is nil, Unmarshal
        * allocates a new value for it to point to.
        * 
        * To unmarshal JSON into a value implementing the Unmarshaler interface,
        * Unmarshal calls that value's UnmarshalJSON method, including
        * when the input is a JSON null.
        * Otherwise, if the value implements encoding.TextUnmarshaler
        * and the input is a JSON quoted string, Unmarshal calls that value's
        * UnmarshalText method with the unquoted form of the string.
        * 
        * To unmarshal JSON into a struct, Unmarshal matches incoming object
        * keys to the keys used by Marshal (either the struct field name or its tag),
        * preferring an exact match but also accepting a case-insensitive match. By
        * default, object keys which don't have a corresponding struct field are
        * ignored (see Decoder.DisallowUnknownFields for an alternative).
        * 
        * To unmarshal JSON into an interface value,
        * Unmarshal stores one of these in the interface value:
        * 
        * 	bool, for JSON booleans
        * 	float64, for JSON numbers
        * 	string, for JSON strings
        * 	[]interface{}, for JSON arrays
        * 	map[string]interface{}, for JSON objects
        * 	nil for JSON null
        * 
        * To unmarshal a JSON array into a slice, Unmarshal resets the slice length
        * to zero and then appends each element to the slice.
        * As a special case, to unmarshal an empty JSON array into a slice,
        * Unmarshal replaces the slice with a new empty slice.
        * 
        * To unmarshal a JSON array into a Go array, Unmarshal decodes
        * JSON array elements into corresponding Go array elements.
        * If the Go array is smaller than the JSON array,
        * the additional JSON array elements are discarded.
        * If the JSON array is smaller than the Go array,
        * the additional Go array elements are set to zero values.
        * 
        * To unmarshal a JSON object into a map, Unmarshal first establishes a map to
        * use. If the map is nil, Unmarshal allocates a new map. Otherwise Unmarshal
        * reuses the existing map, keeping existing entries. Unmarshal then stores
        * key-value pairs from the JSON object into the map. The map's key type must
        * either be any string type, an integer, implement json.Unmarshaler, or
        * implement encoding.TextUnmarshaler.
        * 
        * If the JSON-encoded data contain a syntax error, Unmarshal returns a SyntaxError.
        * 
        * If a JSON value is not appropriate for a given target type,
        * or if a JSON number overflows the target type, Unmarshal
        * skips that field and completes the unmarshaling as best it can.
        * If no more serious errors are encountered, Unmarshal returns
        * an UnmarshalTypeError describing the earliest such error. In any
        * case, it's not guaranteed that all the remaining fields following
        * the problematic one will be unmarshaled into the target object.
        * 
        * The JSON null value unmarshals into an interface, map, pointer, or slice
        * by setting that Go value to nil. Because null is often used in JSON to mean
        * “not present,” unmarshaling a JSON null into any other Go type has no effect
        * on the value and produces no error.
        * 
        * When unmarshaling quoted strings, invalid UTF-8 or
        * invalid UTF-16 surrogate pairs are not treated as an error.
        * Instead, they are replaced by the Unicode replacement
        * character U+FFFD.
    **/
    static public inline function unmarshal(_data:Array<std.UInt>, _v:stdgo.AnyInterface):stdgo.Error {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, _v);
    }
    static public inline function testMarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshal.testMarshal(_t);
    }
    static public inline function testMarshalBadUTF8(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshalbadutf8.testMarshalBadUTF8(_t);
    }
    static public inline function testMarshalNumberZeroVal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshalnumberzeroval.testMarshalNumberZeroVal(_t);
    }
    static public inline function testMarshalEmbeds(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshalembeds.testMarshalEmbeds(_t);
    }
    static public inline function testUnmarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshal.testUnmarshal(_t);
    }
    static public inline function testUnmarshalMarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalmarshal.testUnmarshalMarshal(_t);
    }
    /**
        * Independent of Decode, basic coverage of the accessors in Number
    **/
    static public inline function testNumberAccessors(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testnumberaccessors.testNumberAccessors(_t);
    }
    static public inline function testLargeByteSlice(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testlargebyteslice.testLargeByteSlice(_t);
    }
    static public inline function testUnmarshalInterface(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalinterface.testUnmarshalInterface(_t);
    }
    static public inline function testUnmarshalPtrPtr(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalptrptr.testUnmarshalPtrPtr(_t);
    }
    static public inline function testEscape(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testescape.testEscape(_t);
    }
    /**
        * If people misuse the ,string modifier, the error message should be
        * helpful, telling the user that they're doing it wrong.
    **/
    static public inline function testErrorMessageFromMisusedString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testerrormessagefrommisusedstring.testErrorMessageFromMisusedString(_t);
    }
    static public inline function testRefUnmarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testrefunmarshal.testRefUnmarshal(_t);
    }
    /**
        * Test that the empty string doesn't panic decoding when ,string is specified
        * Issue 3450
    **/
    static public inline function testEmptyString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testemptystring.testEmptyString(_t);
    }
    /**
        * Test that a null for ,string is not replaced with the previous quoted string (issue 7046).
        * It should also not be an error (issue 2540, issue 8587).
    **/
    static public inline function testNullString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testnullstring.testNullString(_t);
    }
    static public inline function testInterfaceSet(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testinterfaceset.testInterfaceSet(_t);
    }
    /**
        * JSON null values should be ignored for primitives and string values instead of resulting in an error.
        * Issue 2540
    **/
    static public inline function testUnmarshalNulls(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalnulls.testUnmarshalNulls(_t);
    }
    static public inline function testStringKind(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_teststringkind.testStringKind(_t);
    }
    /**
        * Custom types with []byte as underlying type could not be marshaled
        * and then unmarshaled.
        * Issue 8962.
    **/
    static public inline function testByteKind(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testbytekind.testByteKind(_t);
    }
    /**
        * The fix for issue 8962 introduced a regression.
        * Issue 12921.
    **/
    static public inline function testSliceOfCustomByte(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testsliceofcustombyte.testSliceOfCustomByte(_t);
    }
    static public inline function testUnmarshalTypeError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshaltypeerror.testUnmarshalTypeError(_t);
    }
    static public inline function testUnmarshalSyntax(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalsyntax.testUnmarshalSyntax(_t);
    }
    static public inline function testUnmarshalUnexported(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalunexported.testUnmarshalUnexported(_t);
    }
    static public inline function testUnmarshalJSONLiteralError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshaljsonliteralerror.testUnmarshalJSONLiteralError(_t);
    }
    /**
        * Test that extra object elements in an array do not result in a
        * "data changing underfoot" error.
        * Issue 3717
    **/
    static public inline function testSkipArrayObjects(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testskiparrayobjects.testSkipArrayObjects(_t);
    }
    /**
        * Test semantics of pre-filled data, such as struct fields, map elements,
        * slices, and arrays.
        * Issues 4900 and 8837, among others.
    **/
    static public inline function testPrefilled(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testprefilled.testPrefilled(_t);
    }
    static public inline function testInvalidUnmarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testinvalidunmarshal.testInvalidUnmarshal(_t);
    }
    static public inline function testInvalidUnmarshalText(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testinvalidunmarshaltext.testInvalidUnmarshalText(_t);
    }
    /**
        * Test that string option is ignored for invalid types.
        * Issue 9812.
    **/
    static public inline function testInvalidStringOption(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testinvalidstringoption.testInvalidStringOption(_t);
    }
    /**
        * Test unmarshal behavior with regards to embedded unexported structs.
        * 
        * (Issue 21357) If the embedded struct is a pointer and is unallocated,
        * this returns an error because unmarshal cannot set the field.
        * 
        * (Issue 24152) If the embedded struct is given an explicit name,
        * ensure that the normal unmarshal logic does not panic in reflect.
        * 
        * (Issue 28145) If the embedded struct is given an explicit name and has
        * exported methods, don't cause a panic trying to get its value.
    **/
    static public inline function testUnmarshalEmbeddedUnexported(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalembeddedunexported.testUnmarshalEmbeddedUnexported(_t);
    }
    static public inline function testUnmarshalErrorAfterMultipleJSON(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalerroraftermultiplejson.testUnmarshalErrorAfterMultipleJSON(_t);
    }
    static public inline function testUnmarshalPanic(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalpanic.testUnmarshalPanic(_t);
    }
    /**
        * The decoder used to hang if decoding into an interface pointing to its own address.
        * See golang.org/issues/31740.
    **/
    static public inline function testUnmarshalRecursivePointer(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalrecursivepointer.testUnmarshalRecursivePointer(_t);
    }
    /**
        * Test unmarshal to a map, where the map key is a user defined type.
        * See golang.org/issues/34437.
    **/
    static public inline function testUnmarshalMapWithTextUnmarshalerStringKey(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalmapwithtextunmarshalerstringkey.testUnmarshalMapWithTextUnmarshalerStringKey(_t);
    }
    static public inline function testUnmarshalRescanLiteralMangledUnquote(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalrescanliteralmangledunquote.testUnmarshalRescanLiteralMangledUnquote(_t);
    }
    static public inline function testUnmarshalMaxDepth(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunmarshalmaxdepth.testUnmarshalMaxDepth(_t);
    }
    /**
        * Marshal returns the JSON encoding of v.
        * 
        * Marshal traverses the value v recursively.
        * If an encountered value implements the Marshaler interface
        * and is not a nil pointer, Marshal calls its MarshalJSON method
        * to produce JSON. If no MarshalJSON method is present but the
        * value implements encoding.TextMarshaler instead, Marshal calls
        * its MarshalText method and encodes the result as a JSON string.
        * The nil pointer exception is not strictly necessary
        * but mimics a similar, necessary exception in the behavior of
        * UnmarshalJSON.
        * 
        * Otherwise, Marshal uses the following type-dependent default encodings:
        * 
        * Boolean values encode as JSON booleans.
        * 
        * Floating point, integer, and Number values encode as JSON numbers.
        * NaN and +/-Inf values will return an [UnsupportedValueError].
        * 
        * String values encode as JSON strings coerced to valid UTF-8,
        * replacing invalid bytes with the Unicode replacement rune.
        * So that the JSON will be safe to embed inside HTML <script> tags,
        * the string is encoded using HTMLEscape,
        * which replaces "<", ">", "&", U+2028, and U+2029 are escaped
        * to "\u003c","\u003e", "\u0026", "\u2028", and "\u2029".
        * This replacement can be disabled when using an Encoder,
        * by calling SetEscapeHTML(false).
        * 
        * Array and slice values encode as JSON arrays, except that
        * []byte encodes as a base64-encoded string, and a nil slice
        * encodes as the null JSON value.
        * 
        * Struct values encode as JSON objects.
        * Each exported struct field becomes a member of the object, using the
        * field name as the object key, unless the field is omitted for one of the
        * reasons given below.
        * 
        * The encoding of each struct field can be customized by the format string
        * stored under the "json" key in the struct field's tag.
        * The format string gives the name of the field, possibly followed by a
        * comma-separated list of options. The name may be empty in order to
        * specify options without overriding the default field name.
        * 
        * The "omitempty" option specifies that the field should be omitted
        * from the encoding if the field has an empty value, defined as
        * false, 0, a nil pointer, a nil interface value, and any empty array,
        * slice, map, or string.
        * 
        * As a special case, if the field tag is "-", the field is always omitted.
        * Note that a field with name "-" can still be generated using the tag "-,".
        * 
        * Examples of struct field tags and their meanings:
        * 
        * 	// Field appears in JSON as key "myName".
        * 	Field int `json:"myName"`
        * 
        * 	// Field appears in JSON as key "myName" and
        * 	// the field is omitted from the object if its value is empty,
        * 	// as defined above.
        * 	Field int `json:"myName,omitempty"`
        * 
        * 	// Field appears in JSON as key "Field" (the default), but
        * 	// the field is skipped if empty.
        * 	// Note the leading comma.
        * 	Field int `json:",omitempty"`
        * 
        * 	// Field is ignored by this package.
        * 	Field int `json:"-"`
        * 
        * 	// Field appears in JSON as key "-".
        * 	Field int `json:"-,"`
        * 
        * The "string" option signals that a field is stored as JSON inside a
        * JSON-encoded string. It applies only to fields of string, floating point,
        * integer, or boolean types. This extra level of encoding is sometimes used
        * when communicating with JavaScript programs:
        * 
        * 	Int64String int64 `json:",string"`
        * 
        * The key name will be used if it's a non-empty string consisting of
        * only Unicode letters, digits, and ASCII punctuation except quotation
        * marks, backslash, and comma.
        * 
        * Anonymous struct fields are usually marshaled as if their inner exported fields
        * were fields in the outer struct, subject to the usual Go visibility rules amended
        * as described in the next paragraph.
        * An anonymous struct field with a name given in its JSON tag is treated as
        * having that name, rather than being anonymous.
        * An anonymous struct field of interface type is treated the same as having
        * that type as its name, rather than being anonymous.
        * 
        * The Go visibility rules for struct fields are amended for JSON when
        * deciding which field to marshal or unmarshal. If there are
        * multiple fields at the same level, and that level is the least
        * nested (and would therefore be the nesting level selected by the
        * usual Go rules), the following extra rules apply:
        * 
        * 1) Of those fields, if any are JSON-tagged, only tagged fields are considered,
        * even if there are multiple untagged fields that would otherwise conflict.
        * 
        * 2) If there is exactly one field (tagged or not according to the first rule), that is selected.
        * 
        * 3) Otherwise there are multiple fields, and all are ignored; no error occurs.
        * 
        * Handling of anonymous struct fields is new in Go 1.1.
        * Prior to Go 1.1, anonymous struct fields were ignored. To force ignoring of
        * an anonymous struct field in both current and earlier versions, give the field
        * a JSON tag of "-".
        * 
        * Map values encode as JSON objects. The map's key type must either be a
        * string, an integer type, or implement encoding.TextMarshaler. The map keys
        * are sorted and used as JSON object keys by applying the following rules,
        * subject to the UTF-8 coercion described for string values above:
        *   - keys of any string type are used directly
        *   - encoding.TextMarshalers are marshaled
        *   - integer keys are converted to strings
        * 
        * Pointer values encode as the value pointed to.
        * A nil pointer encodes as the null JSON value.
        * 
        * Interface values encode as the value contained in the interface.
        * A nil interface value encodes as the null JSON value.
        * 
        * Channel, complex, and function values cannot be encoded in JSON.
        * Attempting to encode such a value causes Marshal to return
        * an UnsupportedTypeError.
        * 
        * JSON cannot represent cyclic data structures and Marshal does not
        * handle them. Passing cyclic structures to Marshal will result in
        * an error.
    **/
    static public inline function marshal(_v:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        return {
            final obj = stdgo._internal.encoding.json.Json_marshal.marshal(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * MarshalIndent is like Marshal but applies Indent to format the output.
        * Each JSON element in the output will begin on a new line beginning with prefix
        * followed by one or more copies of indent according to the indentation nesting.
    **/
    static public inline function marshalIndent(_v:stdgo.AnyInterface, _prefix:String, _indent:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _v = (_v : stdgo.AnyInterface);
        final _prefix = (_prefix : stdgo.GoString);
        final _indent = (_indent : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.json.Json_marshalindent.marshalIndent(_v, _prefix, _indent);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public inline function testOmitEmpty(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testomitempty.testOmitEmpty(_t);
    }
    static public inline function testRoundtripStringTag(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testroundtripstringtag.testRoundtripStringTag(_t);
    }
    static public inline function testEncodeRenamedByteSlice(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testencoderenamedbyteslice.testEncodeRenamedByteSlice(_t);
    }
    static public inline function testSamePointerNoCycle(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testsamepointernocycle.testSamePointerNoCycle(_t);
    }
    static public inline function testSliceNoCycle(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testslicenocycle.testSliceNoCycle(_t);
    }
    static public inline function testUnsupportedValues(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testunsupportedvalues.testUnsupportedValues(_t);
    }
    /**
        * Issue 43207
    **/
    static public inline function testMarshalTextFloatMap(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshaltextfloatmap.testMarshalTextFloatMap(_t);
    }
    static public inline function testRefValMarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testrefvalmarshal.testRefValMarshal(_t);
    }
    static public inline function testMarshalerEscaping(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshalerescaping.testMarshalerEscaping(_t);
    }
    static public inline function testAnonymousFields(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testanonymousfields.testAnonymousFields(_t);
    }
    /**
        * See golang.org/issue/16042 and golang.org/issue/34235.
    **/
    static public inline function testNilMarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testnilmarshal.testNilMarshal(_t);
    }
    /**
        * Issue 5245.
    **/
    static public inline function testEmbeddedBug(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testembeddedbug.testEmbeddedBug(_t);
    }
    /**
        * Test that a field with a tag dominates untagged fields.
    **/
    static public inline function testTaggedFieldDominates(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testtaggedfielddominates.testTaggedFieldDominates(_t);
    }
    static public inline function testDuplicatedFieldDisappears(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testduplicatedfielddisappears.testDuplicatedFieldDisappears(_t);
    }
    static public inline function testIssue10281(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testissue10281.testIssue10281(_t);
    }
    static public inline function testMarshalErrorAndReuseEncodeState(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshalerrorandreuseencodestate.testMarshalErrorAndReuseEncodeState(_t);
    }
    static public inline function testHTMLEscape(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testhtmlescape.testHTMLEscape(_t);
    }
    /**
        * golang.org/issue/8582
    **/
    static public inline function testEncodePointerString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testencodepointerstring.testEncodePointerString(_t);
    }
    static public inline function testEncodeString(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testencodestring.testEncodeString(_t);
    }
    /**
        * Issue 13783
    **/
    static public inline function testEncodeBytekind(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testencodebytekind.testEncodeBytekind(_t);
    }
    static public inline function testTextMarshalerMapKeysAreSorted(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testtextmarshalermapkeysaresorted.testTextMarshalerMapKeysAreSorted(_t);
    }
    /**
        * https://golang.org/issue/33675
    **/
    static public inline function testNilMarshalerTextMapKey(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testnilmarshalertextmapkey.testNilMarshalerTextMapKey(_t);
    }
    static public inline function testMarshalFloat(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshalfloat.testMarshalFloat(_t);
    }
    static public inline function testMarshalRawMessageValue(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshalrawmessagevalue.testMarshalRawMessageValue(_t);
    }
    static public inline function testMarshalPanic(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshalpanic.testMarshalPanic(_t);
    }
    static public inline function testMarshalUncommonFieldNames(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshaluncommonfieldnames.testMarshalUncommonFieldNames(_t);
    }
    static public inline function testMarshalerError(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testmarshalererror.testMarshalerError(_t);
    }
    static public inline function fuzzEqualFold(_f:stdgo._internal.testing.Testing_f.F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_f.F>);
        stdgo._internal.encoding.json.Json_fuzzequalfold.fuzzEqualFold(_f);
    }
    static public inline function fuzzUnmarshalJSON(_f:stdgo._internal.testing.Testing_f.F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_f.F>);
        stdgo._internal.encoding.json.Json_fuzzunmarshaljson.fuzzUnmarshalJSON(_f);
    }
    static public inline function fuzzDecoderToken(_f:stdgo._internal.testing.Testing_f.F):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.testing.Testing_f.F>);
        stdgo._internal.encoding.json.Json_fuzzdecodertoken.fuzzDecoderToken(_f);
    }
    /**
        * HTMLEscape appends to dst the JSON-encoded src with <, >, &, U+2028 and U+2029
        * characters inside string literals changed to \u003c, \u003e, \u0026, \u2028, \u2029
        * so that the JSON will be safe to embed inside HTML <script> tags.
        * For historical reasons, web browsers don't honor standard HTML
        * escaping within <script> tags, so an alternative JSON encoding must be used.
    **/
    static public inline function hTMLEscape(_dst:stdgo._internal.bytes.Bytes_buffer.Buffer, _src:Array<std.UInt>):Void {
        final _dst = (_dst : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.json.Json_htmlescape.hTMLEscape(_dst, _src);
    }
    /**
        * Compact appends to dst the JSON-encoded src with
        * insignificant space characters elided.
    **/
    static public inline function compact(_dst:stdgo._internal.bytes.Bytes_buffer.Buffer, _src:Array<std.UInt>):stdgo.Error {
        final _dst = (_dst : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_compact.compact(_dst, _src);
    }
    /**
        * Indent appends to dst an indented form of the JSON-encoded src.
        * Each element in a JSON object or array begins on a new,
        * indented line beginning with prefix followed by one or more
        * copies of indent according to the indentation nesting.
        * The data appended to dst does not begin with the prefix nor
        * any indentation, to make it easier to embed inside other formatted JSON data.
        * Although leading space characters (space, tab, carriage return, newline)
        * at the beginning of src are dropped, trailing space characters
        * at the end of src are preserved and copied to dst.
        * For example, if src has no trailing spaces, neither will dst;
        * if src ends in a trailing newline, so will dst.
    **/
    static public inline function indent(_dst:stdgo._internal.bytes.Bytes_buffer.Buffer, _src:Array<std.UInt>, _prefix:String, _indent:String):stdgo.Error {
        final _dst = (_dst : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _prefix = (_prefix : stdgo.GoString);
        final _indent = (_indent : stdgo.GoString);
        return stdgo._internal.encoding.json.Json_indent.indent(_dst, _src, _prefix, _indent);
    }
    static public inline function testNumberIsValid(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testnumberisvalid.testNumberIsValid(_t);
    }
    /**
        * Valid reports whether data is a valid JSON encoding.
    **/
    static public inline function valid(_data:Array<std.UInt>):Bool {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_valid.valid(_data);
    }
    static public inline function testValid(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testvalid.testValid(_t);
    }
    static public inline function testCompact(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testcompact.testCompact(_t);
    }
    static public inline function testCompactSeparators(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testcompactseparators.testCompactSeparators(_t);
    }
    static public inline function testIndent(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testindent.testIndent(_t);
    }
    static public inline function testCompactBig(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testcompactbig.testCompactBig(_t);
    }
    static public inline function testIndentBig(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testindentbig.testIndentBig(_t);
    }
    static public inline function testIndentErrors(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testindenterrors.testIndentErrors(_t);
    }
    /**
        * NewDecoder returns a new decoder that reads from r.
        * 
        * The decoder introduces its own buffering and may
        * read data from r beyond the JSON values requested.
    **/
    static public inline function newDecoder(_r:stdgo._internal.io.Io_reader.Reader):Decoder {
        return stdgo._internal.encoding.json.Json_newdecoder.newDecoder(_r);
    }
    /**
        * NewEncoder returns a new encoder that writes to w.
    **/
    static public inline function newEncoder(_w:stdgo._internal.io.Io_writer.Writer):Encoder {
        return stdgo._internal.encoding.json.Json_newencoder.newEncoder(_w);
    }
    static public inline function testEncoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testencoder.testEncoder(_t);
    }
    static public inline function testEncoderErrorAndReuseEncodeState(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testencodererrorandreuseencodestate.testEncoderErrorAndReuseEncodeState(_t);
    }
    static public inline function testEncoderIndent(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testencoderindent.testEncoderIndent(_t);
    }
    static public inline function testEncoderSetEscapeHTML(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testencodersetescapehtml.testEncoderSetEscapeHTML(_t);
    }
    static public inline function testDecoder(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testdecoder.testDecoder(_t);
    }
    static public inline function testDecoderBuffered(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testdecoderbuffered.testDecoderBuffered(_t);
    }
    static public inline function testRawMessage(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testrawmessage.testRawMessage(_t);
    }
    static public inline function testNullRawMessage(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testnullrawmessage.testNullRawMessage(_t);
    }
    static public inline function testBlocking(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testblocking.testBlocking(_t);
    }
    static public inline function testDecodeInStream(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testdecodeinstream.testDecodeInStream(_t);
    }
    /**
        * Test from golang.org/issue/11893
    **/
    static public inline function testHTTPDecoding(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testhttpdecoding.testHTTPDecoding(_t);
    }
    static public inline function testStructTagObjectKey(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_teststructtagobjectkey.testStructTagObjectKey(_t);
    }
    static public inline function testTagParsing(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.encoding.json.Json_testtagparsing.testTagParsing(_t);
    }
}
