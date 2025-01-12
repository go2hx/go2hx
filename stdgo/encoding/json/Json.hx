package stdgo.encoding.json;
class Unmarshaler_static_extension {
    static public function unmarshalJSON(t:stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_Unmarshaler_static_extension.Unmarshaler_static_extension.unmarshalJSON(t, _0);
    }
}
typedef Unmarshaler = stdgo._internal.encoding.json.Json_Unmarshaler.Unmarshaler;
class Marshaler_static_extension {
    static public function marshalJSON(t:stdgo._internal.encoding.json.Json_Marshaler.Marshaler):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Marshaler_static_extension.Marshaler_static_extension.marshalJSON(t);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef Marshaler = stdgo._internal.encoding.json.Json_Marshaler.Marshaler;
@:structInit abstract T_codeResponse(stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse) from stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse to stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse {
    public var tree(get, set) : T_codeNode;
    function get_tree():T_codeNode return this.tree;
    function set_tree(v:T_codeNode):T_codeNode {
        this.tree = v;
        return v;
    }
    public var username(get, set) : String;
    function get_username():String return this.username;
    function set_username(v:String):String {
        this.username = v;
        return v;
    }
    public function new(?tree:T_codeNode, ?username:String) this = new stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse(tree, username);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_codeNode(stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode) from stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode to stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var kids(get, set) : Array<T_codeNode>;
    function get_kids():Array<T_codeNode> return [for (i in this.kids) i];
    function set_kids(v:Array<T_codeNode>):Array<T_codeNode> {
        this.kids = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>>);
        return v;
    }
    public var cLWeight(get, set) : StdTypes.Float;
    function get_cLWeight():StdTypes.Float return this.cLWeight;
    function set_cLWeight(v:StdTypes.Float):StdTypes.Float {
        this.cLWeight = v;
        return v;
    }
    public var touches(get, set) : StdTypes.Int;
    function get_touches():StdTypes.Int return this.touches;
    function set_touches(v:StdTypes.Int):StdTypes.Int {
        this.touches = v;
        return v;
    }
    public var minT(get, set) : haxe.Int64;
    function get_minT():haxe.Int64 return this.minT;
    function set_minT(v:haxe.Int64):haxe.Int64 {
        this.minT = v;
        return v;
    }
    public var maxT(get, set) : haxe.Int64;
    function get_maxT():haxe.Int64 return this.maxT;
    function set_maxT(v:haxe.Int64):haxe.Int64 {
        this.maxT = v;
        return v;
    }
    public var meanT(get, set) : haxe.Int64;
    function get_meanT():haxe.Int64 return this.meanT;
    function set_meanT(v:haxe.Int64):haxe.Int64 {
        this.meanT = v;
        return v;
    }
    public function new(?name:String, ?kids:Array<T_codeNode>, ?cLWeight:StdTypes.Float, ?touches:StdTypes.Int, ?minT:haxe.Int64, ?maxT:haxe.Int64, ?meanT:haxe.Int64) this = new stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode(name, ([for (i in kids) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeNode.T_codeNode>>), cLWeight, touches, minT, maxT, meanT);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnmarshalTypeError_static_extension) abstract UnmarshalTypeError(stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError) from stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError to stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError {
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = v;
        return v;
    }
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = v;
        return v;
    }
    public var struct_(get, set) : String;
    function get_struct_():String return this.struct_;
    function set_struct_(v:String):String {
        this.struct_ = v;
        return v;
    }
    public var field(get, set) : String;
    function get_field():String return this.field;
    function set_field(v:String):String {
        this.field = v;
        return v;
    }
    public function new(?value:String, ?type:stdgo._internal.reflect.Reflect_Type_.Type_, ?offset:haxe.Int64, ?struct_:String, ?field:String) this = new stdgo._internal.encoding.json.Json_UnmarshalTypeError.UnmarshalTypeError(value, type, offset, struct_, field);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnmarshalFieldError_static_extension) abstract UnmarshalFieldError(stdgo._internal.encoding.json.Json_UnmarshalFieldError.UnmarshalFieldError) from stdgo._internal.encoding.json.Json_UnmarshalFieldError.UnmarshalFieldError to stdgo._internal.encoding.json.Json_UnmarshalFieldError.UnmarshalFieldError {
    public var key(get, set) : String;
    function get_key():String return this.key;
    function set_key(v:String):String {
        this.key = v;
        return v;
    }
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public var field(get, set) : stdgo._internal.reflect.Reflect_StructField.StructField;
    function get_field():stdgo._internal.reflect.Reflect_StructField.StructField return this.field;
    function set_field(v:stdgo._internal.reflect.Reflect_StructField.StructField):stdgo._internal.reflect.Reflect_StructField.StructField {
        this.field = v;
        return v;
    }
    public function new(?key:String, ?type:stdgo._internal.reflect.Reflect_Type_.Type_, ?field:stdgo._internal.reflect.Reflect_StructField.StructField) this = new stdgo._internal.encoding.json.Json_UnmarshalFieldError.UnmarshalFieldError(key, type, field);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.InvalidUnmarshalError_static_extension) abstract InvalidUnmarshalError(stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError) from stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError to stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_Type_.Type_) this = new stdgo._internal.encoding.json.Json_InvalidUnmarshalError.InvalidUnmarshalError(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_errorContext(stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext) from stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext to stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext {
    public var struct_(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_struct_():stdgo._internal.reflect.Reflect_Type_.Type_ return this.struct_;
    function set_struct_(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.struct_ = v;
        return v;
    }
    public var fieldStack(get, set) : Array<String>;
    function get_fieldStack():Array<String> return [for (i in this.fieldStack) i];
    function set_fieldStack(v:Array<String>):Array<String> {
        this.fieldStack = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?struct_:stdgo._internal.reflect.Reflect_Type_.Type_, ?fieldStack:Array<String>) this = new stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext(struct_, ([for (i in fieldStack) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_decodeState_static_extension) abstract T_decodeState(stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState) from stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState to stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = v;
        return v;
    }
    public var _opcode(get, set) : StdTypes.Int;
    function get__opcode():StdTypes.Int return this._opcode;
    function set__opcode(v:StdTypes.Int):StdTypes.Int {
        this._opcode = v;
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
        this._errorContext = v;
        return v;
    }
    public var _savedError(get, set) : stdgo.Error;
    function get__savedError():stdgo.Error return this._savedError;
    function set__savedError(v:stdgo.Error):stdgo.Error {
        this._savedError = v;
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
    public function new(?_data:Array<std.UInt>, ?_off:StdTypes.Int, ?_opcode:StdTypes.Int, ?_scan:T_scanner, ?_errorContext:T_errorContext, ?_savedError:stdgo.Error, ?_useNumber:Bool, ?_disallowUnknownFields:Bool) this = new stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState(([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>), _off, _opcode, _scan, _errorContext, _savedError, _useNumber, _disallowUnknownFields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_unquotedValue(stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue) from stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue to stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue {
    public function new() this = new stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_(stdgo._internal.encoding.json.Json_T_.T_) from stdgo._internal.encoding.json.Json_T_.T_ to stdgo._internal.encoding.json.Json_T_.T_ {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = v;
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = v;
        return v;
    }
    public var z(get, set) : StdTypes.Int;
    function get_z():StdTypes.Int return this.z;
    function set_z(v:StdTypes.Int):StdTypes.Int {
        this.z = v;
        return v;
    }
    public function new(?x:String, ?y:StdTypes.Int, ?z:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_.T_(x, y, z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract U(stdgo._internal.encoding.json.Json_U.U) from stdgo._internal.encoding.json.Json_U.U to stdgo._internal.encoding.json.Json_U.U {
    public var alphabet(get, set) : String;
    function get_alphabet():String return this.alphabet;
    function set_alphabet(v:String):String {
        this.alphabet = v;
        return v;
    }
    public function new(?alphabet:String) this = new stdgo._internal.encoding.json.Json_U.U(alphabet);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract V(stdgo._internal.encoding.json.Json_V.V) from stdgo._internal.encoding.json.Json_V.V to stdgo._internal.encoding.json.Json_V.V {
    public var f1(get, set) : stdgo.AnyInterface;
    function get_f1():stdgo.AnyInterface return this.f1;
    function set_f1(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.f1 = v;
        return v;
    }
    public var f2(get, set) : StdTypes.Int;
    function get_f2():StdTypes.Int return this.f2;
    function set_f2(v:StdTypes.Int):StdTypes.Int {
        this.f2 = v;
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
        this.f4 = v;
        return v;
    }
    public function new(?f1:stdgo.AnyInterface, ?f2:StdTypes.Int, ?f3:Number, ?f4:VOuter) this = new stdgo._internal.encoding.json.Json_V.V(f1, f2, f3, f4);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract VOuter(stdgo._internal.encoding.json.Json_VOuter.VOuter) from stdgo._internal.encoding.json.Json_VOuter.VOuter to stdgo._internal.encoding.json.Json_VOuter.VOuter {
    public var v(get, set) : V;
    function get_v():V return this.v;
    function set_v(v:V):V {
        this.v = v;
        return v;
    }
    public function new(?v:V) this = new stdgo._internal.encoding.json.Json_VOuter.VOuter(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract W(stdgo._internal.encoding.json.Json_W.W) from stdgo._internal.encoding.json.Json_W.W to stdgo._internal.encoding.json.Json_W.W {
    public var s(get, set) : SS;
    function get_s():SS return this.s;
    function set_s(v:SS):SS {
        this.s = v;
        return v;
    }
    public function new(?s:SS) this = new stdgo._internal.encoding.json.Json_W.W(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract P(stdgo._internal.encoding.json.Json_P.P) from stdgo._internal.encoding.json.Json_P.P to stdgo._internal.encoding.json.Json_P.P {
    public var pP(get, set) : PP;
    function get_pP():PP return this.pP;
    function set_pP(v:PP):PP {
        this.pP = v;
        return v;
    }
    public function new(?pP:PP) this = new stdgo._internal.encoding.json.Json_P.P(pP);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract PP(stdgo._internal.encoding.json.Json_PP.PP) from stdgo._internal.encoding.json.Json_PP.PP to stdgo._internal.encoding.json.Json_PP.PP {
    public var t(get, set) : T_;
    function get_t():T_ return this.t;
    function set_t(v:T_):T_ {
        this.t = v;
        return v;
    }
    public var ts(get, set) : Array<T_>;
    function get_ts():Array<T_> return [for (i in this.ts) i];
    function set_ts(v:Array<T_>):Array<T_> {
        this.ts = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_T_.T_>);
        return v;
    }
    public function new(?t:T_, ?ts:Array<T_>) this = new stdgo._internal.encoding.json.Json_PP.PP(t, ([for (i in ts) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_T_.T_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_tx(stdgo._internal.encoding.json.Json_T_tx.T_tx) from stdgo._internal.encoding.json.Json_T_tx.T_tx to stdgo._internal.encoding.json.Json_T_tx.T_tx {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_tx.T_tx(_x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unmarshaler_static_extension) abstract T_unmarshaler(stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler) from stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler to stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler {
    public var t(get, set) : Bool;
    function get_t():Bool return this.t;
    function set_t(v:Bool):Bool {
        this.t = v;
        return v;
    }
    public function new(?t:Bool) this = new stdgo._internal.encoding.json.Json_T_unmarshaler.T_unmarshaler(t);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_ustruct(stdgo._internal.encoding.json.Json_T_ustruct.T_ustruct) from stdgo._internal.encoding.json.Json_T_ustruct.T_ustruct to stdgo._internal.encoding.json.Json_T_ustruct.T_ustruct {
    public var m(get, set) : T_unmarshaler;
    function get_m():T_unmarshaler return this.m;
    function set_m(v:T_unmarshaler):T_unmarshaler {
        this.m = v;
        return v;
    }
    public function new(?m:T_unmarshaler) this = new stdgo._internal.encoding.json.Json_T_ustruct.T_ustruct(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unmarshalerText_static_extension) abstract T_unmarshalerText(stdgo._internal.encoding.json.Json_T_unmarshalerText.T_unmarshalerText) from stdgo._internal.encoding.json.Json_T_unmarshalerText.T_unmarshalerText to stdgo._internal.encoding.json.Json_T_unmarshalerText.T_unmarshalerText {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = v;
        return v;
    }
    public var b(get, set) : String;
    function get_b():String return this.b;
    function set_b(v:String):String {
        this.b = v;
        return v;
    }
    public function new(?a:String, ?b:String) this = new stdgo._internal.encoding.json.Json_T_unmarshalerText.T_unmarshalerText(a, b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_ustructText(stdgo._internal.encoding.json.Json_T_ustructText.T_ustructText) from stdgo._internal.encoding.json.Json_T_ustructText.T_ustructText to stdgo._internal.encoding.json.Json_T_ustructText.T_ustructText {
    public var m(get, set) : T_unmarshalerText;
    function get_m():T_unmarshalerText return this.m;
    function set_m(v:T_unmarshalerText):T_unmarshalerText {
        this.m = v;
        return v;
    }
    public function new(?m:T_unmarshalerText) this = new stdgo._internal.encoding.json.Json_T_ustructText.T_ustructText(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Point(stdgo._internal.encoding.json.Json_Point.Point) from stdgo._internal.encoding.json.Json_Point.Point to stdgo._internal.encoding.json.Json_Point.Point {
    public var z(get, set) : StdTypes.Int;
    function get_z():StdTypes.Int return this.z;
    function set_z(v:StdTypes.Int):StdTypes.Int {
        this.z = v;
        return v;
    }
    public function new(?z:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_Point.Point(z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Top_static_extension) abstract Top(stdgo._internal.encoding.json.Json_Top.Top) from stdgo._internal.encoding.json.Json_Top.Top to stdgo._internal.encoding.json.Json_Top.Top {
    public var level0(get, set) : StdTypes.Int;
    function get_level0():StdTypes.Int return this.level0;
    function set_level0(v:StdTypes.Int):StdTypes.Int {
        this.level0 = v;
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
        this.embed0a = v;
        return v;
    }
    public var embed0b(get, set) : Embed0b;
    function get_embed0b():Embed0b return this.embed0b;
    function set_embed0b(v:Embed0b):Embed0b {
        this.embed0b = v;
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
    public function new(?level0:StdTypes.Int, ?embed0:Embed0, ?embed0a:Embed0a, ?embed0b:Embed0b, ?embed0c:Embed0c, ?loop:Loop, ?embed0p:Embed0p, ?embed0q:Embed0q, ?_embed:T_embed) this = new stdgo._internal.encoding.json.Json_Top.Top(level0, embed0, embed0a, embed0b, embed0c, loop, embed0p, embed0q, _embed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Embed0(stdgo._internal.encoding.json.Json_Embed0.Embed0) from stdgo._internal.encoding.json.Json_Embed0.Embed0 to stdgo._internal.encoding.json.Json_Embed0.Embed0 {
    public var level1a(get, set) : StdTypes.Int;
    function get_level1a():StdTypes.Int return this.level1a;
    function set_level1a(v:StdTypes.Int):StdTypes.Int {
        this.level1a = v;
        return v;
    }
    public var level1b(get, set) : StdTypes.Int;
    function get_level1b():StdTypes.Int return this.level1b;
    function set_level1b(v:StdTypes.Int):StdTypes.Int {
        this.level1b = v;
        return v;
    }
    public var level1c(get, set) : StdTypes.Int;
    function get_level1c():StdTypes.Int return this.level1c;
    function set_level1c(v:StdTypes.Int):StdTypes.Int {
        this.level1c = v;
        return v;
    }
    public var level1d(get, set) : StdTypes.Int;
    function get_level1d():StdTypes.Int return this.level1d;
    function set_level1d(v:StdTypes.Int):StdTypes.Int {
        this.level1d = v;
        return v;
    }
    public var level1e(get, set) : StdTypes.Int;
    function get_level1e():StdTypes.Int return this.level1e;
    function set_level1e(v:StdTypes.Int):StdTypes.Int {
        this.level1e = v;
        return v;
    }
    public function new(?level1a:StdTypes.Int, ?level1b:StdTypes.Int, ?level1c:StdTypes.Int, ?level1d:StdTypes.Int, ?level1e:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_Embed0.Embed0(level1a, level1b, level1c, level1d, level1e);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Embed0a(stdgo._internal.encoding.json.Json_Embed0a.Embed0a) from stdgo._internal.encoding.json.Json_Embed0a.Embed0a to stdgo._internal.encoding.json.Json_Embed0a.Embed0a {
    public var level1a(get, set) : StdTypes.Int;
    function get_level1a():StdTypes.Int return this.level1a;
    function set_level1a(v:StdTypes.Int):StdTypes.Int {
        this.level1a = v;
        return v;
    }
    public var level1b(get, set) : StdTypes.Int;
    function get_level1b():StdTypes.Int return this.level1b;
    function set_level1b(v:StdTypes.Int):StdTypes.Int {
        this.level1b = v;
        return v;
    }
    public var level1c(get, set) : StdTypes.Int;
    function get_level1c():StdTypes.Int return this.level1c;
    function set_level1c(v:StdTypes.Int):StdTypes.Int {
        this.level1c = v;
        return v;
    }
    public var level1d(get, set) : StdTypes.Int;
    function get_level1d():StdTypes.Int return this.level1d;
    function set_level1d(v:StdTypes.Int):StdTypes.Int {
        this.level1d = v;
        return v;
    }
    public var level1f(get, set) : StdTypes.Int;
    function get_level1f():StdTypes.Int return this.level1f;
    function set_level1f(v:StdTypes.Int):StdTypes.Int {
        this.level1f = v;
        return v;
    }
    public function new(?level1a:StdTypes.Int, ?level1b:StdTypes.Int, ?level1c:StdTypes.Int, ?level1d:StdTypes.Int, ?level1f:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_Embed0a.Embed0a(level1a, level1b, level1c, level1d, level1f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Embed0p_static_extension) abstract Embed0p(stdgo._internal.encoding.json.Json_Embed0p.Embed0p) from stdgo._internal.encoding.json.Json_Embed0p.Embed0p to stdgo._internal.encoding.json.Json_Embed0p.Embed0p {
    public var point(get, set) : stdgo._internal.image.Image_Point.Point;
    function get_point():stdgo._internal.image.Image_Point.Point return this.point;
    function set_point(v:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point {
        this.point = v;
        return v;
    }
    public function new(?point:stdgo._internal.image.Image_Point.Point) this = new stdgo._internal.encoding.json.Json_Embed0p.Embed0p(point);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Embed0q_static_extension) abstract Embed0q(stdgo._internal.encoding.json.Json_Embed0q.Embed0q) from stdgo._internal.encoding.json.Json_Embed0q.Embed0q to stdgo._internal.encoding.json.Json_Embed0q.Embed0q {
    public var point(get, set) : Point;
    function get_point():Point return this.point;
    function set_point(v:Point):Point {
        this.point = v;
        return v;
    }
    public function new(?point:Point) this = new stdgo._internal.encoding.json.Json_Embed0q.Embed0q(point);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_embed(stdgo._internal.encoding.json.Json_T_embed.T_embed) from stdgo._internal.encoding.json.Json_T_embed.T_embed to stdgo._internal.encoding.json.Json_T_embed.T_embed {
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = v;
        return v;
    }
    public function new(?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_embed.T_embed(q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Loop_static_extension) abstract Loop(stdgo._internal.encoding.json.Json_Loop.Loop) from stdgo._internal.encoding.json.Json_Loop.Loop to stdgo._internal.encoding.json.Json_Loop.Loop {
    public var loop1(get, set) : StdTypes.Int;
    function get_loop1():StdTypes.Int return this.loop1;
    function set_loop1(v:StdTypes.Int):StdTypes.Int {
        this.loop1 = v;
        return v;
    }
    public var loop2(get, set) : StdTypes.Int;
    function get_loop2():StdTypes.Int return this.loop2;
    function set_loop2(v:StdTypes.Int):StdTypes.Int {
        this.loop2 = v;
        return v;
    }
    public var loop(get, set) : Loop;
    function get_loop():Loop return this.loop;
    function set_loop(v:Loop):Loop {
        this.loop = v;
        return v;
    }
    public function new(?loop1:StdTypes.Int, ?loop2:StdTypes.Int, ?loop:Loop) this = new stdgo._internal.encoding.json.Json_Loop.Loop(loop1, loop2, loop);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S5_static_extension) abstract S5(stdgo._internal.encoding.json.Json_S5.S5) from stdgo._internal.encoding.json.Json_S5.S5 to stdgo._internal.encoding.json.Json_S5.S5 {
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
    public function new(?s6:S6, ?s7:S7, ?s8:S8) this = new stdgo._internal.encoding.json.Json_S5.S5(s6, s7, s8);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract S6(stdgo._internal.encoding.json.Json_S6.S6) from stdgo._internal.encoding.json.Json_S6.S6 to stdgo._internal.encoding.json.Json_S6.S6 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_S6.S6(x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S8_static_extension) abstract S8(stdgo._internal.encoding.json.Json_S8.S8) from stdgo._internal.encoding.json.Json_S8.S8 to stdgo._internal.encoding.json.Json_S8.S8 {
    public var s9(get, set) : S9;
    function get_s9():S9 return this.s9;
    function set_s9(v:S9):S9 {
        this.s9 = v;
        return v;
    }
    public function new(?s9:S9) this = new stdgo._internal.encoding.json.Json_S8.S8(s9);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract S9(stdgo._internal.encoding.json.Json_S9.S9) from stdgo._internal.encoding.json.Json_S9.S9 to stdgo._internal.encoding.json.Json_S9.S9 {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = v;
        return v;
    }
    public function new(?x:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_S9.S9(x, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S10_static_extension) abstract S10(stdgo._internal.encoding.json.Json_S10.S10) from stdgo._internal.encoding.json.Json_S10.S10 to stdgo._internal.encoding.json.Json_S10.S10 {
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
    public function new(?s11:S11, ?s12:S12, ?s13:S13) this = new stdgo._internal.encoding.json.Json_S10.S10(s11, s12, s13);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S11_static_extension) abstract S11(stdgo._internal.encoding.json.Json_S11.S11) from stdgo._internal.encoding.json.Json_S11.S11 to stdgo._internal.encoding.json.Json_S11.S11 {
    public var s6(get, set) : S6;
    function get_s6():S6 return this.s6;
    function set_s6(v:S6):S6 {
        this.s6 = v;
        return v;
    }
    public function new(?s6:S6) this = new stdgo._internal.encoding.json.Json_S11.S11(s6);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S12_static_extension) abstract S12(stdgo._internal.encoding.json.Json_S12.S12) from stdgo._internal.encoding.json.Json_S12.S12 to stdgo._internal.encoding.json.Json_S12.S12 {
    public var s6(get, set) : S6;
    function get_s6():S6 return this.s6;
    function set_s6(v:S6):S6 {
        this.s6 = v;
        return v;
    }
    public function new(?s6:S6) this = new stdgo._internal.encoding.json.Json_S12.S12(s6);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.S13_static_extension) abstract S13(stdgo._internal.encoding.json.Json_S13.S13) from stdgo._internal.encoding.json.Json_S13.S13 to stdgo._internal.encoding.json.Json_S13.S13 {
    public var s8(get, set) : S8;
    function get_s8():S8 return this.s8;
    function set_s8(v:S8):S8 {
        this.s8 = v;
        return v;
    }
    public function new(?s8:S8) this = new stdgo._internal.encoding.json.Json_S13.S13(s8);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Ambig(stdgo._internal.encoding.json.Json_Ambig.Ambig) from stdgo._internal.encoding.json.Json_Ambig.Ambig to stdgo._internal.encoding.json.Json_Ambig.Ambig {
    public var first(get, set) : StdTypes.Int;
    function get_first():StdTypes.Int return this.first;
    function set_first(v:StdTypes.Int):StdTypes.Int {
        this.first = v;
        return v;
    }
    public var second(get, set) : StdTypes.Int;
    function get_second():StdTypes.Int return this.second;
    function set_second(v:StdTypes.Int):StdTypes.Int {
        this.second = v;
        return v;
    }
    public function new(?first:StdTypes.Int, ?second:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_Ambig.Ambig(first, second);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract XYZ(stdgo._internal.encoding.json.Json_XYZ.XYZ) from stdgo._internal.encoding.json.Json_XYZ.XYZ to stdgo._internal.encoding.json.Json_XYZ.XYZ {
    public var x(get, set) : stdgo.AnyInterface;
    function get_x():stdgo.AnyInterface return this.x;
    function set_x(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.x = v;
        return v;
    }
    public var y(get, set) : stdgo.AnyInterface;
    function get_y():stdgo.AnyInterface return this.y;
    function set_y(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.y = v;
        return v;
    }
    public var z(get, set) : stdgo.AnyInterface;
    function get_z():stdgo.AnyInterface return this.z;
    function set_z(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.z = v;
        return v;
    }
    public function new(?x:stdgo.AnyInterface, ?y:stdgo.AnyInterface, ?z:stdgo.AnyInterface) this = new stdgo._internal.encoding.json.Json_XYZ.XYZ(x, y, z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unexportedWithMethods_static_extension) abstract T_unexportedWithMethods(stdgo._internal.encoding.json.Json_T_unexportedWithMethods.T_unexportedWithMethods) from stdgo._internal.encoding.json.Json_T_unexportedWithMethods.T_unexportedWithMethods to stdgo._internal.encoding.json.Json_T_unexportedWithMethods.T_unexportedWithMethods {
    public function new() this = new stdgo._internal.encoding.json.Json_T_unexportedWithMethods.T_unexportedWithMethods();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_mapStringToStringData(stdgo._internal.encoding.json.Json_T_mapStringToStringData.T_mapStringToStringData) from stdgo._internal.encoding.json.Json_T_mapStringToStringData.T_mapStringToStringData to stdgo._internal.encoding.json.Json_T_mapStringToStringData.T_mapStringToStringData {
    public var data(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_data():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.data;
    function set_data(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.data = v;
        return v;
    }
    public function new(?data:stdgo.GoMap<stdgo.GoString, stdgo.GoString>) this = new stdgo._internal.encoding.json.Json_T_mapStringToStringData.T_mapStringToStringData(data);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_unmarshalTest(stdgo._internal.encoding.json.Json_T_unmarshalTest.T_unmarshalTest) from stdgo._internal.encoding.json.Json_T_unmarshalTest.T_unmarshalTest to stdgo._internal.encoding.json.Json_T_unmarshalTest.T_unmarshalTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = v;
        return v;
    }
    public var _ptr(get, set) : stdgo.AnyInterface;
    function get__ptr():stdgo.AnyInterface return this._ptr;
    function set__ptr(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._ptr = v;
        return v;
    }
    public var _out(get, set) : stdgo.AnyInterface;
    function get__out():stdgo.AnyInterface return this._out;
    function set__out(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._out = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
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
    public function new(?_in:String, ?_ptr:stdgo.AnyInterface, ?_out:stdgo.AnyInterface, ?_err:stdgo.Error, ?_useNumber:Bool, ?_golden:Bool, ?_disallowUnknownFields:Bool) this = new stdgo._internal.encoding.json.Json_T_unmarshalTest.T_unmarshalTest(_in, _ptr, _out, _err, _useNumber, _golden, _disallowUnknownFields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract B(stdgo._internal.encoding.json.Json_B.B) from stdgo._internal.encoding.json.Json_B.B to stdgo._internal.encoding.json.Json_B.B {
    public var b(get, set) : Bool;
    function get_b():Bool return this.b;
    function set_b(v:Bool):Bool {
        this.b = v;
        return v;
    }
    public function new(?b:Bool) this = new stdgo._internal.encoding.json.Json_B.B(b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract DoublePtr(stdgo._internal.encoding.json.Json_DoublePtr.DoublePtr) from stdgo._internal.encoding.json.Json_DoublePtr.DoublePtr to stdgo._internal.encoding.json.Json_DoublePtr.DoublePtr {
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
    public function new(?i:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>, ?j:stdgo.Pointer<stdgo.Pointer<StdTypes.Int>>) this = new stdgo._internal.encoding.json.Json_DoublePtr.DoublePtr(i, j);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Xint(stdgo._internal.encoding.json.Json_Xint.Xint) from stdgo._internal.encoding.json.Json_Xint.Xint to stdgo._internal.encoding.json.Json_Xint.Xint {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_Xint.Xint(x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract WrongString(stdgo._internal.encoding.json.Json_WrongString.WrongString) from stdgo._internal.encoding.json.Json_WrongString.WrongString to stdgo._internal.encoding.json.Json_WrongString.WrongString {
    public var message(get, set) : String;
    function get_message():String return this.message;
    function set_message(v:String):String {
        this.message = v;
        return v;
    }
    public function new(?message:String) this = new stdgo._internal.encoding.json.Json_WrongString.WrongString(message);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_wrongStringTest(stdgo._internal.encoding.json.Json_T_wrongStringTest.T_wrongStringTest) from stdgo._internal.encoding.json.Json_T_wrongStringTest.T_wrongStringTest to stdgo._internal.encoding.json.Json_T_wrongStringTest.T_wrongStringTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = v;
        return v;
    }
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = v;
        return v;
    }
    public function new(?_in:String, ?_err:String) this = new stdgo._internal.encoding.json.Json_T_wrongStringTest.T_wrongStringTest(_in, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract All(stdgo._internal.encoding.json.Json_All.All) from stdgo._internal.encoding.json.Json_All.All to stdgo._internal.encoding.json.Json_All.All {
    public var bool_(get, set) : Bool;
    function get_bool_():Bool return this.bool_;
    function set_bool_(v:Bool):Bool {
        this.bool_ = v;
        return v;
    }
    public var int_(get, set) : StdTypes.Int;
    function get_int_():StdTypes.Int return this.int_;
    function set_int_(v:StdTypes.Int):StdTypes.Int {
        this.int_ = v;
        return v;
    }
    public var int8(get, set) : StdTypes.Int;
    function get_int8():StdTypes.Int return this.int8;
    function set_int8(v:StdTypes.Int):StdTypes.Int {
        this.int8 = v;
        return v;
    }
    public var int16(get, set) : StdTypes.Int;
    function get_int16():StdTypes.Int return this.int16;
    function set_int16(v:StdTypes.Int):StdTypes.Int {
        this.int16 = v;
        return v;
    }
    public var int32(get, set) : StdTypes.Int;
    function get_int32():StdTypes.Int return this.int32;
    function set_int32(v:StdTypes.Int):StdTypes.Int {
        this.int32 = v;
        return v;
    }
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = v;
        return v;
    }
    public var uint(get, set) : std.UInt;
    function get_uint():std.UInt return this.uint;
    function set_uint(v:std.UInt):std.UInt {
        this.uint = v;
        return v;
    }
    public var uint8(get, set) : std.UInt;
    function get_uint8():std.UInt return this.uint8;
    function set_uint8(v:std.UInt):std.UInt {
        this.uint8 = v;
        return v;
    }
    public var uint16(get, set) : std.UInt;
    function get_uint16():std.UInt return this.uint16;
    function set_uint16(v:std.UInt):std.UInt {
        this.uint16 = v;
        return v;
    }
    public var uint32(get, set) : std.UInt;
    function get_uint32():std.UInt return this.uint32;
    function set_uint32(v:std.UInt):std.UInt {
        this.uint32 = v;
        return v;
    }
    public var uint64(get, set) : haxe.UInt64;
    function get_uint64():haxe.UInt64 return this.uint64;
    function set_uint64(v:haxe.UInt64):haxe.UInt64 {
        this.uint64 = v;
        return v;
    }
    public var uintptr(get, set) : stdgo.GoUIntptr;
    function get_uintptr():stdgo.GoUIntptr return this.uintptr;
    function set_uintptr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptr = v;
        return v;
    }
    public var float32(get, set) : StdTypes.Float;
    function get_float32():StdTypes.Float return this.float32;
    function set_float32(v:StdTypes.Float):StdTypes.Float {
        this.float32 = v;
        return v;
    }
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = v;
        return v;
    }
    public var foo(get, set) : String;
    function get_foo():String return this.foo;
    function set_foo(v:String):String {
        this.foo = v;
        return v;
    }
    public var foo2(get, set) : String;
    function get_foo2():String return this.foo2;
    function set_foo2(v:String):String {
        this.foo2 = v;
        return v;
    }
    public var intStr(get, set) : haxe.Int64;
    function get_intStr():haxe.Int64 return this.intStr;
    function set_intStr(v:haxe.Int64):haxe.Int64 {
        this.intStr = v;
        return v;
    }
    public var uintptrStr(get, set) : stdgo.GoUIntptr;
    function get_uintptrStr():stdgo.GoUIntptr return this.uintptrStr;
    function set_uintptrStr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptrStr = v;
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
        this.string = v;
        return v;
    }
    public var pString(get, set) : stdgo.Pointer<String>;
    function get_pString():stdgo.Pointer<String> return this.pString;
    function set_pString(v:stdgo.Pointer<String>):stdgo.Pointer<String> {
        this.pString = v;
        return v;
    }
    public var map_(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>;
    function get_map_():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> return this.map_;
    function set_map_(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> {
        this.map_ = v;
        return v;
    }
    public var mapP(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>;
    function get_mapP():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>> return this.mapP;
    function set_mapP(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>> {
        this.mapP = v;
        return v;
    }
    public var pMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>;
    function get_pMap():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> return this.pMap;
    function set_pMap(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> {
        this.pMap = v;
        return v;
    }
    public var pMapP(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>;
    function get_pMapP():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>> return this.pMapP;
    function set_pMapP(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>> {
        this.pMapP = v;
        return v;
    }
    public var emptyMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>;
    function get_emptyMap():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> return this.emptyMap;
    function set_emptyMap(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> {
        this.emptyMap = v;
        return v;
    }
    public var nilMap(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>;
    function get_nilMap():stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> return this.nilMap;
    function set_nilMap(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>):stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small> {
        this.nilMap = v;
        return v;
    }
    public var slice(get, set) : Array<Small>;
    function get_slice():Array<Small> return [for (i in this.slice) i];
    function set_slice(v:Array<Small>):Array<Small> {
        this.slice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>);
        return v;
    }
    public var sliceP(get, set) : Array<Small>;
    function get_sliceP():Array<Small> return [for (i in this.sliceP) i];
    function set_sliceP(v:Array<Small>):Array<Small> {
        this.sliceP = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>);
        return v;
    }
    public var pSlice(get, set) : Array<Small>;
    function get_pSlice():Array<Small> return this.pSlice;
    function set_pSlice(v:Array<Small>):Array<Small> {
        this.pSlice = v;
        return v;
    }
    public var pSliceP(get, set) : Array<Small>;
    function get_pSliceP():Array<Small> return this.pSliceP;
    function set_pSliceP(v:Array<Small>):Array<Small> {
        this.pSliceP = v;
        return v;
    }
    public var emptySlice(get, set) : Array<Small>;
    function get_emptySlice():Array<Small> return [for (i in this.emptySlice) i];
    function set_emptySlice(v:Array<Small>):Array<Small> {
        this.emptySlice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>);
        return v;
    }
    public var nilSlice(get, set) : Array<Small>;
    function get_nilSlice():Array<Small> return [for (i in this.nilSlice) i];
    function set_nilSlice(v:Array<Small>):Array<Small> {
        this.nilSlice = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>);
        return v;
    }
    public var stringSlice(get, set) : Array<String>;
    function get_stringSlice():Array<String> return [for (i in this.stringSlice) i];
    function set_stringSlice(v:Array<String>):Array<String> {
        this.stringSlice = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var byteSlice(get, set) : Array<std.UInt>;
    function get_byteSlice():Array<std.UInt> return [for (i in this.byteSlice) i];
    function set_byteSlice(v:Array<std.UInt>):Array<std.UInt> {
        this.byteSlice = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
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
        this.pSmall = v;
        return v;
    }
    public var pPSmall(get, set) : Small;
    function get_pPSmall():Small return this.pPSmall;
    function set_pPSmall(v:Small):Small {
        this.pPSmall = v;
        return v;
    }
    public var interface_(get, set) : stdgo.AnyInterface;
    function get_interface_():stdgo.AnyInterface return this.interface_;
    function set_interface_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.interface_ = v;
        return v;
    }
    public var pInterface(get, set) : stdgo.AnyInterface;
    function get_pInterface():stdgo.AnyInterface return this.pInterface;
    function set_pInterface(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.pInterface = v;
        return v;
    }
    public var _unexported(get, set) : StdTypes.Int;
    function get__unexported():StdTypes.Int return this._unexported;
    function set__unexported(v:StdTypes.Int):StdTypes.Int {
        this._unexported = v;
        return v;
    }
    public function new(?bool_:Bool, ?int_:StdTypes.Int, ?int8:StdTypes.Int, ?int16:StdTypes.Int, ?int32:StdTypes.Int, ?int64:haxe.Int64, ?uint:std.UInt, ?uint8:std.UInt, ?uint16:std.UInt, ?uint32:std.UInt, ?uint64:haxe.UInt64, ?uintptr:stdgo.GoUIntptr, ?float32:StdTypes.Float, ?float64:StdTypes.Float, ?foo:String, ?foo2:String, ?intStr:haxe.Int64, ?uintptrStr:stdgo.GoUIntptr, ?pBool:stdgo.Pointer<Bool>, ?pInt:stdgo.Pointer<StdTypes.Int>, ?pInt8:stdgo.Pointer<StdTypes.Int>, ?pInt16:stdgo.Pointer<StdTypes.Int>, ?pInt32:stdgo.Pointer<StdTypes.Int>, ?pInt64:stdgo.Pointer<haxe.Int64>, ?pUint:stdgo.Pointer<std.UInt>, ?pUint8:stdgo.Pointer<std.UInt>, ?pUint16:stdgo.Pointer<std.UInt>, ?pUint32:stdgo.Pointer<std.UInt>, ?pUint64:stdgo.Pointer<haxe.UInt64>, ?pUintptr:stdgo.Pointer<stdgo.GoUIntptr>, ?pFloat32:stdgo.Pointer<StdTypes.Float>, ?pFloat64:stdgo.Pointer<StdTypes.Float>, ?string:String, ?pString:stdgo.Pointer<String>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>, ?mapP:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>, ?pMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>, ?pMapP:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>, ?emptyMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>, ?nilMap:stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.json.Json_Small.Small>, ?slice:Array<Small>, ?sliceP:Array<Small>, ?pSlice:Array<Small>, ?pSliceP:Array<Small>, ?emptySlice:Array<Small>, ?nilSlice:Array<Small>, ?stringSlice:Array<String>, ?byteSlice:Array<std.UInt>, ?small:Small, ?pSmall:Small, ?pPSmall:Small, ?interface_:stdgo.AnyInterface, ?pInterface:stdgo.AnyInterface, ?_unexported:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_All.All(
bool_,
int_,
int8,
int16,
int32,
int64,
uint,
uint8,
uint16,
uint32,
uint64,
uintptr,
float32,
float64,
foo,
foo2,
intStr,
uintptrStr,
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
string,
pString,
map_,
mapP,
pMap,
pMapP,
emptyMap,
nilMap,
([for (i in slice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>),
([for (i in sliceP) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.json.Json_Small.Small>>),
pSlice,
pSliceP,
([for (i in emptySlice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>),
([for (i in nilSlice) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_Small.Small>),
([for (i in stringSlice) i] : stdgo.Slice<stdgo.GoString>),
([for (i in byteSlice) i] : stdgo.Slice<stdgo.GoUInt8>),
small,
pSmall,
pPSmall,
interface_,
pInterface,
_unexported);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Small(stdgo._internal.encoding.json.Json_Small.Small) from stdgo._internal.encoding.json.Json_Small.Small to stdgo._internal.encoding.json.Json_Small.Small {
    public var tag(get, set) : String;
    function get_tag():String return this.tag;
    function set_tag(v:String):String {
        this.tag = v;
        return v;
    }
    public function new(?tag:String) this = new stdgo._internal.encoding.json.Json_Small.Small(tag);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract NullTest(stdgo._internal.encoding.json.Json_NullTest.NullTest) from stdgo._internal.encoding.json.Json_NullTest.NullTest to stdgo._internal.encoding.json.Json_NullTest.NullTest {
    public var bool_(get, set) : Bool;
    function get_bool_():Bool return this.bool_;
    function set_bool_(v:Bool):Bool {
        this.bool_ = v;
        return v;
    }
    public var int_(get, set) : StdTypes.Int;
    function get_int_():StdTypes.Int return this.int_;
    function set_int_(v:StdTypes.Int):StdTypes.Int {
        this.int_ = v;
        return v;
    }
    public var int8(get, set) : StdTypes.Int;
    function get_int8():StdTypes.Int return this.int8;
    function set_int8(v:StdTypes.Int):StdTypes.Int {
        this.int8 = v;
        return v;
    }
    public var int16(get, set) : StdTypes.Int;
    function get_int16():StdTypes.Int return this.int16;
    function set_int16(v:StdTypes.Int):StdTypes.Int {
        this.int16 = v;
        return v;
    }
    public var int32(get, set) : StdTypes.Int;
    function get_int32():StdTypes.Int return this.int32;
    function set_int32(v:StdTypes.Int):StdTypes.Int {
        this.int32 = v;
        return v;
    }
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = v;
        return v;
    }
    public var uint(get, set) : std.UInt;
    function get_uint():std.UInt return this.uint;
    function set_uint(v:std.UInt):std.UInt {
        this.uint = v;
        return v;
    }
    public var uint8(get, set) : std.UInt;
    function get_uint8():std.UInt return this.uint8;
    function set_uint8(v:std.UInt):std.UInt {
        this.uint8 = v;
        return v;
    }
    public var uint16(get, set) : std.UInt;
    function get_uint16():std.UInt return this.uint16;
    function set_uint16(v:std.UInt):std.UInt {
        this.uint16 = v;
        return v;
    }
    public var uint32(get, set) : std.UInt;
    function get_uint32():std.UInt return this.uint32;
    function set_uint32(v:std.UInt):std.UInt {
        this.uint32 = v;
        return v;
    }
    public var uint64(get, set) : haxe.UInt64;
    function get_uint64():haxe.UInt64 return this.uint64;
    function set_uint64(v:haxe.UInt64):haxe.UInt64 {
        this.uint64 = v;
        return v;
    }
    public var float32(get, set) : StdTypes.Float;
    function get_float32():StdTypes.Float return this.float32;
    function set_float32(v:StdTypes.Float):StdTypes.Float {
        this.float32 = v;
        return v;
    }
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = v;
        return v;
    }
    public var string(get, set) : String;
    function get_string():String return this.string;
    function set_string(v:String):String {
        this.string = v;
        return v;
    }
    public var pBool(get, set) : stdgo.Pointer<Bool>;
    function get_pBool():stdgo.Pointer<Bool> return this.pBool;
    function set_pBool(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        this.pBool = v;
        return v;
    }
    public var map_(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_map_():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.map_;
    function set_map_(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.map_ = v;
        return v;
    }
    public var slice(get, set) : Array<String>;
    function get_slice():Array<String> return [for (i in this.slice) i];
    function set_slice(v:Array<String>):Array<String> {
        this.slice = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var interface_(get, set) : stdgo.AnyInterface;
    function get_interface_():stdgo.AnyInterface return this.interface_;
    function set_interface_(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.interface_ = v;
        return v;
    }
    public var pRaw(get, set) : RawMessage;
    function get_pRaw():RawMessage return this.pRaw;
    function set_pRaw(v:RawMessage):RawMessage {
        this.pRaw = v;
        return v;
    }
    public var pTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_pTime():stdgo._internal.time.Time_Time.Time return this.pTime;
    function set_pTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.pTime = v;
        return v;
    }
    public var pBigInt(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_pBigInt():stdgo._internal.math.big.Big_Int_.Int_ return this.pBigInt;
    function set_pBigInt(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.pBigInt = v;
        return v;
    }
    public var pText(get, set) : MustNotUnmarshalText;
    function get_pText():MustNotUnmarshalText return this.pText;
    function set_pText(v:MustNotUnmarshalText):MustNotUnmarshalText {
        this.pText = v;
        return v;
    }
    public var pBuffer(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get_pBuffer():stdgo._internal.bytes.Bytes_Buffer.Buffer return this.pBuffer;
    function set_pBuffer(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this.pBuffer = v;
        return v;
    }
    public var pStruct(get, set) : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue;
    function get_pStruct():stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue return this.pStruct;
    function set_pStruct(v:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue):stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue {
        this.pStruct = v;
        return v;
    }
    public var raw(get, set) : RawMessage;
    function get_raw():RawMessage return this.raw;
    function set_raw(v:RawMessage):RawMessage {
        this.raw = v;
        return v;
    }
    public var time(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_time():stdgo._internal.time.Time_Time.Time return this.time;
    function set_time(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.time = v;
        return v;
    }
    public var bigInt(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_bigInt():stdgo._internal.math.big.Big_Int_.Int_ return this.bigInt;
    function set_bigInt(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.bigInt = v;
        return v;
    }
    public var text(get, set) : MustNotUnmarshalText;
    function get_text():MustNotUnmarshalText return this.text;
    function set_text(v:MustNotUnmarshalText):MustNotUnmarshalText {
        this.text = v;
        return v;
    }
    public var buffer(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get_buffer():stdgo._internal.bytes.Bytes_Buffer.Buffer return this.buffer;
    function set_buffer(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this.buffer = v;
        return v;
    }
    public var struct_(get, set) : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue;
    function get_struct_():stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue return this.struct_;
    function set_struct_(v:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue):stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue {
        this.struct_ = v;
        return v;
    }
    public function new(?bool_:Bool, ?int_:StdTypes.Int, ?int8:StdTypes.Int, ?int16:StdTypes.Int, ?int32:StdTypes.Int, ?int64:haxe.Int64, ?uint:std.UInt, ?uint8:std.UInt, ?uint16:std.UInt, ?uint32:std.UInt, ?uint64:haxe.UInt64, ?float32:StdTypes.Float, ?float64:StdTypes.Float, ?string:String, ?pBool:stdgo.Pointer<Bool>, ?map_:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?slice:Array<String>, ?interface_:stdgo.AnyInterface, ?pRaw:RawMessage, ?pTime:stdgo._internal.time.Time_Time.Time, ?pBigInt:stdgo._internal.math.big.Big_Int_.Int_, ?pText:MustNotUnmarshalText, ?pBuffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?pStruct:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue, ?raw:RawMessage, ?time:stdgo._internal.time.Time_Time.Time, ?bigInt:stdgo._internal.math.big.Big_Int_.Int_, ?text:MustNotUnmarshalText, ?buffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?struct_:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue) this = new stdgo._internal.encoding.json.Json_NullTest.NullTest(
bool_,
int_,
int8,
int16,
int32,
int64,
uint,
uint8,
uint16,
uint32,
uint64,
float32,
float64,
string,
pBool,
map_,
([for (i in slice) i] : stdgo.Slice<stdgo.GoString>),
interface_,
pRaw,
pTime,
pBigInt,
pText,
pBuffer,
pStruct,
raw,
time,
bigInt,
text,
buffer,
struct_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.MustNotUnmarshalJSON_static_extension) abstract MustNotUnmarshalJSON(stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON.MustNotUnmarshalJSON) from stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON.MustNotUnmarshalJSON to stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON.MustNotUnmarshalJSON {
    public function new() this = new stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON.MustNotUnmarshalJSON();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.MustNotUnmarshalText_static_extension) abstract MustNotUnmarshalText(stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText) from stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText to stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText {
    public function new() this = new stdgo._internal.encoding.json.Json_MustNotUnmarshalText.MustNotUnmarshalText();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_unexportedFields(stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields) from stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields to stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var _m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get__m():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this._m = v;
        return v;
    }
    public var _m2(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get__m2():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this._m2;
    function set__m2(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this._m2 = v;
        return v;
    }
    public var _s(get, set) : Array<StdTypes.Int>;
    function get__s():Array<StdTypes.Int> return [for (i in this._s) i];
    function set__s(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._s = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?name:String, ?_m:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?_m2:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?_s:Array<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json_T_unexportedFields.T_unexportedFields(name, _m, _m2, ([for (i in _s) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_unmarshalPanic_static_extension) abstract T_unmarshalPanic(stdgo._internal.encoding.json.Json_T_unmarshalPanic.T_unmarshalPanic) from stdgo._internal.encoding.json.Json_T_unmarshalPanic.T_unmarshalPanic to stdgo._internal.encoding.json.Json_T_unmarshalPanic.T_unmarshalPanic {
    public function new() this = new stdgo._internal.encoding.json.Json_T_unmarshalPanic.T_unmarshalPanic();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnsupportedTypeError_static_extension) abstract UnsupportedTypeError(stdgo._internal.encoding.json.Json_UnsupportedTypeError.UnsupportedTypeError) from stdgo._internal.encoding.json.Json_UnsupportedTypeError.UnsupportedTypeError to stdgo._internal.encoding.json.Json_UnsupportedTypeError.UnsupportedTypeError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_Type_.Type_) this = new stdgo._internal.encoding.json.Json_UnsupportedTypeError.UnsupportedTypeError(type);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.UnsupportedValueError_static_extension) abstract UnsupportedValueError(stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError) from stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError to stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError {
    public var value(get, set) : stdgo._internal.reflect.Reflect_Value.Value;
    function get_value():stdgo._internal.reflect.Reflect_Value.Value return this.value;
    function set_value(v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        this.value = v;
        return v;
    }
    public var str(get, set) : String;
    function get_str():String return this.str;
    function set_str(v:String):String {
        this.str = v;
        return v;
    }
    public function new(?value:stdgo._internal.reflect.Reflect_Value.Value, ?str:String) this = new stdgo._internal.encoding.json.Json_UnsupportedValueError.UnsupportedValueError(value, str);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.InvalidUTF8Error_static_extension) abstract InvalidUTF8Error(stdgo._internal.encoding.json.Json_InvalidUTF8Error.InvalidUTF8Error) from stdgo._internal.encoding.json.Json_InvalidUTF8Error.InvalidUTF8Error to stdgo._internal.encoding.json.Json_InvalidUTF8Error.InvalidUTF8Error {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.json.Json_InvalidUTF8Error.InvalidUTF8Error(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.MarshalerError_static_extension) abstract MarshalerError(stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError) from stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError to stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError {
    public var type(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get_type():stdgo._internal.reflect.Reflect_Type_.Type_ return this.type;
    function set_type(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this.type = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = v;
        return v;
    }
    public var _sourceFunc(get, set) : String;
    function get__sourceFunc():String return this._sourceFunc;
    function set__sourceFunc(v:String):String {
        this._sourceFunc = v;
        return v;
    }
    public function new(?type:stdgo._internal.reflect.Reflect_Type_.Type_, ?err:stdgo.Error, ?_sourceFunc:String) this = new stdgo._internal.encoding.json.Json_MarshalerError.MarshalerError(type, err, _sourceFunc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_encodeState_static_extension) abstract T_encodeState(stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState) from stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState to stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState {
    public var buffer(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get_buffer():stdgo._internal.bytes.Bytes_Buffer.Buffer return this.buffer;
    function set_buffer(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this.buffer = v;
        return v;
    }
    public var _ptrLevel(get, set) : std.UInt;
    function get__ptrLevel():std.UInt return this._ptrLevel;
    function set__ptrLevel(v:std.UInt):std.UInt {
        this._ptrLevel = v;
        return v;
    }
    public var _ptrSeen(get, set) : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>;
    function get__ptrSeen():stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue> return this._ptrSeen;
    function set__ptrSeen(v:stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>):stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue> {
        this._ptrSeen = v;
        return v;
    }
    public function new(?buffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_ptrLevel:std.UInt, ?_ptrSeen:stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>) this = new stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState(buffer, _ptrLevel, _ptrSeen);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_jsonError_static_extension) abstract T_jsonError(stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError) from stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError to stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError {
    public var _error(get, set) : stdgo.Error;
    function get__error():stdgo.Error return this._error;
    function set__error(v:stdgo.Error):stdgo.Error {
        this._error = v;
        return v;
    }
    public function new(?_error:stdgo.Error) this = new stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError(_error);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_encOpts(stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts) from stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts to stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts {
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
    public function new(?_quoted:Bool, ?_escapeHTML:Bool) this = new stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts(_quoted, _escapeHTML);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_structEncoder_static_extension) abstract T_structEncoder(stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder) from stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder to stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder {
    public var _fields(get, set) : T_structFields;
    function get__fields():T_structFields return this._fields;
    function set__fields(v:T_structFields):T_structFields {
        this._fields = v;
        return v;
    }
    public function new(?_fields:T_structFields) this = new stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder(_fields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_structFields(stdgo._internal.encoding.json.Json_T_structFields.T_structFields) from stdgo._internal.encoding.json.Json_T_structFields.T_structFields to stdgo._internal.encoding.json.Json_T_structFields.T_structFields {
    public var _list(get, set) : Array<T_field>;
    function get__list():Array<T_field> return [for (i in this._list) i];
    function set__list(v:Array<T_field>):Array<T_field> {
        this._list = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_T_field.T_field>);
        return v;
    }
    public var _byExactName(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>;
    function get__byExactName():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>> return this._byExactName;
    function set__byExactName(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>> {
        this._byExactName = v;
        return v;
    }
    public var _byFoldedName(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>;
    function get__byFoldedName():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>> return this._byFoldedName;
    function set__byFoldedName(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>> {
        this._byFoldedName = v;
        return v;
    }
    public function new(?_list:Array<T_field>, ?_byExactName:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>, ?_byFoldedName:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>>) this = new stdgo._internal.encoding.json.Json_T_structFields.T_structFields(([for (i in _list) i] : stdgo.Slice<stdgo._internal.encoding.json.Json_T_field.T_field>), _byExactName, _byFoldedName);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_mapEncoder_static_extension) abstract T_mapEncoder(stdgo._internal.encoding.json.Json_T_mapEncoder.T_mapEncoder) from stdgo._internal.encoding.json.Json_T_mapEncoder.T_mapEncoder to stdgo._internal.encoding.json.Json_T_mapEncoder.T_mapEncoder {
    public var _elemEnc(get, set) : T_encoderFunc;
    function get__elemEnc():T_encoderFunc return this._elemEnc;
    function set__elemEnc(v:T_encoderFunc):T_encoderFunc {
        this._elemEnc = v;
        return v;
    }
    public function new(?_elemEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_T_mapEncoder.T_mapEncoder(_elemEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_sliceEncoder_static_extension) abstract T_sliceEncoder(stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder) from stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder to stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder {
    public var _arrayEnc(get, set) : T_encoderFunc;
    function get__arrayEnc():T_encoderFunc return this._arrayEnc;
    function set__arrayEnc(v:T_encoderFunc):T_encoderFunc {
        this._arrayEnc = v;
        return v;
    }
    public function new(?_arrayEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder(_arrayEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_arrayEncoder_static_extension) abstract T_arrayEncoder(stdgo._internal.encoding.json.Json_T_arrayEncoder.T_arrayEncoder) from stdgo._internal.encoding.json.Json_T_arrayEncoder.T_arrayEncoder to stdgo._internal.encoding.json.Json_T_arrayEncoder.T_arrayEncoder {
    public var _elemEnc(get, set) : T_encoderFunc;
    function get__elemEnc():T_encoderFunc return this._elemEnc;
    function set__elemEnc(v:T_encoderFunc):T_encoderFunc {
        this._elemEnc = v;
        return v;
    }
    public function new(?_elemEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_T_arrayEncoder.T_arrayEncoder(_elemEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_ptrEncoder_static_extension) abstract T_ptrEncoder(stdgo._internal.encoding.json.Json_T_ptrEncoder.T_ptrEncoder) from stdgo._internal.encoding.json.Json_T_ptrEncoder.T_ptrEncoder to stdgo._internal.encoding.json.Json_T_ptrEncoder.T_ptrEncoder {
    public var _elemEnc(get, set) : T_encoderFunc;
    function get__elemEnc():T_encoderFunc return this._elemEnc;
    function set__elemEnc(v:T_encoderFunc):T_encoderFunc {
        this._elemEnc = v;
        return v;
    }
    public function new(?_elemEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_T_ptrEncoder.T_ptrEncoder(_elemEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_condAddrEncoder_static_extension) abstract T_condAddrEncoder(stdgo._internal.encoding.json.Json_T_condAddrEncoder.T_condAddrEncoder) from stdgo._internal.encoding.json.Json_T_condAddrEncoder.T_condAddrEncoder to stdgo._internal.encoding.json.Json_T_condAddrEncoder.T_condAddrEncoder {
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
    public function new(?_canAddrEnc:T_encoderFunc, ?_elseEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_T_condAddrEncoder.T_condAddrEncoder(_canAddrEnc, _elseEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_reflectWithString_static_extension) abstract T_reflectWithString(stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString) from stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString to stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString {
    public var _k(get, set) : stdgo._internal.reflect.Reflect_Value.Value;
    function get__k():stdgo._internal.reflect.Reflect_Value.Value return this._k;
    function set__k(v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        this._k = v;
        return v;
    }
    public var _v(get, set) : stdgo._internal.reflect.Reflect_Value.Value;
    function get__v():stdgo._internal.reflect.Reflect_Value.Value return this._v;
    function set__v(v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        this._v = v;
        return v;
    }
    public var _ks(get, set) : String;
    function get__ks():String return this._ks;
    function set__ks(v:String):String {
        this._ks = v;
        return v;
    }
    public function new(?_k:stdgo._internal.reflect.Reflect_Value.Value, ?_v:stdgo._internal.reflect.Reflect_Value.Value, ?_ks:String) this = new stdgo._internal.encoding.json.Json_T_reflectWithString.T_reflectWithString(_k, _v, _ks);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_field(stdgo._internal.encoding.json.Json_T_field.T_field) from stdgo._internal.encoding.json.Json_T_field.T_field to stdgo._internal.encoding.json.Json_T_field.T_field {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _nameBytes(get, set) : Array<std.UInt>;
    function get__nameBytes():Array<std.UInt> return [for (i in this._nameBytes) i];
    function set__nameBytes(v:Array<std.UInt>):Array<std.UInt> {
        this._nameBytes = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _nameNonEsc(get, set) : String;
    function get__nameNonEsc():String return this._nameNonEsc;
    function set__nameNonEsc(v:String):String {
        this._nameNonEsc = v;
        return v;
    }
    public var _nameEscHTML(get, set) : String;
    function get__nameEscHTML():String return this._nameEscHTML;
    function set__nameEscHTML(v:String):String {
        this._nameEscHTML = v;
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
        this._index = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _typ(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get__typ():stdgo._internal.reflect.Reflect_Type_.Type_ return this._typ;
    function set__typ(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
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
    public function new(?_name:String, ?_nameBytes:Array<std.UInt>, ?_nameNonEsc:String, ?_nameEscHTML:String, ?_tag:Bool, ?_index:Array<StdTypes.Int>, ?_typ:stdgo._internal.reflect.Reflect_Type_.Type_, ?_omitEmpty:Bool, ?_quoted:Bool, ?_encoder:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_T_field.T_field(_name, ([for (i in _nameBytes) i] : stdgo.Slice<stdgo.GoUInt8>), _nameNonEsc, _nameEscHTML, _tag, ([for (i in _index) i] : stdgo.Slice<stdgo.GoInt>), _typ, _omitEmpty, _quoted, _encoder);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Optionals(stdgo._internal.encoding.json.Json_Optionals.Optionals) from stdgo._internal.encoding.json.Json_Optionals.Optionals to stdgo._internal.encoding.json.Json_Optionals.Optionals {
    public var sr(get, set) : String;
    function get_sr():String return this.sr;
    function set_sr(v:String):String {
        this.sr = v;
        return v;
    }
    public var so(get, set) : String;
    function get_so():String return this.so;
    function set_so(v:String):String {
        this.so = v;
        return v;
    }
    public var sw(get, set) : String;
    function get_sw():String return this.sw;
    function set_sw(v:String):String {
        this.sw = v;
        return v;
    }
    public var ir(get, set) : StdTypes.Int;
    function get_ir():StdTypes.Int return this.ir;
    function set_ir(v:StdTypes.Int):StdTypes.Int {
        this.ir = v;
        return v;
    }
    public var io(get, set) : StdTypes.Int;
    function get_io():StdTypes.Int return this.io;
    function set_io(v:StdTypes.Int):StdTypes.Int {
        this.io = v;
        return v;
    }
    public var slr(get, set) : Array<String>;
    function get_slr():Array<String> return [for (i in this.slr) i];
    function set_slr(v:Array<String>):Array<String> {
        this.slr = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var slo(get, set) : Array<String>;
    function get_slo():Array<String> return [for (i in this.slo) i];
    function set_slo(v:Array<String>):Array<String> {
        this.slo = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var mr(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get_mr():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this.mr;
    function set_mr(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this.mr = v;
        return v;
    }
    public var mo(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get_mo():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this.mo;
    function set_mo(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this.mo = v;
        return v;
    }
    public var fr(get, set) : StdTypes.Float;
    function get_fr():StdTypes.Float return this.fr;
    function set_fr(v:StdTypes.Float):StdTypes.Float {
        this.fr = v;
        return v;
    }
    public var fo(get, set) : StdTypes.Float;
    function get_fo():StdTypes.Float return this.fo;
    function set_fo(v:StdTypes.Float):StdTypes.Float {
        this.fo = v;
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
        this.ur = v;
        return v;
    }
    public var uo(get, set) : std.UInt;
    function get_uo():std.UInt return this.uo;
    function set_uo(v:std.UInt):std.UInt {
        this.uo = v;
        return v;
    }
    public var str(get, set) : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue;
    function get_str():stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue return this.str;
    function set_str(v:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue):stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue {
        this.str = v;
        return v;
    }
    public var sto(get, set) : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue;
    function get_sto():stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue return this.sto;
    function set_sto(v:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue):stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue {
        this.sto = v;
        return v;
    }
    public function new(?sr:String, ?so:String, ?sw:String, ?ir:StdTypes.Int, ?io:StdTypes.Int, ?slr:Array<String>, ?slo:Array<String>, ?mr:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?mo:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>, ?fr:StdTypes.Float, ?fo:StdTypes.Float, ?br:Bool, ?bo:Bool, ?ur:std.UInt, ?uo:std.UInt, ?str:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue, ?sto:stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue) this = new stdgo._internal.encoding.json.Json_Optionals.Optionals(
sr,
so,
sw,
ir,
io,
([for (i in slr) i] : stdgo.Slice<stdgo.GoString>),
([for (i in slo) i] : stdgo.Slice<stdgo.GoString>),
mr,
mo,
fr,
fo,
br,
bo,
ur,
uo,
str,
sto);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract StringTag(stdgo._internal.encoding.json.Json_StringTag.StringTag) from stdgo._internal.encoding.json.Json_StringTag.StringTag to stdgo._internal.encoding.json.Json_StringTag.StringTag {
    public var boolStr(get, set) : Bool;
    function get_boolStr():Bool return this.boolStr;
    function set_boolStr(v:Bool):Bool {
        this.boolStr = v;
        return v;
    }
    public var intStr(get, set) : haxe.Int64;
    function get_intStr():haxe.Int64 return this.intStr;
    function set_intStr(v:haxe.Int64):haxe.Int64 {
        this.intStr = v;
        return v;
    }
    public var uintptrStr(get, set) : stdgo.GoUIntptr;
    function get_uintptrStr():stdgo.GoUIntptr return this.uintptrStr;
    function set_uintptrStr(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.uintptrStr = v;
        return v;
    }
    public var strStr(get, set) : String;
    function get_strStr():String return this.strStr;
    function set_strStr(v:String):String {
        this.strStr = v;
        return v;
    }
    public var numberStr(get, set) : Number;
    function get_numberStr():Number return this.numberStr;
    function set_numberStr(v:Number):Number {
        this.numberStr = v;
        return v;
    }
    public function new(?boolStr:Bool, ?intStr:haxe.Int64, ?uintptrStr:stdgo.GoUIntptr, ?strStr:String, ?numberStr:Number) this = new stdgo._internal.encoding.json.Json_StringTag.StringTag(boolStr, intStr, uintptrStr, strStr, numberStr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract SamePointerNoCycle(stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle) from stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle to stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle {
    public var ptr1(get, set) : SamePointerNoCycle;
    function get_ptr1():SamePointerNoCycle return this.ptr1;
    function set_ptr1(v:SamePointerNoCycle):SamePointerNoCycle {
        this.ptr1 = v;
        return v;
    }
    public var ptr2(get, set) : SamePointerNoCycle;
    function get_ptr2():SamePointerNoCycle return this.ptr2;
    function set_ptr2(v:SamePointerNoCycle):SamePointerNoCycle {
        this.ptr2 = v;
        return v;
    }
    public function new(?ptr1:SamePointerNoCycle, ?ptr2:SamePointerNoCycle) this = new stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle(ptr1, ptr2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract PointerCycle(stdgo._internal.encoding.json.Json_PointerCycle.PointerCycle) from stdgo._internal.encoding.json.Json_PointerCycle.PointerCycle to stdgo._internal.encoding.json.Json_PointerCycle.PointerCycle {
    public var ptr(get, set) : PointerCycle;
    function get_ptr():PointerCycle return this.ptr;
    function set_ptr(v:PointerCycle):PointerCycle {
        this.ptr = v;
        return v;
    }
    public function new(?ptr:PointerCycle) this = new stdgo._internal.encoding.json.Json_PointerCycle.PointerCycle(ptr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract PointerCycleIndirect(stdgo._internal.encoding.json.Json_PointerCycleIndirect.PointerCycleIndirect) from stdgo._internal.encoding.json.Json_PointerCycleIndirect.PointerCycleIndirect to stdgo._internal.encoding.json.Json_PointerCycleIndirect.PointerCycleIndirect {
    public var ptrs(get, set) : Array<stdgo.AnyInterface>;
    function get_ptrs():Array<stdgo.AnyInterface> return [for (i in this.ptrs) i];
    function set_ptrs(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this.ptrs = ([for (i in v) i] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?ptrs:Array<stdgo.AnyInterface>) this = new stdgo._internal.encoding.json.Json_PointerCycleIndirect.PointerCycleIndirect(([for (i in ptrs) i] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract BugA(stdgo._internal.encoding.json.Json_BugA.BugA) from stdgo._internal.encoding.json.Json_BugA.BugA to stdgo._internal.encoding.json.Json_BugA.BugA {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.json.Json_BugA.BugA(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugB_static_extension) abstract BugB(stdgo._internal.encoding.json.Json_BugB.BugB) from stdgo._internal.encoding.json.Json_BugB.BugB to stdgo._internal.encoding.json.Json_BugB.BugB {
    public var bugA(get, set) : BugA;
    function get_bugA():BugA return this.bugA;
    function set_bugA(v:BugA):BugA {
        this.bugA = v;
        return v;
    }
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public function new(?bugA:BugA, ?s:String) this = new stdgo._internal.encoding.json.Json_BugB.BugB(bugA, s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract BugC(stdgo._internal.encoding.json.Json_BugC.BugC) from stdgo._internal.encoding.json.Json_BugC.BugC to stdgo._internal.encoding.json.Json_BugC.BugC {
    public var s(get, set) : String;
    function get_s():String return this.s;
    function set_s(v:String):String {
        this.s = v;
        return v;
    }
    public function new(?s:String) this = new stdgo._internal.encoding.json.Json_BugC.BugC(s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugX_static_extension) abstract BugX(stdgo._internal.encoding.json.Json_BugX.BugX) from stdgo._internal.encoding.json.Json_BugX.BugX to stdgo._internal.encoding.json.Json_BugX.BugX {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
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
    public function new(?a:StdTypes.Int, ?bugA:BugA, ?bugB:BugB) this = new stdgo._internal.encoding.json.Json_BugX.BugX(a, bugA, bugB);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract BugD(stdgo._internal.encoding.json.Json_BugD.BugD) from stdgo._internal.encoding.json.Json_BugD.BugD to stdgo._internal.encoding.json.Json_BugD.BugD {
    public var xXX(get, set) : String;
    function get_xXX():String return this.xXX;
    function set_xXX(v:String):String {
        this.xXX = v;
        return v;
    }
    public function new(?xXX:String) this = new stdgo._internal.encoding.json.Json_BugD.BugD(xXX);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugY_static_extension) abstract BugY(stdgo._internal.encoding.json.Json_BugY.BugY) from stdgo._internal.encoding.json.Json_BugY.BugY to stdgo._internal.encoding.json.Json_BugY.BugY {
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
    public function new(?bugA:BugA, ?bugD:BugD) this = new stdgo._internal.encoding.json.Json_BugY.BugY(bugA, bugD);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.BugZ_static_extension) abstract BugZ(stdgo._internal.encoding.json.Json_BugZ.BugZ) from stdgo._internal.encoding.json.Json_BugZ.BugZ to stdgo._internal.encoding.json.Json_BugZ.BugZ {
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
    public function new(?bugA:BugA, ?bugC:BugC, ?bugY:BugY) this = new stdgo._internal.encoding.json.Json_BugZ.BugZ(bugA, bugC, bugY);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_marshalPanic_static_extension) abstract T_marshalPanic(stdgo._internal.encoding.json.Json_T_marshalPanic.T_marshalPanic) from stdgo._internal.encoding.json.Json_T_marshalPanic.T_marshalPanic to stdgo._internal.encoding.json.Json_T_marshalPanic.T_marshalPanic {
    public function new() this = new stdgo._internal.encoding.json.Json_T_marshalPanic.T_marshalPanic();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.SyntaxError_static_extension) abstract SyntaxError(stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError) from stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError to stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var offset(get, set) : haxe.Int64;
    function get_offset():haxe.Int64 return this.offset;
    function set_offset(v:haxe.Int64):haxe.Int64 {
        this.offset = v;
        return v;
    }
    public function new(?_msg:String, ?offset:haxe.Int64) this = new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(_msg, offset);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_scanner_static_extension) abstract T_scanner(stdgo._internal.encoding.json.Json_T_scanner.T_scanner) from stdgo._internal.encoding.json.Json_T_scanner.T_scanner to stdgo._internal.encoding.json.Json_T_scanner.T_scanner {
    public var _step(get, set) : (stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt;
    function get__step():(stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt return (_0, _1) -> this._step(_0, _1);
    function set__step(v:(stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt):(stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt {
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
        this._parseState = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _bytes(get, set) : haxe.Int64;
    function get__bytes():haxe.Int64 return this._bytes;
    function set__bytes(v:haxe.Int64):haxe.Int64 {
        this._bytes = v;
        return v;
    }
    public function new(?_step:(stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt, ?_endTop:Bool, ?_parseState:Array<StdTypes.Int>, ?_err:stdgo.Error, ?_bytes:haxe.Int64) this = new stdgo._internal.encoding.json.Json_T_scanner.T_scanner(_step, _endTop, ([for (i in _parseState) i] : stdgo.Slice<stdgo.GoInt>), _err, _bytes);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_example(stdgo._internal.encoding.json.Json_T_example.T_example) from stdgo._internal.encoding.json.Json_T_example.T_example to stdgo._internal.encoding.json.Json_T_example.T_example {
    public var _compact(get, set) : String;
    function get__compact():String return this._compact;
    function set__compact(v:String):String {
        this._compact = v;
        return v;
    }
    public var _indent(get, set) : String;
    function get__indent():String return this._indent;
    function set__indent(v:String):String {
        this._indent = v;
        return v;
    }
    public function new(?_compact:String, ?_indent:String) this = new stdgo._internal.encoding.json.Json_T_example.T_example(_compact, _indent);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_indentErrorTest(stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest) from stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest to stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest {
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_in:String, ?_err:stdgo.Error) this = new stdgo._internal.encoding.json.Json_T_indentErrorTest.T_indentErrorTest(_in, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Decoder_static_extension) abstract Decoder(stdgo._internal.encoding.json.Json_Decoder.Decoder) from stdgo._internal.encoding.json.Json_Decoder.Decoder to stdgo._internal.encoding.json.Json_Decoder.Decoder {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
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
        this._scanp = v;
        return v;
    }
    public var _scanned(get, set) : haxe.Int64;
    function get__scanned():haxe.Int64 return this._scanned;
    function set__scanned(v:haxe.Int64):haxe.Int64 {
        this._scanned = v;
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
        this._err = v;
        return v;
    }
    public var _tokenState(get, set) : StdTypes.Int;
    function get__tokenState():StdTypes.Int return this._tokenState;
    function set__tokenState(v:StdTypes.Int):StdTypes.Int {
        this._tokenState = v;
        return v;
    }
    public var _tokenStack(get, set) : Array<StdTypes.Int>;
    function get__tokenStack():Array<StdTypes.Int> return [for (i in this._tokenStack) i];
    function set__tokenStack(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._tokenStack = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_buf:Array<std.UInt>, ?_d:T_decodeState, ?_scanp:StdTypes.Int, ?_scanned:haxe.Int64, ?_scan:T_scanner, ?_err:stdgo.Error, ?_tokenState:StdTypes.Int, ?_tokenStack:Array<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json_Decoder.Decoder(_r, ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>), _d, _scanp, _scanned, _scan, _err, _tokenState, ([for (i in _tokenStack) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.Encoder_static_extension) abstract Encoder(stdgo._internal.encoding.json.Json_Encoder.Encoder) from stdgo._internal.encoding.json.Json_Encoder.Encoder to stdgo._internal.encoding.json.Json_Encoder.Encoder {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
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
        this._indentBuf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _indentPrefix(get, set) : String;
    function get__indentPrefix():String return this._indentPrefix;
    function set__indentPrefix(v:String):String {
        this._indentPrefix = v;
        return v;
    }
    public var _indentValue(get, set) : String;
    function get__indentValue():String return this._indentValue;
    function set__indentValue(v:String):String {
        this._indentValue = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_err:stdgo.Error, ?_escapeHTML:Bool, ?_indentBuf:Array<std.UInt>, ?_indentPrefix:String, ?_indentValue:String) this = new stdgo._internal.encoding.json.Json_Encoder.Encoder(_w, _err, _escapeHTML, ([for (i in _indentBuf) i] : stdgo.Slice<stdgo.GoUInt8>), _indentPrefix, _indentValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_tokenStreamCase(stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase) from stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase to stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase {
    public var _json(get, set) : String;
    function get__json():String return this._json;
    function set__json(v:String):String {
        this._json = v;
        return v;
    }
    public var _expTokens(get, set) : Array<stdgo.AnyInterface>;
    function get__expTokens():Array<stdgo.AnyInterface> return [for (i in this._expTokens) i];
    function set__expTokens(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this._expTokens = ([for (i in v) i] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?_json:String, ?_expTokens:Array<stdgo.AnyInterface>) this = new stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase(_json, ([for (i in _expTokens) i] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_decodeThis(stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis) from stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis to stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis {
    public var _v(get, set) : stdgo.AnyInterface;
    function get__v():stdgo.AnyInterface return this._v;
    function set__v(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._v = v;
        return v;
    }
    public function new(?_v:stdgo.AnyInterface) this = new stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis(_v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_basicLatin2xTag(stdgo._internal.encoding.json.Json_T_basicLatin2xTag.T_basicLatin2xTag) from stdgo._internal.encoding.json.Json_T_basicLatin2xTag.T_basicLatin2xTag to stdgo._internal.encoding.json.Json_T_basicLatin2xTag.T_basicLatin2xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_basicLatin2xTag.T_basicLatin2xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_basicLatin3xTag(stdgo._internal.encoding.json.Json_T_basicLatin3xTag.T_basicLatin3xTag) from stdgo._internal.encoding.json.Json_T_basicLatin3xTag.T_basicLatin3xTag to stdgo._internal.encoding.json.Json_T_basicLatin3xTag.T_basicLatin3xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_basicLatin3xTag.T_basicLatin3xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_basicLatin4xTag(stdgo._internal.encoding.json.Json_T_basicLatin4xTag.T_basicLatin4xTag) from stdgo._internal.encoding.json.Json_T_basicLatin4xTag.T_basicLatin4xTag to stdgo._internal.encoding.json.Json_T_basicLatin4xTag.T_basicLatin4xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_basicLatin4xTag.T_basicLatin4xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_basicLatin5xTag(stdgo._internal.encoding.json.Json_T_basicLatin5xTag.T_basicLatin5xTag) from stdgo._internal.encoding.json.Json_T_basicLatin5xTag.T_basicLatin5xTag to stdgo._internal.encoding.json.Json_T_basicLatin5xTag.T_basicLatin5xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_basicLatin5xTag.T_basicLatin5xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_basicLatin6xTag(stdgo._internal.encoding.json.Json_T_basicLatin6xTag.T_basicLatin6xTag) from stdgo._internal.encoding.json.Json_T_basicLatin6xTag.T_basicLatin6xTag to stdgo._internal.encoding.json.Json_T_basicLatin6xTag.T_basicLatin6xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_basicLatin6xTag.T_basicLatin6xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_basicLatin7xTag(stdgo._internal.encoding.json.Json_T_basicLatin7xTag.T_basicLatin7xTag) from stdgo._internal.encoding.json.Json_T_basicLatin7xTag.T_basicLatin7xTag to stdgo._internal.encoding.json.Json_T_basicLatin7xTag.T_basicLatin7xTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_basicLatin7xTag.T_basicLatin7xTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_miscPlaneTag(stdgo._internal.encoding.json.Json_T_miscPlaneTag.T_miscPlaneTag) from stdgo._internal.encoding.json.Json_T_miscPlaneTag.T_miscPlaneTag to stdgo._internal.encoding.json.Json_T_miscPlaneTag.T_miscPlaneTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_miscPlaneTag.T_miscPlaneTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_percentSlashTag(stdgo._internal.encoding.json.Json_T_percentSlashTag.T_percentSlashTag) from stdgo._internal.encoding.json.Json_T_percentSlashTag.T_percentSlashTag to stdgo._internal.encoding.json.Json_T_percentSlashTag.T_percentSlashTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_percentSlashTag.T_percentSlashTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_punctuationTag(stdgo._internal.encoding.json.Json_T_punctuationTag.T_punctuationTag) from stdgo._internal.encoding.json.Json_T_punctuationTag.T_punctuationTag to stdgo._internal.encoding.json.Json_T_punctuationTag.T_punctuationTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_punctuationTag.T_punctuationTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_dashTag(stdgo._internal.encoding.json.Json_T_dashTag.T_dashTag) from stdgo._internal.encoding.json.Json_T_dashTag.T_dashTag to stdgo._internal.encoding.json.Json_T_dashTag.T_dashTag {
    public var v(get, set) : String;
    function get_v():String return this.v;
    function set_v(v:String):String {
        this.v = v;
        return v;
    }
    public function new(?v:String) this = new stdgo._internal.encoding.json.Json_T_dashTag.T_dashTag(v);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_emptyTag(stdgo._internal.encoding.json.Json_T_emptyTag.T_emptyTag) from stdgo._internal.encoding.json.Json_T_emptyTag.T_emptyTag to stdgo._internal.encoding.json.Json_T_emptyTag.T_emptyTag {
    public var w(get, set) : String;
    function get_w():String return this.w;
    function set_w(v:String):String {
        this.w = v;
        return v;
    }
    public function new(?w:String) this = new stdgo._internal.encoding.json.Json_T_emptyTag.T_emptyTag(w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_misnamedTag(stdgo._internal.encoding.json.Json_T_misnamedTag.T_misnamedTag) from stdgo._internal.encoding.json.Json_T_misnamedTag.T_misnamedTag to stdgo._internal.encoding.json.Json_T_misnamedTag.T_misnamedTag {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = v;
        return v;
    }
    public function new(?x:String) this = new stdgo._internal.encoding.json.Json_T_misnamedTag.T_misnamedTag(x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_badFormatTag(stdgo._internal.encoding.json.Json_T_badFormatTag.T_badFormatTag) from stdgo._internal.encoding.json.Json_T_badFormatTag.T_badFormatTag to stdgo._internal.encoding.json.Json_T_badFormatTag.T_badFormatTag {
    public var y(get, set) : String;
    function get_y():String return this.y;
    function set_y(v:String):String {
        this.y = v;
        return v;
    }
    public function new(?y:String) this = new stdgo._internal.encoding.json.Json_T_badFormatTag.T_badFormatTag(y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_badCodeTag(stdgo._internal.encoding.json.Json_T_badCodeTag.T_badCodeTag) from stdgo._internal.encoding.json.Json_T_badCodeTag.T_badCodeTag to stdgo._internal.encoding.json.Json_T_badCodeTag.T_badCodeTag {
    public var z(get, set) : String;
    function get_z():String return this.z;
    function set_z(v:String):String {
        this.z = v;
        return v;
    }
    public function new(?z:String) this = new stdgo._internal.encoding.json.Json_T_badCodeTag.T_badCodeTag(z);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_spaceTag(stdgo._internal.encoding.json.Json_T_spaceTag.T_spaceTag) from stdgo._internal.encoding.json.Json_T_spaceTag.T_spaceTag to stdgo._internal.encoding.json.Json_T_spaceTag.T_spaceTag {
    public var q(get, set) : String;
    function get_q():String return this.q;
    function set_q(v:String):String {
        this.q = v;
        return v;
    }
    public function new(?q:String) this = new stdgo._internal.encoding.json.Json_T_spaceTag.T_spaceTag(q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_unicodeTag(stdgo._internal.encoding.json.Json_T_unicodeTag.T_unicodeTag) from stdgo._internal.encoding.json.Json_T_unicodeTag.T_unicodeTag to stdgo._internal.encoding.json.Json_T_unicodeTag.T_unicodeTag {
    public var w(get, set) : String;
    function get_w():String return this.w;
    function set_w(v:String):String {
        this.w = v;
        return v;
    }
    public function new(?w:String) this = new stdgo._internal.encoding.json.Json_T_unicodeTag.T_unicodeTag(w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.encoding.json.Json_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.encoding.json.Json_T__struct_0.T__struct_0;
typedef T__struct_1Pointer = stdgo._internal.encoding.json.Json_T__struct_1Pointer.T__struct_1Pointer;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.encoding.json.Json_T__struct_1.T__struct_1;
typedef T__struct_2Pointer = stdgo._internal.encoding.json.Json_T__struct_2Pointer.T__struct_2Pointer;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.encoding.json.Json_T__struct_2.T__struct_2;
typedef T__struct_3Pointer = stdgo._internal.encoding.json.Json_T__struct_3Pointer.T__struct_3Pointer;
class T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.encoding.json.Json_T__struct_3.T__struct_3;
typedef T__struct_4Pointer = stdgo._internal.encoding.json.Json_T__struct_4Pointer.T__struct_4Pointer;
class T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.encoding.json.Json_T__struct_4.T__struct_4;
typedef T__struct_5Pointer = stdgo._internal.encoding.json.Json_T__struct_5Pointer.T__struct_5Pointer;
class T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.encoding.json.Json_T__struct_5.T__struct_5;
typedef T__struct_6Pointer = stdgo._internal.encoding.json.Json_T__struct_6Pointer.T__struct_6Pointer;
class T__struct_6_static_extension {

}
typedef T__struct_6 = stdgo._internal.encoding.json.Json_T__struct_6.T__struct_6;
typedef T__struct_7Pointer = stdgo._internal.encoding.json.Json_T__struct_7Pointer.T__struct_7Pointer;
class T__struct_7_static_extension {

}
typedef T__struct_7 = stdgo._internal.encoding.json.Json_T__struct_7.T__struct_7;
typedef T__struct_8Pointer = stdgo._internal.encoding.json.Json_T__struct_8Pointer.T__struct_8Pointer;
class T__struct_8_static_extension {

}
typedef T__struct_8 = stdgo._internal.encoding.json.Json_T__struct_8.T__struct_8;
typedef T__struct_9Pointer = stdgo._internal.encoding.json.Json_T__struct_9Pointer.T__struct_9Pointer;
class T__struct_9_static_extension {

}
typedef T__struct_9 = stdgo._internal.encoding.json.Json_T__struct_9.T__struct_9;
typedef T__struct_10Pointer = stdgo._internal.encoding.json.Json_T__struct_10Pointer.T__struct_10Pointer;
class T__struct_10_static_extension {

}
typedef T__struct_10 = stdgo._internal.encoding.json.Json_T__struct_10.T__struct_10;
typedef T__struct_11Pointer = stdgo._internal.encoding.json.Json_T__struct_11Pointer.T__struct_11Pointer;
class T__struct_11_static_extension {

}
typedef T__struct_11 = stdgo._internal.encoding.json.Json_T__struct_11.T__struct_11;
typedef T__struct_12Pointer = stdgo._internal.encoding.json.Json_T__struct_12Pointer.T__struct_12Pointer;
class T__struct_12_static_extension {

}
typedef T__struct_12 = stdgo._internal.encoding.json.Json_T__struct_12.T__struct_12;
typedef T__struct_13Pointer = stdgo._internal.encoding.json.Json_T__struct_13Pointer.T__struct_13Pointer;
class T__struct_13_static_extension {

}
typedef T__struct_13 = stdgo._internal.encoding.json.Json_T__struct_13.T__struct_13;
typedef T__struct_14Pointer = stdgo._internal.encoding.json.Json_T__struct_14Pointer.T__struct_14Pointer;
class T__struct_14_static_extension {

}
typedef T__struct_14 = stdgo._internal.encoding.json.Json_T__struct_14.T__struct_14;
typedef T__struct_15Pointer = stdgo._internal.encoding.json.Json_T__struct_15Pointer.T__struct_15Pointer;
class T__struct_15_static_extension {

}
typedef T__struct_15 = stdgo._internal.encoding.json.Json_T__struct_15.T__struct_15;
typedef T__struct_16Pointer = stdgo._internal.encoding.json.Json_T__struct_16Pointer.T__struct_16Pointer;
class T__struct_16_static_extension {

}
typedef T__struct_16 = stdgo._internal.encoding.json.Json_T__struct_16.T__struct_16;
typedef T__struct_17Pointer = stdgo._internal.encoding.json.Json_T__struct_17Pointer.T__struct_17Pointer;
class T__struct_17_static_extension {

}
typedef T__struct_17 = stdgo._internal.encoding.json.Json_T__struct_17.T__struct_17;
typedef T__struct_18Pointer = stdgo._internal.encoding.json.Json_T__struct_18Pointer.T__struct_18Pointer;
class T__struct_18_static_extension {

}
typedef T__struct_18 = stdgo._internal.encoding.json.Json_T__struct_18.T__struct_18;
typedef T__struct_19Pointer = stdgo._internal.encoding.json.Json_T__struct_19Pointer.T__struct_19Pointer;
class T__struct_19_static_extension {

}
typedef T__struct_19 = stdgo._internal.encoding.json.Json_T__struct_19.T__struct_19;
typedef T__struct_20Pointer = stdgo._internal.encoding.json.Json_T__struct_20Pointer.T__struct_20Pointer;
class T__struct_20_static_extension {

}
typedef T__struct_20 = stdgo._internal.encoding.json.Json_T__struct_20.T__struct_20;
typedef T__struct_21Pointer = stdgo._internal.encoding.json.Json_T__struct_21Pointer.T__struct_21Pointer;
class T__struct_21_static_extension {

}
typedef T__struct_21 = stdgo._internal.encoding.json.Json_T__struct_21.T__struct_21;
typedef T__struct_22Pointer = stdgo._internal.encoding.json.Json_T__struct_22Pointer.T__struct_22Pointer;
class T__struct_22_static_extension {

}
typedef T__struct_22 = stdgo._internal.encoding.json.Json_T__struct_22.T__struct_22;
typedef T__struct_23Pointer = stdgo._internal.encoding.json.Json_T__struct_23Pointer.T__struct_23Pointer;
class T__struct_23_static_extension {

}
typedef T__struct_23 = stdgo._internal.encoding.json.Json_T__struct_23.T__struct_23;
typedef T__struct_24Pointer = stdgo._internal.encoding.json.Json_T__struct_24Pointer.T__struct_24Pointer;
class T__struct_24_static_extension {

}
typedef T__struct_24 = stdgo._internal.encoding.json.Json_T__struct_24.T__struct_24;
typedef T__struct_25Pointer = stdgo._internal.encoding.json.Json_T__struct_25Pointer.T__struct_25Pointer;
class T__struct_25_static_extension {

}
typedef T__struct_25 = stdgo._internal.encoding.json.Json_T__struct_25.T__struct_25;
typedef T__struct_26Pointer = stdgo._internal.encoding.json.Json_T__struct_26Pointer.T__struct_26Pointer;
class T__struct_26_static_extension {

}
typedef T__struct_26 = stdgo._internal.encoding.json.Json_T__struct_26.T__struct_26;
typedef T__struct_27Pointer = stdgo._internal.encoding.json.Json_T__struct_27Pointer.T__struct_27Pointer;
class T__struct_27_static_extension {

}
typedef T__struct_27 = stdgo._internal.encoding.json.Json_T__struct_27.T__struct_27;
typedef T__struct_28Pointer = stdgo._internal.encoding.json.Json_T__struct_28Pointer.T__struct_28Pointer;
class T__struct_28_static_extension {

}
typedef T__struct_28 = stdgo._internal.encoding.json.Json_T__struct_28.T__struct_28;
typedef T__struct_29Pointer = stdgo._internal.encoding.json.Json_T__struct_29Pointer.T__struct_29Pointer;
class T__struct_29_static_extension {

}
typedef T__struct_29 = stdgo._internal.encoding.json.Json_T__struct_29.T__struct_29;
typedef T__struct_30Pointer = stdgo._internal.encoding.json.Json_T__struct_30Pointer.T__struct_30Pointer;
class T__struct_30_static_extension {

}
typedef T__struct_30 = stdgo._internal.encoding.json.Json_T__struct_30.T__struct_30;
typedef T__struct_31Pointer = stdgo._internal.encoding.json.Json_T__struct_31Pointer.T__struct_31Pointer;
class T__struct_31_static_extension {

}
typedef T__struct_31 = stdgo._internal.encoding.json.Json_T__struct_31.T__struct_31;
typedef T__struct_32Pointer = stdgo._internal.encoding.json.Json_T__struct_32Pointer.T__struct_32Pointer;
class T__struct_32_static_extension {

}
typedef T__struct_32 = stdgo._internal.encoding.json.Json_T__struct_32.T__struct_32;
typedef T__struct_33Pointer = stdgo._internal.encoding.json.Json_T__struct_33Pointer.T__struct_33Pointer;
class T__struct_33_static_extension {

}
typedef T__struct_33 = stdgo._internal.encoding.json.Json_T__struct_33.T__struct_33;
typedef T__struct_34Pointer = stdgo._internal.encoding.json.Json_T__struct_34Pointer.T__struct_34Pointer;
class T__struct_34_static_extension {

}
typedef T__struct_34 = stdgo._internal.encoding.json.Json_T__struct_34.T__struct_34;
typedef T__struct_35Pointer = stdgo._internal.encoding.json.Json_T__struct_35Pointer.T__struct_35Pointer;
class T__struct_35_static_extension {

}
typedef T__struct_35 = stdgo._internal.encoding.json.Json_T__struct_35.T__struct_35;
typedef T__struct_36Pointer = stdgo._internal.encoding.json.Json_T__struct_36Pointer.T__struct_36Pointer;
class T__struct_36_static_extension {

}
typedef T__struct_36 = stdgo._internal.encoding.json.Json_T__struct_36.T__struct_36;
typedef T__struct_37Pointer = stdgo._internal.encoding.json.Json_T__struct_37Pointer.T__struct_37Pointer;
class T__struct_37_static_extension {

}
typedef T__struct_37 = stdgo._internal.encoding.json.Json_T__struct_37.T__struct_37;
typedef T__struct_38Pointer = stdgo._internal.encoding.json.Json_T__struct_38Pointer.T__struct_38Pointer;
class T__struct_38_static_extension {

}
typedef T__struct_38 = stdgo._internal.encoding.json.Json_T__struct_38.T__struct_38;
typedef T__struct_39Pointer = stdgo._internal.encoding.json.Json_T__struct_39Pointer.T__struct_39Pointer;
class T__struct_39_static_extension {

}
typedef T__struct_39 = stdgo._internal.encoding.json.Json_T__struct_39.T__struct_39;
typedef T__struct_40Pointer = stdgo._internal.encoding.json.Json_T__struct_40Pointer.T__struct_40Pointer;
class T__struct_40_static_extension {

}
typedef T__struct_40 = stdgo._internal.encoding.json.Json_T__struct_40.T__struct_40;
typedef T__struct_41Pointer = stdgo._internal.encoding.json.Json_T__struct_41Pointer.T__struct_41Pointer;
class T__struct_41_static_extension {

}
typedef T__struct_41 = stdgo._internal.encoding.json.Json_T__struct_41.T__struct_41;
typedef T__struct_42Pointer = stdgo._internal.encoding.json.Json_T__struct_42Pointer.T__struct_42Pointer;
class T__struct_42_static_extension {

}
typedef T__struct_42 = stdgo._internal.encoding.json.Json_T__struct_42.T__struct_42;
typedef T__struct_43Pointer = stdgo._internal.encoding.json.Json_T__struct_43Pointer.T__struct_43Pointer;
class T__struct_43_static_extension {

}
typedef T__struct_43 = stdgo._internal.encoding.json.Json_T__struct_43.T__struct_43;
typedef T__struct_44Pointer = stdgo._internal.encoding.json.Json_T__struct_44Pointer.T__struct_44Pointer;
class T__struct_44_static_extension {

}
typedef T__struct_44 = stdgo._internal.encoding.json.Json_T__struct_44.T__struct_44;
typedef T__struct_45Pointer = stdgo._internal.encoding.json.Json_T__struct_45Pointer.T__struct_45Pointer;
class T__struct_45_static_extension {

}
typedef T__struct_45 = stdgo._internal.encoding.json.Json_T__struct_45.T__struct_45;
typedef T__struct_46Pointer = stdgo._internal.encoding.json.Json_T__struct_46Pointer.T__struct_46Pointer;
class T__struct_46_static_extension {

}
typedef T__struct_46 = stdgo._internal.encoding.json.Json_T__struct_46.T__struct_46;
typedef Number = stdgo._internal.encoding.json.Json_Number.Number;
typedef SS = stdgo._internal.encoding.json.Json_SS.SS;
typedef T_u8 = stdgo._internal.encoding.json.Json_T_u8.T_u8;
typedef T_u8marshal = stdgo._internal.encoding.json.Json_T_u8marshal.T_u8marshal;
typedef Embed0b = stdgo._internal.encoding.json.Json_Embed0b.Embed0b;
typedef Embed0c = stdgo._internal.encoding.json.Json_Embed0c.Embed0c;
typedef S7 = stdgo._internal.encoding.json.Json_S7.S7;
typedef T_byteWithMarshalJSON = stdgo._internal.encoding.json.Json_T_byteWithMarshalJSON.T_byteWithMarshalJSON;
typedef T_byteWithPtrMarshalJSON = stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalJSON.T_byteWithPtrMarshalJSON;
typedef T_byteWithMarshalText = stdgo._internal.encoding.json.Json_T_byteWithMarshalText.T_byteWithMarshalText;
typedef T_byteWithPtrMarshalText = stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalText.T_byteWithPtrMarshalText;
typedef T_intWithMarshalJSON = stdgo._internal.encoding.json.Json_T_intWithMarshalJSON.T_intWithMarshalJSON;
typedef T_intWithPtrMarshalJSON = stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON.T_intWithPtrMarshalJSON;
typedef T_intWithMarshalText = stdgo._internal.encoding.json.Json_T_intWithMarshalText.T_intWithMarshalText;
typedef T_intWithPtrMarshalText = stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText.T_intWithPtrMarshalText;
typedef Time3339 = stdgo._internal.encoding.json.Json_Time3339.Time3339;
typedef T_textUnmarshalerString = stdgo._internal.encoding.json.Json_T_textUnmarshalerString.T_textUnmarshalerString;
typedef T_encoderFunc = stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc;
typedef T_floatEncoder = stdgo._internal.encoding.json.Json_T_floatEncoder.T_floatEncoder;
typedef T_byIndex = stdgo._internal.encoding.json.Json_T_byIndex.T_byIndex;
typedef T_renamedByte = stdgo._internal.encoding.json.Json_T_renamedByte.T_renamedByte;
typedef T_renamedByteSlice = stdgo._internal.encoding.json.Json_T_renamedByteSlice.T_renamedByteSlice;
typedef T_renamedRenamedByteSlice = stdgo._internal.encoding.json.Json_T_renamedRenamedByteSlice.T_renamedRenamedByteSlice;
typedef RecursiveSlice = stdgo._internal.encoding.json.Json_RecursiveSlice.RecursiveSlice;
typedef Ref = stdgo._internal.encoding.json.Json_Ref.Ref;
typedef Val = stdgo._internal.encoding.json.Json_Val.Val;
typedef RefText = stdgo._internal.encoding.json.Json_RefText.RefText;
typedef ValText = stdgo._internal.encoding.json.Json_ValText.ValText;
typedef C = stdgo._internal.encoding.json.Json_C.C;
typedef CText = stdgo._internal.encoding.json.Json_CText.CText;
typedef T_nilJSONMarshaler = stdgo._internal.encoding.json.Json_T_nilJSONMarshaler.T_nilJSONMarshaler;
typedef T_nilTextMarshaler = stdgo._internal.encoding.json.Json_T_nilTextMarshaler.T_nilTextMarshaler;
typedef T_jsonbyte = stdgo._internal.encoding.json.Json_T_jsonbyte.T_jsonbyte;
typedef T_textbyte = stdgo._internal.encoding.json.Json_T_textbyte.T_textbyte;
typedef T_jsonint = stdgo._internal.encoding.json.Json_T_jsonint.T_jsonint;
typedef T_textint = stdgo._internal.encoding.json.Json_T_textint.T_textint;
typedef T_textfloat = stdgo._internal.encoding.json.Json_T_textfloat.T_textfloat;
typedef RawMessage = stdgo._internal.encoding.json.Json_RawMessage.RawMessage;
typedef Token = stdgo._internal.encoding.json.Json_Token.Token;
typedef Delim = stdgo._internal.encoding.json.Json_Delim.Delim;
typedef T_strMarshaler = stdgo._internal.encoding.json.Json_T_strMarshaler.T_strMarshaler;
typedef T_strPtrMarshaler = stdgo._internal.encoding.json.Json_T_strPtrMarshaler.T_strPtrMarshaler;
typedef T_tagOptions = stdgo._internal.encoding.json.Json_T_tagOptions.T_tagOptions;
@:structInit abstract T_benchmarkCodeEncoderError___localname___Dummy_2370(stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370) from stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370 to stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var next(get, set) : T_benchmarkCodeEncoderError___localname___Dummy_2370;
    function get_next():T_benchmarkCodeEncoderError___localname___Dummy_2370 return this.next;
    function set_next(v:T_benchmarkCodeEncoderError___localname___Dummy_2370):T_benchmarkCodeEncoderError___localname___Dummy_2370 {
        this.next = v;
        return v;
    }
    public function new(?name:String, ?next:T_benchmarkCodeEncoderError___localname___Dummy_2370) this = new stdgo._internal.encoding.json.Json_T_benchmarkCodeEncoderError___localname___Dummy_2370.T_benchmarkCodeEncoderError___localname___Dummy_2370(name, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_benchmarkCodeMarshalError___localname___Dummy_3282(stdgo._internal.encoding.json.Json_T_benchmarkCodeMarshalError___localname___Dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282) from stdgo._internal.encoding.json.Json_T_benchmarkCodeMarshalError___localname___Dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282 to stdgo._internal.encoding.json.Json_T_benchmarkCodeMarshalError___localname___Dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var next(get, set) : T_benchmarkCodeMarshalError___localname___Dummy_3282;
    function get_next():T_benchmarkCodeMarshalError___localname___Dummy_3282 return this.next;
    function set_next(v:T_benchmarkCodeMarshalError___localname___Dummy_3282):T_benchmarkCodeMarshalError___localname___Dummy_3282 {
        this.next = v;
        return v;
    }
    public function new(?name:String, ?next:T_benchmarkCodeMarshalError___localname___Dummy_3282) this = new stdgo._internal.encoding.json.Json_T_benchmarkCodeMarshalError___localname___Dummy_3282.T_benchmarkCodeMarshalError___localname___Dummy_3282(name, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T__benchMarshalBytesError___localname___Dummy_4406(stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406) from stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406 to stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var next(get, set) : T__benchMarshalBytesError___localname___Dummy_4406;
    function get_next():T__benchMarshalBytesError___localname___Dummy_4406 return this.next;
    function set_next(v:T__benchMarshalBytesError___localname___Dummy_4406):T__benchMarshalBytesError___localname___Dummy_4406 {
        this.next = v;
        return v;
    }
    public function new(?name:String, ?next:T__benchMarshalBytesError___localname___Dummy_4406) this = new stdgo._internal.encoding.json.Json_T__benchMarshalBytesError___localname___Dummy_4406.T__benchMarshalBytesError___localname___Dummy_4406(name, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_benchmarkEncoderEncode___localname___T_11092(stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092) from stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092 to stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092 {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = v;
        return v;
    }
    public var y(get, set) : String;
    function get_y():String return this.y;
    function set_y(v:String):String {
        this.y = v;
        return v;
    }
    public function new(?x:String, ?y:String) this = new stdgo._internal.encoding.json.Json_T_benchmarkEncoderEncode___localname___T_11092.T_benchmarkEncoderEncode___localname___T_11092(x, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testRefUnmarshal___localname___S_40168(stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168) from stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168 to stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168 {
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
    public function new(?r0:Ref, ?r1:stdgo.Pointer<Ref>, ?r2:RefText, ?r3:stdgo.Pointer<RefText>) this = new stdgo._internal.encoding.json.Json_T_testRefUnmarshal___localname___S_40168.T_testRefUnmarshal___localname___S_40168(r0, r1, r2, r3);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testEmptyString___localname___T2_40735(stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735) from stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735 to stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735 {
    public var number1(get, set) : StdTypes.Int;
    function get_number1():StdTypes.Int return this.number1;
    function set_number1(v:StdTypes.Int):StdTypes.Int {
        this.number1 = v;
        return v;
    }
    public var number2(get, set) : StdTypes.Int;
    function get_number2():StdTypes.Int return this.number2;
    function set_number2(v:StdTypes.Int):StdTypes.Int {
        this.number2 = v;
        return v;
    }
    public function new(?number1:StdTypes.Int, ?number2:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testEmptyString___localname___T2_40735.T_testEmptyString___localname___T2_40735(number1, number2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testNullString___localname___T_41259(stdgo._internal.encoding.json.Json_T_testNullString___localname___T_41259.T_testNullString___localname___T_41259) from stdgo._internal.encoding.json.Json_T_testNullString___localname___T_41259.T_testNullString___localname___T_41259 to stdgo._internal.encoding.json.Json_T_testNullString___localname___T_41259.T_testNullString___localname___T_41259 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = v;
        return v;
    }
    public var b(get, set) : StdTypes.Int;
    function get_b():StdTypes.Int return this.b;
    function set_b(v:StdTypes.Int):StdTypes.Int {
        this.b = v;
        return v;
    }
    public var c(get, set) : stdgo.Pointer<StdTypes.Int>;
    function get_c():stdgo.Pointer<StdTypes.Int> return this.c;
    function set_c(v:stdgo.Pointer<StdTypes.Int>):stdgo.Pointer<StdTypes.Int> {
        this.c = v;
        return v;
    }
    public function new(?a:StdTypes.Int, ?b:StdTypes.Int, ?c:stdgo.Pointer<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json_T_testNullString___localname___T_41259.T_testNullString___localname___T_41259(a, b, c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testStringKind___localname___stringKind_47067 = stdgo._internal.encoding.json.Json_T_testStringKind___localname___stringKind_47067.T_testStringKind___localname___stringKind_47067;
typedef T_testByteKind___localname___byteKind_47617 = stdgo._internal.encoding.json.Json_T_testByteKind___localname___byteKind_47617.T_testByteKind___localname___byteKind_47617;
typedef T_testSliceOfCustomByte___localname___Uint8_47988 = stdgo._internal.encoding.json.Json_T_testSliceOfCustomByte___localname___Uint8_47988.T_testSliceOfCustomByte___localname___Uint8_47988;
@:structInit abstract T_testUnmarshalEmbeddedUnexported___localname___embed1_54365(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = v;
        return v;
    }
    public function new(?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed1_54365.T_testUnmarshalEmbeddedUnexported___localname___embed1_54365(q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testUnmarshalEmbeddedUnexported___localname___embed2_54390(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390 {
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = v;
        return v;
    }
    public function new(?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed2_54390.T_testUnmarshalEmbeddedUnexported___localname___embed2_54390(q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testUnmarshalEmbeddedUnexported___localname___embed3_54415(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 {
    public var q(get, set) : haxe.Int64;
    function get_q():haxe.Int64 return this.q;
    function set_q(v:haxe.Int64):haxe.Int64 {
        this.q = v;
        return v;
    }
    public function new(?q:haxe.Int64) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___embed3_54415.T_testUnmarshalEmbeddedUnexported___localname___embed3_54415(q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S1_54465_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S1_54465(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var r(get, set) : StdTypes.Int;
    function get_r():StdTypes.Int return this.r;
    function set_r(v:StdTypes.Int):StdTypes.Int {
        this.r = v;
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?r:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S1_54465.T_testUnmarshalEmbeddedUnexported___localname___S1_54465(_embed1, r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S2_54503_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S2_54503(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var q(get, set) : StdTypes.Int;
    function get_q():StdTypes.Int return this.q;
    function set_q(v:StdTypes.Int):StdTypes.Int {
        this.q = v;
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S2_54503.T_testUnmarshalEmbeddedUnexported___localname___S2_54503(_embed1, q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S3_54541_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S3_54541(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S3_54541.T_testUnmarshalEmbeddedUnexported___localname___S3_54541) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S3_54541.T_testUnmarshalEmbeddedUnexported___localname___S3_54541 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S3_54541.T_testUnmarshalEmbeddedUnexported___localname___S3_54541 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public var r(get, set) : StdTypes.Int;
    function get_r():StdTypes.Int return this.r;
    function set_r(v:StdTypes.Int):StdTypes.Int {
        this.r = v;
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?r:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S3_54541.T_testUnmarshalEmbeddedUnexported___localname___S3_54541(_embed1, r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S4_54578_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S4_54578(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S4_54578.T_testUnmarshalEmbeddedUnexported___localname___S4_54578) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S4_54578.T_testUnmarshalEmbeddedUnexported___localname___S4_54578 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S4_54578.T_testUnmarshalEmbeddedUnexported___localname___S4_54578 {
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
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:T_testUnmarshalEmbeddedUnexported___localname___embed2_54390) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S4_54578.T_testUnmarshalEmbeddedUnexported___localname___S4_54578(_embed1, _embed2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S5_54617_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S5_54617(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617 {
    public var _embed3(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed3_54415;
    function get__embed3():T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 return this._embed3;
    function set__embed3(v:T_testUnmarshalEmbeddedUnexported___localname___embed3_54415):T_testUnmarshalEmbeddedUnexported___localname___embed3_54415 {
        this._embed3 = v;
        return v;
    }
    public var r(get, set) : StdTypes.Int;
    function get_r():StdTypes.Int return this.r;
    function set_r(v:StdTypes.Int):StdTypes.Int {
        this.r = v;
        return v;
    }
    public function new(?_embed3:T_testUnmarshalEmbeddedUnexported___localname___embed3_54415, ?r:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S5_54617.T_testUnmarshalEmbeddedUnexported___localname___S5_54617(_embed3, r);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S6_54655_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S6_54655(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S6_54655.T_testUnmarshalEmbeddedUnexported___localname___S6_54655) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S6_54655.T_testUnmarshalEmbeddedUnexported___localname___S6_54655 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S6_54655.T_testUnmarshalEmbeddedUnexported___localname___S6_54655 {
    public var _embed1(get, set) : T_testUnmarshalEmbeddedUnexported___localname___embed1_54365;
    function get__embed1():T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 return this._embed1;
    function set__embed1(v:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365):T_testUnmarshalEmbeddedUnexported___localname___embed1_54365 {
        this._embed1 = v;
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S6_54655.T_testUnmarshalEmbeddedUnexported___localname___S6_54655(_embed1);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S7_54699_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S7_54699(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S7_54699.T_testUnmarshalEmbeddedUnexported___localname___S7_54699) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S7_54699.T_testUnmarshalEmbeddedUnexported___localname___S7_54699 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S7_54699.T_testUnmarshalEmbeddedUnexported___localname___S7_54699 {
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
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:T_testUnmarshalEmbeddedUnexported___localname___embed2_54390) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S7_54699.T_testUnmarshalEmbeddedUnexported___localname___S7_54699(_embed1, _embed2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S8_54753_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S8_54753(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753 {
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
        this.q = v;
        return v;
    }
    public function new(?_embed1:T_testUnmarshalEmbeddedUnexported___localname___embed1_54365, ?_embed2:T_testUnmarshalEmbeddedUnexported___localname___embed2_54390, ?q:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S8_54753.T_testUnmarshalEmbeddedUnexported___localname___S8_54753(_embed1, _embed2, q);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension) abstract T_testUnmarshalEmbeddedUnexported___localname___S9_54837(stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S9_54837.T_testUnmarshalEmbeddedUnexported___localname___S9_54837) from stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S9_54837.T_testUnmarshalEmbeddedUnexported___localname___S9_54837 to stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S9_54837.T_testUnmarshalEmbeddedUnexported___localname___S9_54837 {
    public var _unexportedWithMethods(get, set) : T_unexportedWithMethods;
    function get__unexportedWithMethods():T_unexportedWithMethods return this._unexportedWithMethods;
    function set__unexportedWithMethods(v:T_unexportedWithMethods):T_unexportedWithMethods {
        this._unexportedWithMethods = v;
        return v;
    }
    public function new(?_unexportedWithMethods:T_unexportedWithMethods) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S9_54837.T_testUnmarshalEmbeddedUnexported___localname___S9_54837(_unexportedWithMethods);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829(stdgo._internal.encoding.json.Json_T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829) from stdgo._internal.encoding.json.Json_T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829 to stdgo._internal.encoding.json.Json_T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829 {
    public var f1(get, set) : String;
    function get_f1():String return this.f1;
    function set_f1(v:String):String {
        this.f1 = v;
        return v;
    }
    public function new(?f1:String) this = new stdgo._internal.encoding.json.Json_T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829.T_testUnmarshalRescanLiteralMangledUnquote___localname___T_59829(f1);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S1_8122(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8122.T_testAnonymousFields___localname___S1_8122) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8122.T_testAnonymousFields___localname___S1_8122 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8122.T_testAnonymousFields___localname___S1_8122 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8122.T_testAnonymousFields___localname___S1_8122(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S2_8148(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8148.T_testAnonymousFields___localname___S2_8148) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8148.T_testAnonymousFields___localname___S2_8148 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8148.T_testAnonymousFields___localname___S2_8148 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8148.T_testAnonymousFields___localname___S2_8148(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_8174_static_extension) abstract T_testAnonymousFields___localname___S_8174(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8174.T_testAnonymousFields___localname___S_8174) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8174.T_testAnonymousFields___localname___S_8174 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8174.T_testAnonymousFields___localname___S_8174 {
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
    public function new(?s1:T_testAnonymousFields___localname___S1_8122, ?s2:T_testAnonymousFields___localname___S2_8148) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8174.T_testAnonymousFields___localname___S_8174(s1, s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S1_8459(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8459.T_testAnonymousFields___localname___S1_8459) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8459.T_testAnonymousFields___localname___S1_8459 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8459.T_testAnonymousFields___localname___S1_8459 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S1_8459.T_testAnonymousFields___localname___S1_8459(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S2_8485(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_8485.T_testAnonymousFields___localname___S2_8485(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_8511_static_extension) abstract T_testAnonymousFields___localname___S_8511(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511.T_testAnonymousFields___localname___S_8511) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511.T_testAnonymousFields___localname___S_8511 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511.T_testAnonymousFields___localname___S_8511 {
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
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?s1:T_testAnonymousFields___localname___S1_8459, ?s2:T_testAnonymousFields___localname___S2_8485, ?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511.T_testAnonymousFields___localname___S_8511(s1, s2, _x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testAnonymousFields___localname___myInt_8782 = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_8782.T_testAnonymousFields___localname___myInt_8782;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_8796_static_extension) abstract T_testAnonymousFields___localname___S_8796(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8796.T_testAnonymousFields___localname___S_8796) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8796.T_testAnonymousFields___localname___S_8796 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8796.T_testAnonymousFields___localname___S_8796 {
    public var _myInt(get, set) : T_testAnonymousFields___localname___myInt_8782;
    function get__myInt():T_testAnonymousFields___localname___myInt_8782 return this._myInt;
    function set__myInt(v:T_testAnonymousFields___localname___myInt_8782):T_testAnonymousFields___localname___myInt_8782 {
        this._myInt = v;
        return v;
    }
    public function new(?_myInt:T_testAnonymousFields___localname___myInt_8782) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8796.T_testAnonymousFields___localname___S_8796(_myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testAnonymousFields___localname___MyInt_9005 = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___MyInt_9005.T_testAnonymousFields___localname___MyInt_9005;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9019_static_extension) abstract T_testAnonymousFields___localname___S_9019(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9019.T_testAnonymousFields___localname___S_9019) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9019.T_testAnonymousFields___localname___S_9019 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9019.T_testAnonymousFields___localname___S_9019 {
    public var myInt(get, set) : T_testAnonymousFields___localname___MyInt_9005;
    function get_myInt():T_testAnonymousFields___localname___MyInt_9005 return this.myInt;
    function set_myInt(v:T_testAnonymousFields___localname___MyInt_9005):T_testAnonymousFields___localname___MyInt_9005 {
        this.myInt = v;
        return v;
    }
    public function new(?myInt:T_testAnonymousFields___localname___MyInt_9005) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9019.T_testAnonymousFields___localname___S_9019(myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testAnonymousFields___localname___myInt_9268 = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_9268.T_testAnonymousFields___localname___myInt_9268;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9282_static_extension) abstract T_testAnonymousFields___localname___S_9282(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9282.T_testAnonymousFields___localname___S_9282) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9282.T_testAnonymousFields___localname___S_9282 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9282.T_testAnonymousFields___localname___S_9282 {
    public var _myInt(get, set) : stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268>;
    function get__myInt():stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268> return this._myInt;
    function set__myInt(v:stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268>):stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268> {
        this._myInt = v;
        return v;
    }
    public function new(?_myInt:stdgo.Pointer<T_testAnonymousFields___localname___myInt_9268>) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9282.T_testAnonymousFields___localname___S_9282(_myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testAnonymousFields___localname___MyInt_9550 = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___MyInt_9550.T_testAnonymousFields___localname___MyInt_9550;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9564_static_extension) abstract T_testAnonymousFields___localname___S_9564(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9564.T_testAnonymousFields___localname___S_9564) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9564.T_testAnonymousFields___localname___S_9564 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9564.T_testAnonymousFields___localname___S_9564 {
    public var myInt(get, set) : stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550>;
    function get_myInt():stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550> return this.myInt;
    function set_myInt(v:stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550>):stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550> {
        this.myInt = v;
        return v;
    }
    public function new(?myInt:stdgo.Pointer<T_testAnonymousFields___localname___MyInt_9550>) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9564.T_testAnonymousFields___localname___S_9564(myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___s1_9906(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_9906.T_testAnonymousFields___localname___s1_9906(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S2_9932(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_9932.T_testAnonymousFields___localname___S2_9932) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_9932.T_testAnonymousFields___localname___S2_9932 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_9932.T_testAnonymousFields___localname___S2_9932 {
    public var _y(get, set) : StdTypes.Int;
    function get__y():StdTypes.Int return this._y;
    function set__y(v:StdTypes.Int):StdTypes.Int {
        this._y = v;
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = v;
        return v;
    }
    public function new(?_y:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_9932.T_testAnonymousFields___localname___S2_9932(_y, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_9958_static_extension) abstract T_testAnonymousFields___localname___S_9958(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9958.T_testAnonymousFields___localname___S_9958) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9958.T_testAnonymousFields___localname___S_9958 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9958.T_testAnonymousFields___localname___S_9958 {
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
    public function new(?_s1:T_testAnonymousFields___localname___s1_9906, ?s2:T_testAnonymousFields___localname___S2_9932) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9958.T_testAnonymousFields___localname___S_9958(_s1, s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___s1_10314(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314 {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = v;
        return v;
    }
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = v;
        return v;
    }
    public function new(?_x:StdTypes.Int, ?x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10314.T_testAnonymousFields___localname___s1_10314(_x, x);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S2_10340(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_10340.T_testAnonymousFields___localname___S2_10340) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_10340.T_testAnonymousFields___localname___S2_10340 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_10340.T_testAnonymousFields___localname___S2_10340 {
    public var _y(get, set) : StdTypes.Int;
    function get__y():StdTypes.Int return this._y;
    function set__y(v:StdTypes.Int):StdTypes.Int {
        this._y = v;
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = v;
        return v;
    }
    public function new(?_y:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_10340.T_testAnonymousFields___localname___S2_10340(_y, y);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_10366_static_extension) abstract T_testAnonymousFields___localname___S_10366(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10366.T_testAnonymousFields___localname___S_10366) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10366.T_testAnonymousFields___localname___S_10366 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10366.T_testAnonymousFields___localname___S_10366 {
    public var _s1(get, set) : T_testAnonymousFields___localname___s1_10314;
    function get__s1():T_testAnonymousFields___localname___s1_10314 return this._s1;
    function set__s1(v:T_testAnonymousFields___localname___s1_10314):T_testAnonymousFields___localname___s1_10314 {
        this._s1 = v;
        return v;
    }
    public var s2(get, set) : T_testAnonymousFields___localname___S2_10340;
    function get_s2():T_testAnonymousFields___localname___S2_10340 return this.s2;
    function set_s2(v:T_testAnonymousFields___localname___S2_10340):T_testAnonymousFields___localname___S2_10340 {
        this.s2 = v;
        return v;
    }
    public function new(?_s1:T_testAnonymousFields___localname___s1_10314, ?s2:T_testAnonymousFields___localname___S2_10340) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10366.T_testAnonymousFields___localname___S_10366(_s1, s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_testAnonymousFields___localname___MyInt1_10664 = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___MyInt1_10664.T_testAnonymousFields___localname___MyInt1_10664;
typedef T_testAnonymousFields___localname___MyInt2_10679 = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___MyInt2_10679.T_testAnonymousFields___localname___MyInt2_10679;
typedef T_testAnonymousFields___localname___myInt_10694 = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___myInt_10694.T_testAnonymousFields___localname___myInt_10694;
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___s2_10709_static_extension) abstract T_testAnonymousFields___localname___s2_10709(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709 {
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
    public function new(?myInt2:T_testAnonymousFields___localname___MyInt2_10679, ?_myInt:T_testAnonymousFields___localname___myInt_10694) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s2_10709.T_testAnonymousFields___localname___s2_10709(myInt2, _myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___s1_10758_static_extension) abstract T_testAnonymousFields___localname___s1_10758(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758 {
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
    public function new(?myInt1:T_testAnonymousFields___localname___MyInt1_10664, ?_myInt:T_testAnonymousFields___localname___myInt_10694, ?_s2:T_testAnonymousFields___localname___s2_10709) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10758.T_testAnonymousFields___localname___s1_10758(myInt1, _myInt, _s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_10811_static_extension) abstract T_testAnonymousFields___localname___S_10811(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10811.T_testAnonymousFields___localname___S_10811) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10811.T_testAnonymousFields___localname___S_10811 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10811.T_testAnonymousFields___localname___S_10811 {
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
    public function new(?_s1:T_testAnonymousFields___localname___s1_10758, ?_myInt:T_testAnonymousFields___localname___myInt_10694) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10811.T_testAnonymousFields___localname___S_10811(_s1, _myInt);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testAnonymousFields___localname___S2_11195(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_11195.T_testAnonymousFields___localname___S2_11195) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_11195.T_testAnonymousFields___localname___S2_11195 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_11195.T_testAnonymousFields___localname___S2_11195 {
    public var field(get, set) : String;
    function get_field():String return this.field;
    function set_field(v:String):String {
        this.field = v;
        return v;
    }
    public function new(?field:String) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S2_11195.T_testAnonymousFields___localname___S2_11195(field);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.encoding.json.Json.T_testAnonymousFields___localname___S_11225_static_extension) abstract T_testAnonymousFields___localname___S_11225(stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_11225.T_testAnonymousFields___localname___S_11225) from stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_11225.T_testAnonymousFields___localname___S_11225 to stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_11225.T_testAnonymousFields___localname___S_11225 {
    public var s2(get, set) : T_testAnonymousFields___localname___S2_11195;
    function get_s2():T_testAnonymousFields___localname___S2_11195 return this.s2;
    function set_s2(v:T_testAnonymousFields___localname___S2_11195):T_testAnonymousFields___localname___S2_11195 {
        this.s2 = v;
        return v;
    }
    public function new(?s2:T_testAnonymousFields___localname___S2_11195) this = new stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_11225.T_testAnonymousFields___localname___S_11225(s2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testIssue10281___localname___Foo_15026(stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026) from stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026 to stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026 {
    public var n(get, set) : Number;
    function get_n():Number return this.n;
    function set_n(v:Number):Number {
        this.n = v;
        return v;
    }
    public function new(?n:Number) this = new stdgo._internal.encoding.json.Json_T_testIssue10281___localname___Foo_15026.T_testIssue10281___localname___Foo_15026(n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460(stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460) from stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 to stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var next(get, set) : T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460;
    function get_next():T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 return this.next;
    function set_next(v:T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460):T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460 {
        this.next = v;
        return v;
    }
    public function new(?name:String, ?next:T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460) this = new stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460.T_testMarshalErrorAndReuseEncodeState___localname___Dummy_15460(name, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testMarshalErrorAndReuseEncodeState___localname___Data_15661(stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661) from stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 to stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = v;
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = v;
        return v;
    }
    public function new(?a:String, ?i:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testMarshalErrorAndReuseEncodeState___localname___Data_15661.T_testMarshalErrorAndReuseEncodeState___localname___Data_15661(a, i);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testEncodePointerString___localname___stringPointer_16452(stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452) from stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452 to stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452 {
    public var n(get, set) : stdgo.Pointer<haxe.Int64>;
    function get_n():stdgo.Pointer<haxe.Int64> return this.n;
    function set_n(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        this.n = v;
        return v;
    }
    public function new(?n:stdgo.Pointer<haxe.Int64>) this = new stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452(n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testMarshalRawMessageValue___localname___T1_23519(stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T1_23519.T_testMarshalRawMessageValue___localname___T1_23519) from stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T1_23519.T_testMarshalRawMessageValue___localname___T1_23519 to stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T1_23519.T_testMarshalRawMessageValue___localname___T1_23519 {
    public var m(get, set) : RawMessage;
    function get_m():RawMessage return this.m;
    function set_m(v:RawMessage):RawMessage {
        this.m = v;
        return v;
    }
    public function new(?m:RawMessage) this = new stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T1_23519.T_testMarshalRawMessageValue___localname___T1_23519(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testMarshalRawMessageValue___localname___T2_23573(stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T2_23573.T_testMarshalRawMessageValue___localname___T2_23573) from stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T2_23573.T_testMarshalRawMessageValue___localname___T2_23573 to stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T2_23573.T_testMarshalRawMessageValue___localname___T2_23573 {
    public var m(get, set) : RawMessage;
    function get_m():RawMessage return this.m;
    function set_m(v:RawMessage):RawMessage {
        this.m = v;
        return v;
    }
    public function new(?m:RawMessage) this = new stdgo._internal.encoding.json.Json_T_testMarshalRawMessageValue___localname___T2_23573.T_testMarshalRawMessageValue___localname___T2_23573(m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487(stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487) from stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 to stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var next(get, set) : T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487;
    function get_next():T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 return this.next;
    function set_next(v:T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487):T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487 {
        this.next = v;
        return v;
    }
    public function new(?name:String, ?next:T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487) this = new stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487.T_testEncoderErrorAndReuseEncodeState___localname___Dummy_1487(name, next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_testEncoderErrorAndReuseEncodeState___localname___Data_1733(stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733) from stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733 to stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733 {
    public var a(get, set) : String;
    function get_a():String return this.a;
    function set_a(v:String):String {
        this.a = v;
        return v;
    }
    public var i(get, set) : StdTypes.Int;
    function get_i():StdTypes.Int return this.i;
    function set_i(v:StdTypes.Int):StdTypes.Int {
        this.i = v;
        return v;
    }
    public function new(?a:String, ?i:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_testEncoderErrorAndReuseEncodeState___localname___Data_1733.T_testEncoderErrorAndReuseEncodeState___localname___Data_1733(a, i);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef UnmarshalTypeErrorPointer = stdgo._internal.encoding.json.Json_UnmarshalTypeErrorPointer.UnmarshalTypeErrorPointer;
class UnmarshalTypeError_static_extension {
    static public function error(_e:UnmarshalTypeError):String {
        return stdgo._internal.encoding.json.Json_UnmarshalTypeError_static_extension.UnmarshalTypeError_static_extension.error(_e);
    }
}
typedef UnmarshalFieldErrorPointer = stdgo._internal.encoding.json.Json_UnmarshalFieldErrorPointer.UnmarshalFieldErrorPointer;
class UnmarshalFieldError_static_extension {
    static public function error(_e:UnmarshalFieldError):String {
        return stdgo._internal.encoding.json.Json_UnmarshalFieldError_static_extension.UnmarshalFieldError_static_extension.error(_e);
    }
}
typedef InvalidUnmarshalErrorPointer = stdgo._internal.encoding.json.Json_InvalidUnmarshalErrorPointer.InvalidUnmarshalErrorPointer;
class InvalidUnmarshalError_static_extension {
    static public function error(_e:InvalidUnmarshalError):String {
        return stdgo._internal.encoding.json.Json_InvalidUnmarshalError_static_extension.InvalidUnmarshalError_static_extension.error(_e);
    }
}
typedef T_decodeStatePointer = stdgo._internal.encoding.json.Json_T_decodeStatePointer.T_decodeStatePointer;
class T_decodeState_static_extension {
    static public function _literalInterface(_d:T_decodeState):stdgo.AnyInterface {
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._literalInterface(_d);
    }
    static public function _objectInterface(_d:T_decodeState):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._objectInterface(_d);
    }
    static public function _arrayInterface(_d:T_decodeState):Array<stdgo.AnyInterface> {
        return [for (i in stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._arrayInterface(_d)) i];
    }
    static public function _valueInterface(_d:T_decodeState):stdgo.AnyInterface {
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._valueInterface(_d);
    }
    static public function _literalStore(_d:T_decodeState, _item:Array<std.UInt>, _v:stdgo._internal.reflect.Reflect_Value.Value, _fromQuoted:Bool):stdgo.Error {
        final _item = ([for (i in _item) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._literalStore(_d, _item, _v, _fromQuoted);
    }
    static public function _convertNumber(_d:T_decodeState, _s:String):stdgo.Tuple<stdgo.AnyInterface, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._convertNumber(_d, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _object(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._object(_d, _v);
    }
    static public function _array(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._array(_d, _v);
    }
    static public function _valueQuoted(_d:T_decodeState):stdgo.AnyInterface {
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._valueQuoted(_d);
    }
    static public function _value(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._value(_d, _v);
    }
    static public function _rescanLiteral(_d:T_decodeState):Void {
        stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._rescanLiteral(_d);
    }
    static public function _scanWhile(_d:T_decodeState, _op:StdTypes.Int):Void {
        stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._scanWhile(_d, _op);
    }
    static public function _scanNext(_d:T_decodeState):Void {
        stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._scanNext(_d);
    }
    static public function _skip(_d:T_decodeState):Void {
        stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._skip(_d);
    }
    static public function _addErrorContext(_d:T_decodeState, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._addErrorContext(_d, _err);
    }
    static public function _saveError(_d:T_decodeState, _err:stdgo.Error):Void {
        stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._saveError(_d, _err);
    }
    static public function _init(_d:T_decodeState, _data:Array<std.UInt>):T_decodeState {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._init(_d, _data);
    }
    static public function _readIndex(_d:T_decodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._readIndex(_d);
    }
    static public function _unmarshal(_d:T_decodeState, _v:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._unmarshal(_d, _v);
    }
}
typedef T_unmarshalerPointer = stdgo._internal.encoding.json.Json_T_unmarshalerPointer.T_unmarshalerPointer;
class T_unmarshaler_static_extension {
    static public function unmarshalJSON(_u:T_unmarshaler, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_unmarshaler_static_extension.T_unmarshaler_static_extension.unmarshalJSON(_u, _b);
    }
}
typedef T_unmarshalerTextPointer = stdgo._internal.encoding.json.Json_T_unmarshalerTextPointer.T_unmarshalerTextPointer;
class T_unmarshalerText_static_extension {
    static public function unmarshalText(_u:T_unmarshalerText, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_unmarshalerText_static_extension.T_unmarshalerText_static_extension.unmarshalText(_u, _b);
    }
    static public function marshalText(_u:T_unmarshalerText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_unmarshalerText_static_extension.T_unmarshalerText_static_extension.marshalText(_u);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef TopPointer = stdgo._internal.encoding.json.Json_TopPointer.TopPointer;
class Top_static_extension {
    public static function sub(__self__:stdgo._internal.encoding.json.Json_Top.Top, _0:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point {
        return stdgo._internal.encoding.json.Json_Top_static_extension.Top_static_extension.sub(__self__, _0);
    }
    public static function string(__self__:stdgo._internal.encoding.json.Json_Top.Top):String {
        return stdgo._internal.encoding.json.Json_Top_static_extension.Top_static_extension.string(__self__);
    }
    public static function mul(__self__:stdgo._internal.encoding.json.Json_Top.Top, _0:StdTypes.Int):stdgo._internal.image.Image_Point.Point {
        return stdgo._internal.encoding.json.Json_Top_static_extension.Top_static_extension.mul(__self__, _0);
    }
    public static function mod(__self__:stdgo._internal.encoding.json.Json_Top.Top, _0:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Point.Point {
        return stdgo._internal.encoding.json.Json_Top_static_extension.Top_static_extension.mod(__self__, _0);
    }
    public static function in_(__self__:stdgo._internal.encoding.json.Json_Top.Top, _0:stdgo._internal.image.Image_Rectangle.Rectangle):Bool {
        return stdgo._internal.encoding.json.Json_Top_static_extension.Top_static_extension.in_(__self__, _0);
    }
    public static function eq(__self__:stdgo._internal.encoding.json.Json_Top.Top, _0:stdgo._internal.image.Image_Point.Point):Bool {
        return stdgo._internal.encoding.json.Json_Top_static_extension.Top_static_extension.eq(__self__, _0);
    }
    public static function div(__self__:stdgo._internal.encoding.json.Json_Top.Top, _0:StdTypes.Int):stdgo._internal.image.Image_Point.Point {
        return stdgo._internal.encoding.json.Json_Top_static_extension.Top_static_extension.div(__self__, _0);
    }
    public static function add(__self__:stdgo._internal.encoding.json.Json_Top.Top, _0:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point {
        return stdgo._internal.encoding.json.Json_Top_static_extension.Top_static_extension.add(__self__, _0);
    }
}
typedef Embed0pPointer = stdgo._internal.encoding.json.Json_Embed0pPointer.Embed0pPointer;
class Embed0p_static_extension {
    public static function sub(__self__:stdgo._internal.encoding.json.Json_Embed0p.Embed0p, _0:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point {
        return stdgo._internal.encoding.json.Json_Embed0p_static_extension.Embed0p_static_extension.sub(__self__, _0);
    }
    public static function string(__self__:stdgo._internal.encoding.json.Json_Embed0p.Embed0p):String {
        return stdgo._internal.encoding.json.Json_Embed0p_static_extension.Embed0p_static_extension.string(__self__);
    }
    public static function mul(__self__:stdgo._internal.encoding.json.Json_Embed0p.Embed0p, _0:StdTypes.Int):stdgo._internal.image.Image_Point.Point {
        return stdgo._internal.encoding.json.Json_Embed0p_static_extension.Embed0p_static_extension.mul(__self__, _0);
    }
    public static function mod(__self__:stdgo._internal.encoding.json.Json_Embed0p.Embed0p, _0:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Point.Point {
        return stdgo._internal.encoding.json.Json_Embed0p_static_extension.Embed0p_static_extension.mod(__self__, _0);
    }
    public static function in_(__self__:stdgo._internal.encoding.json.Json_Embed0p.Embed0p, _0:stdgo._internal.image.Image_Rectangle.Rectangle):Bool {
        return stdgo._internal.encoding.json.Json_Embed0p_static_extension.Embed0p_static_extension.in_(__self__, _0);
    }
    public static function eq(__self__:stdgo._internal.encoding.json.Json_Embed0p.Embed0p, _0:stdgo._internal.image.Image_Point.Point):Bool {
        return stdgo._internal.encoding.json.Json_Embed0p_static_extension.Embed0p_static_extension.eq(__self__, _0);
    }
    public static function div(__self__:stdgo._internal.encoding.json.Json_Embed0p.Embed0p, _0:StdTypes.Int):stdgo._internal.image.Image_Point.Point {
        return stdgo._internal.encoding.json.Json_Embed0p_static_extension.Embed0p_static_extension.div(__self__, _0);
    }
    public static function add(__self__:stdgo._internal.encoding.json.Json_Embed0p.Embed0p, _0:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point {
        return stdgo._internal.encoding.json.Json_Embed0p_static_extension.Embed0p_static_extension.add(__self__, _0);
    }
}
typedef Embed0qPointer = stdgo._internal.encoding.json.Json_Embed0qPointer.Embed0qPointer;
class Embed0q_static_extension {

}
typedef LoopPointer = stdgo._internal.encoding.json.Json_LoopPointer.LoopPointer;
class Loop_static_extension {

}
typedef S5Pointer = stdgo._internal.encoding.json.Json_S5Pointer.S5Pointer;
class S5_static_extension {

}
typedef S8Pointer = stdgo._internal.encoding.json.Json_S8Pointer.S8Pointer;
class S8_static_extension {

}
typedef S10Pointer = stdgo._internal.encoding.json.Json_S10Pointer.S10Pointer;
class S10_static_extension {

}
typedef S11Pointer = stdgo._internal.encoding.json.Json_S11Pointer.S11Pointer;
class S11_static_extension {

}
typedef S12Pointer = stdgo._internal.encoding.json.Json_S12Pointer.S12Pointer;
class S12_static_extension {

}
typedef S13Pointer = stdgo._internal.encoding.json.Json_S13Pointer.S13Pointer;
class S13_static_extension {

}
typedef T_unexportedWithMethodsPointer = stdgo._internal.encoding.json.Json_T_unexportedWithMethodsPointer.T_unexportedWithMethodsPointer;
class T_unexportedWithMethods_static_extension {
    static public function f(_:T_unexportedWithMethods):Void {
        stdgo._internal.encoding.json.Json_T_unexportedWithMethods_static_extension.T_unexportedWithMethods_static_extension.f(_);
    }
}
typedef MustNotUnmarshalJSONPointer = stdgo._internal.encoding.json.Json_MustNotUnmarshalJSONPointer.MustNotUnmarshalJSONPointer;
class MustNotUnmarshalJSON_static_extension {
    static public function unmarshalJSON(_x:MustNotUnmarshalJSON, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_MustNotUnmarshalJSON_static_extension.MustNotUnmarshalJSON_static_extension.unmarshalJSON(_x, _data);
    }
}
typedef MustNotUnmarshalTextPointer = stdgo._internal.encoding.json.Json_MustNotUnmarshalTextPointer.MustNotUnmarshalTextPointer;
class MustNotUnmarshalText_static_extension {
    static public function unmarshalText(_x:MustNotUnmarshalText, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_MustNotUnmarshalText_static_extension.MustNotUnmarshalText_static_extension.unmarshalText(_x, _text);
    }
}
typedef T_unmarshalPanicPointer = stdgo._internal.encoding.json.Json_T_unmarshalPanicPointer.T_unmarshalPanicPointer;
class T_unmarshalPanic_static_extension {
    static public function unmarshalJSON(_:T_unmarshalPanic, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_unmarshalPanic_static_extension.T_unmarshalPanic_static_extension.unmarshalJSON(_, _0);
    }
}
typedef UnsupportedTypeErrorPointer = stdgo._internal.encoding.json.Json_UnsupportedTypeErrorPointer.UnsupportedTypeErrorPointer;
class UnsupportedTypeError_static_extension {
    static public function error(_e:UnsupportedTypeError):String {
        return stdgo._internal.encoding.json.Json_UnsupportedTypeError_static_extension.UnsupportedTypeError_static_extension.error(_e);
    }
}
typedef UnsupportedValueErrorPointer = stdgo._internal.encoding.json.Json_UnsupportedValueErrorPointer.UnsupportedValueErrorPointer;
class UnsupportedValueError_static_extension {
    static public function error(_e:UnsupportedValueError):String {
        return stdgo._internal.encoding.json.Json_UnsupportedValueError_static_extension.UnsupportedValueError_static_extension.error(_e);
    }
}
typedef InvalidUTF8ErrorPointer = stdgo._internal.encoding.json.Json_InvalidUTF8ErrorPointer.InvalidUTF8ErrorPointer;
class InvalidUTF8Error_static_extension {
    static public function error(_e:InvalidUTF8Error):String {
        return stdgo._internal.encoding.json.Json_InvalidUTF8Error_static_extension.InvalidUTF8Error_static_extension.error(_e);
    }
}
typedef MarshalerErrorPointer = stdgo._internal.encoding.json.Json_MarshalerErrorPointer.MarshalerErrorPointer;
class MarshalerError_static_extension {
    static public function unwrap(_e:MarshalerError):stdgo.Error {
        return stdgo._internal.encoding.json.Json_MarshalerError_static_extension.MarshalerError_static_extension.unwrap(_e);
    }
    static public function error(_e:MarshalerError):String {
        return stdgo._internal.encoding.json.Json_MarshalerError_static_extension.MarshalerError_static_extension.error(_e);
    }
}
typedef T_encodeStatePointer = stdgo._internal.encoding.json.Json_T_encodeStatePointer.T_encodeStatePointer;
class T_encodeState_static_extension {
    static public function _reflectValue(_e:T_encodeState, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._reflectValue(_e, _v, _opts);
    }
    static public function _error(_e:T_encodeState, _err:stdgo.Error):Void {
        stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._error(_e, _err);
    }
    static public function _marshal(_e:T_encodeState, _v:stdgo.AnyInterface, _opts:T_encOpts):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._marshal(_e, _v, _opts);
    }
    public static function _tryGrowByReslice(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._tryGrowByReslice(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readSlice(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._readSlice(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _grow(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._grow(__self__, _0);
    }
    public static function _empty(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):Bool {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._empty(__self__);
    }
    public static function writeTo(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.writeTo(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeString(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.writeString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.writeRune(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:std.UInt):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.writeByte(__self__, _0);
    }
    public static function write(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.unreadRune(__self__);
    }
    public static function unreadByte(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.unreadByte(__self__);
    }
    public static function truncate(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):Void {
        stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.truncate(__self__, _0);
    }
    public static function string(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):String {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.string(__self__);
    }
    public static function reset(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):Void {
        stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.reset(__self__);
    }
    public static function readString(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.readString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readRune(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.readRune(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readFrom(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readBytes(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.readBytes(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readByte(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.readByte(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function next(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.next(__self__, _0)) i];
    }
    public static function len(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.len(__self__);
    }
    public static function grow(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):Void {
        stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.grow(__self__, _0);
    }
    public static function cap(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.cap(__self__);
    }
    public static function bytes(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.bytes(__self__)) i];
    }
    public static function availableBuffer(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.available(__self__);
    }
}
typedef T_jsonErrorPointer = stdgo._internal.encoding.json.Json_T_jsonErrorPointer.T_jsonErrorPointer;
class T_jsonError_static_extension {
    public static function error(__self__:stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError):String {
        return stdgo._internal.encoding.json.Json_T_jsonError_static_extension.T_jsonError_static_extension.error(__self__);
    }
}
typedef T_structEncoderPointer = stdgo._internal.encoding.json.Json_T_structEncoderPointer.T_structEncoderPointer;
class T_structEncoder_static_extension {
    static public function _encode(_se:T_structEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json_T_structEncoder_static_extension.T_structEncoder_static_extension._encode(_se, _e, _v, _opts);
    }
}
typedef T_mapEncoderPointer = stdgo._internal.encoding.json.Json_T_mapEncoderPointer.T_mapEncoderPointer;
class T_mapEncoder_static_extension {
    static public function _encode(_me:T_mapEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json_T_mapEncoder_static_extension.T_mapEncoder_static_extension._encode(_me, _e, _v, _opts);
    }
}
typedef T_sliceEncoderPointer = stdgo._internal.encoding.json.Json_T_sliceEncoderPointer.T_sliceEncoderPointer;
class T_sliceEncoder_static_extension {
    static public function _encode(_se:T_sliceEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json_T_sliceEncoder_static_extension.T_sliceEncoder_static_extension._encode(_se, _e, _v, _opts);
    }
}
typedef T_arrayEncoderPointer = stdgo._internal.encoding.json.Json_T_arrayEncoderPointer.T_arrayEncoderPointer;
class T_arrayEncoder_static_extension {
    static public function _encode(_ae:T_arrayEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json_T_arrayEncoder_static_extension.T_arrayEncoder_static_extension._encode(_ae, _e, _v, _opts);
    }
}
typedef T_ptrEncoderPointer = stdgo._internal.encoding.json.Json_T_ptrEncoderPointer.T_ptrEncoderPointer;
class T_ptrEncoder_static_extension {
    static public function _encode(_pe:T_ptrEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json_T_ptrEncoder_static_extension.T_ptrEncoder_static_extension._encode(_pe, _e, _v, _opts);
    }
}
typedef T_condAddrEncoderPointer = stdgo._internal.encoding.json.Json_T_condAddrEncoderPointer.T_condAddrEncoderPointer;
class T_condAddrEncoder_static_extension {
    static public function _encode(_ce:T_condAddrEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json_T_condAddrEncoder_static_extension.T_condAddrEncoder_static_extension._encode(_ce, _e, _v, _opts);
    }
}
typedef T_reflectWithStringPointer = stdgo._internal.encoding.json.Json_T_reflectWithStringPointer.T_reflectWithStringPointer;
class T_reflectWithString_static_extension {
    static public function _resolve(_w:T_reflectWithString):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_reflectWithString_static_extension.T_reflectWithString_static_extension._resolve(_w);
    }
}
typedef BugBPointer = stdgo._internal.encoding.json.Json_BugBPointer.BugBPointer;
class BugB_static_extension {

}
typedef BugXPointer = stdgo._internal.encoding.json.Json_BugXPointer.BugXPointer;
class BugX_static_extension {

}
typedef BugYPointer = stdgo._internal.encoding.json.Json_BugYPointer.BugYPointer;
class BugY_static_extension {

}
typedef BugZPointer = stdgo._internal.encoding.json.Json_BugZPointer.BugZPointer;
class BugZ_static_extension {

}
typedef T_marshalPanicPointer = stdgo._internal.encoding.json.Json_T_marshalPanicPointer.T_marshalPanicPointer;
class T_marshalPanic_static_extension {
    static public function marshalJSON(_:T_marshalPanic):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_marshalPanic_static_extension.T_marshalPanic_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef SyntaxErrorPointer = stdgo._internal.encoding.json.Json_SyntaxErrorPointer.SyntaxErrorPointer;
class SyntaxError_static_extension {
    static public function error(_e:SyntaxError):String {
        return stdgo._internal.encoding.json.Json_SyntaxError_static_extension.SyntaxError_static_extension.error(_e);
    }
}
typedef T_scannerPointer = stdgo._internal.encoding.json.Json_T_scannerPointer.T_scannerPointer;
class T_scanner_static_extension {
    static public function _error(_s:T_scanner, _c:std.UInt, _context:String):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_scanner_static_extension.T_scanner_static_extension._error(_s, _c, _context);
    }
    static public function _popParseState(_s:T_scanner):Void {
        stdgo._internal.encoding.json.Json_T_scanner_static_extension.T_scanner_static_extension._popParseState(_s);
    }
    static public function _pushParseState(_s:T_scanner, _c:std.UInt, _newParseState:StdTypes.Int, _successState:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_scanner_static_extension.T_scanner_static_extension._pushParseState(_s, _c, _newParseState, _successState);
    }
    static public function _eof(_s:T_scanner):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_scanner_static_extension.T_scanner_static_extension._eof(_s);
    }
    static public function _reset(_s:T_scanner):Void {
        stdgo._internal.encoding.json.Json_T_scanner_static_extension.T_scanner_static_extension._reset(_s);
    }
}
typedef DecoderPointer = stdgo._internal.encoding.json.Json_DecoderPointer.DecoderPointer;
class Decoder_static_extension {
    static public function inputOffset(_dec:Decoder):haxe.Int64 {
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.inputOffset(_dec);
    }
    static public function _peek(_dec:Decoder):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._peek(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function more(_dec:Decoder):Bool {
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.more(_dec);
    }
    static public function _tokenError(_dec:Decoder, _c:std.UInt):stdgo.Tuple<Token, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._tokenError(_dec, _c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function token(_dec:Decoder):stdgo.Tuple<Token, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.token(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _tokenValueEnd(_dec:Decoder):Void {
        stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._tokenValueEnd(_dec);
    }
    static public function _tokenValueAllowed(_dec:Decoder):Bool {
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._tokenValueAllowed(_dec);
    }
    static public function _tokenPrepareForDecode(_dec:Decoder):stdgo.Error {
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._tokenPrepareForDecode(_dec);
    }
    static public function _refill(_dec:Decoder):stdgo.Error {
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._refill(_dec);
    }
    static public function _readValue(_dec:Decoder):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension._readValue(_dec);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function buffered(_dec:Decoder):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.buffered(_dec);
    }
    static public function decode(_dec:Decoder, _v:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.decode(_dec, _v);
    }
    static public function disallowUnknownFields(_dec:Decoder):Void {
        stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.disallowUnknownFields(_dec);
    }
    static public function useNumber(_dec:Decoder):Void {
        stdgo._internal.encoding.json.Json_Decoder_static_extension.Decoder_static_extension.useNumber(_dec);
    }
}
typedef EncoderPointer = stdgo._internal.encoding.json.Json_EncoderPointer.EncoderPointer;
class Encoder_static_extension {
    static public function setEscapeHTML(_enc:Encoder, _on:Bool):Void {
        stdgo._internal.encoding.json.Json_Encoder_static_extension.Encoder_static_extension.setEscapeHTML(_enc, _on);
    }
    static public function setIndent(_enc:Encoder, _prefix:String, _indent:String):Void {
        stdgo._internal.encoding.json.Json_Encoder_static_extension.Encoder_static_extension.setIndent(_enc, _prefix, _indent);
    }
    static public function encode(_enc:Encoder, _v:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.encoding.json.Json_Encoder_static_extension.Encoder_static_extension.encode(_enc, _v);
    }
}
typedef NumberPointer = stdgo._internal.encoding.json.Json_NumberPointer.NumberPointer;
class Number_static_extension {
    static public function int64(_n:Number):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Number_static_extension.Number_static_extension.int64(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function float64(_n:Number):stdgo.Tuple<StdTypes.Float, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Number_static_extension.Number_static_extension.float64(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_n:Number):String {
        return stdgo._internal.encoding.json.Json_Number_static_extension.Number_static_extension.string(_n);
    }
}
typedef SSPointer = stdgo._internal.encoding.json.Json_SSPointer.SSPointer;
class SS_static_extension {
    static public function unmarshalJSON(_:stdgo.Pointer<SS>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_SS_static_extension.SS_static_extension.unmarshalJSON(_, _data);
    }
}
typedef T_u8marshalPointer = stdgo._internal.encoding.json.Json_T_u8marshalPointer.T_u8marshalPointer;
class T_u8marshal_static_extension {
    static public function unmarshalText(_u8:stdgo.Pointer<T_u8marshal>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_u8marshal_static_extension.T_u8marshal_static_extension.unmarshalText(_u8, _b);
    }
    static public function marshalText(_u8:T_u8marshal):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_u8marshal_static_extension.T_u8marshal_static_extension.marshalText(_u8);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_byteWithMarshalJSONPointer = stdgo._internal.encoding.json.Json_T_byteWithMarshalJSONPointer.T_byteWithMarshalJSONPointer;
class T_byteWithMarshalJSON_static_extension {
    static public function unmarshalJSON(_b:stdgo.Pointer<T_byteWithMarshalJSON>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_byteWithMarshalJSON_static_extension.T_byteWithMarshalJSON_static_extension.unmarshalJSON(_b, _data);
    }
    static public function marshalJSON(_b:T_byteWithMarshalJSON):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_byteWithMarshalJSON_static_extension.T_byteWithMarshalJSON_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_byteWithPtrMarshalJSONPointer = stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalJSONPointer.T_byteWithPtrMarshalJSONPointer;
class T_byteWithPtrMarshalJSON_static_extension {
    static public function unmarshalJSON(_b:stdgo.Pointer<T_byteWithPtrMarshalJSON>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalJSON_static_extension.T_byteWithPtrMarshalJSON_static_extension.unmarshalJSON(_b, _data);
    }
    static public function marshalJSON(_b:stdgo.Pointer<T_byteWithPtrMarshalJSON>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalJSON_static_extension.T_byteWithPtrMarshalJSON_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_byteWithMarshalTextPointer = stdgo._internal.encoding.json.Json_T_byteWithMarshalTextPointer.T_byteWithMarshalTextPointer;
class T_byteWithMarshalText_static_extension {
    static public function unmarshalText(_b:stdgo.Pointer<T_byteWithMarshalText>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_byteWithMarshalText_static_extension.T_byteWithMarshalText_static_extension.unmarshalText(_b, _data);
    }
    static public function marshalText(_b:T_byteWithMarshalText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_byteWithMarshalText_static_extension.T_byteWithMarshalText_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_byteWithPtrMarshalTextPointer = stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalTextPointer.T_byteWithPtrMarshalTextPointer;
class T_byteWithPtrMarshalText_static_extension {
    static public function unmarshalText(_b:stdgo.Pointer<T_byteWithPtrMarshalText>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalText_static_extension.T_byteWithPtrMarshalText_static_extension.unmarshalText(_b, _data);
    }
    static public function marshalText(_b:stdgo.Pointer<T_byteWithPtrMarshalText>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_byteWithPtrMarshalText_static_extension.T_byteWithPtrMarshalText_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_intWithMarshalJSONPointer = stdgo._internal.encoding.json.Json_T_intWithMarshalJSONPointer.T_intWithMarshalJSONPointer;
class T_intWithMarshalJSON_static_extension {
    static public function unmarshalJSON(_b:stdgo.Pointer<T_intWithMarshalJSON>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_intWithMarshalJSON_static_extension.T_intWithMarshalJSON_static_extension.unmarshalJSON(_b, _data);
    }
    static public function marshalJSON(_b:T_intWithMarshalJSON):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_intWithMarshalJSON_static_extension.T_intWithMarshalJSON_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_intWithPtrMarshalJSONPointer = stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSONPointer.T_intWithPtrMarshalJSONPointer;
class T_intWithPtrMarshalJSON_static_extension {
    static public function unmarshalJSON(_b:stdgo.Pointer<T_intWithPtrMarshalJSON>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON_static_extension.T_intWithPtrMarshalJSON_static_extension.unmarshalJSON(_b, _data);
    }
    static public function marshalJSON(_b:stdgo.Pointer<T_intWithPtrMarshalJSON>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_intWithPtrMarshalJSON_static_extension.T_intWithPtrMarshalJSON_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_intWithMarshalTextPointer = stdgo._internal.encoding.json.Json_T_intWithMarshalTextPointer.T_intWithMarshalTextPointer;
class T_intWithMarshalText_static_extension {
    static public function unmarshalText(_b:stdgo.Pointer<T_intWithMarshalText>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_intWithMarshalText_static_extension.T_intWithMarshalText_static_extension.unmarshalText(_b, _data);
    }
    static public function marshalText(_b:T_intWithMarshalText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_intWithMarshalText_static_extension.T_intWithMarshalText_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_intWithPtrMarshalTextPointer = stdgo._internal.encoding.json.Json_T_intWithPtrMarshalTextPointer.T_intWithPtrMarshalTextPointer;
class T_intWithPtrMarshalText_static_extension {
    static public function unmarshalText(_b:stdgo.Pointer<T_intWithPtrMarshalText>, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText_static_extension.T_intWithPtrMarshalText_static_extension.unmarshalText(_b, _data);
    }
    static public function marshalText(_b:stdgo.Pointer<T_intWithPtrMarshalText>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_intWithPtrMarshalText_static_extension.T_intWithPtrMarshalText_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef Time3339Pointer = stdgo._internal.encoding.json.Json_Time3339Pointer.Time3339Pointer;
class Time3339_static_extension {
    static public function unmarshalJSON(_t:Time3339, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_Time3339_static_extension.Time3339_static_extension.unmarshalJSON(_t, _b);
    }
}
typedef T_textUnmarshalerStringPointer = stdgo._internal.encoding.json.Json_T_textUnmarshalerStringPointer.T_textUnmarshalerStringPointer;
class T_textUnmarshalerString_static_extension {
    static public function unmarshalText(_m:stdgo.Pointer<T_textUnmarshalerString>, _text:Array<std.UInt>):stdgo.Error {
        final _text = ([for (i in _text) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_textUnmarshalerString_static_extension.T_textUnmarshalerString_static_extension.unmarshalText(_m, _text);
    }
}
typedef T_floatEncoderPointer = stdgo._internal.encoding.json.Json_T_floatEncoderPointer.T_floatEncoderPointer;
class T_floatEncoder_static_extension {
    static public function _encode(_bits:T_floatEncoder, _e:T_encodeState, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:T_encOpts):Void {
        stdgo._internal.encoding.json.Json_T_floatEncoder_static_extension.T_floatEncoder_static_extension._encode(_bits, _e, _v, _opts);
    }
}
typedef T_byIndexPointer = stdgo._internal.encoding.json.Json_T_byIndexPointer.T_byIndexPointer;
class T_byIndex_static_extension {
    static public function less(_x:T_byIndex, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.encoding.json.Json_T_byIndex_static_extension.T_byIndex_static_extension.less(_x, _i, _j);
    }
    static public function swap(_x:T_byIndex, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.encoding.json.Json_T_byIndex_static_extension.T_byIndex_static_extension.swap(_x, _i, _j);
    }
    static public function len(_x:T_byIndex):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_byIndex_static_extension.T_byIndex_static_extension.len(_x);
    }
}
typedef RefPointer = stdgo._internal.encoding.json.Json_RefPointer.RefPointer;
class Ref_static_extension {
    static public function unmarshalJSON(_r:stdgo.Pointer<Ref>, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_Ref_static_extension.Ref_static_extension.unmarshalJSON(_r, _0);
    }
    static public function marshalJSON(_:stdgo.Pointer<Ref>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Ref_static_extension.Ref_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef ValPointer = stdgo._internal.encoding.json.Json_ValPointer.ValPointer;
class Val_static_extension {
    static public function marshalJSON(_:Val):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_Val_static_extension.Val_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef RefTextPointer = stdgo._internal.encoding.json.Json_RefTextPointer.RefTextPointer;
class RefText_static_extension {
    static public function unmarshalText(_r:stdgo.Pointer<RefText>, _0:Array<std.UInt>):stdgo.Error {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_RefText_static_extension.RefText_static_extension.unmarshalText(_r, _0);
    }
    static public function marshalText(_:stdgo.Pointer<RefText>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_RefText_static_extension.RefText_static_extension.marshalText(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef ValTextPointer = stdgo._internal.encoding.json.Json_ValTextPointer.ValTextPointer;
class ValText_static_extension {
    static public function marshalText(_:ValText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_ValText_static_extension.ValText_static_extension.marshalText(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef CPointer = stdgo._internal.encoding.json.Json_CPointer.CPointer;
class C_static_extension {
    static public function marshalJSON(_:C):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_C_static_extension.C_static_extension.marshalJSON(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef CTextPointer = stdgo._internal.encoding.json.Json_CTextPointer.CTextPointer;
class CText_static_extension {
    static public function marshalText(_:CText):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_CText_static_extension.CText_static_extension.marshalText(_);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_nilJSONMarshalerPointer = stdgo._internal.encoding.json.Json_T_nilJSONMarshalerPointer.T_nilJSONMarshalerPointer;
class T_nilJSONMarshaler_static_extension {
    static public function marshalJSON(_nm:stdgo.Pointer<T_nilJSONMarshaler>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_nilJSONMarshaler_static_extension.T_nilJSONMarshaler_static_extension.marshalJSON(_nm);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_nilTextMarshalerPointer = stdgo._internal.encoding.json.Json_T_nilTextMarshalerPointer.T_nilTextMarshalerPointer;
class T_nilTextMarshaler_static_extension {
    static public function marshalText(_nm:stdgo.Pointer<T_nilTextMarshaler>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_nilTextMarshaler_static_extension.T_nilTextMarshaler_static_extension.marshalText(_nm);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_jsonbytePointer = stdgo._internal.encoding.json.Json_T_jsonbytePointer.T_jsonbytePointer;
class T_jsonbyte_static_extension {
    static public function marshalJSON(_b:T_jsonbyte):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_jsonbyte_static_extension.T_jsonbyte_static_extension.marshalJSON(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_textbytePointer = stdgo._internal.encoding.json.Json_T_textbytePointer.T_textbytePointer;
class T_textbyte_static_extension {
    static public function marshalText(_b:T_textbyte):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_textbyte_static_extension.T_textbyte_static_extension.marshalText(_b);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_jsonintPointer = stdgo._internal.encoding.json.Json_T_jsonintPointer.T_jsonintPointer;
class T_jsonint_static_extension {
    static public function marshalJSON(_i:T_jsonint):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_jsonint_static_extension.T_jsonint_static_extension.marshalJSON(_i);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_textintPointer = stdgo._internal.encoding.json.Json_T_textintPointer.T_textintPointer;
class T_textint_static_extension {
    static public function marshalText(_i:T_textint):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_textint_static_extension.T_textint_static_extension.marshalText(_i);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_textfloatPointer = stdgo._internal.encoding.json.Json_T_textfloatPointer.T_textfloatPointer;
class T_textfloat_static_extension {
    static public function marshalText(_f:T_textfloat):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_textfloat_static_extension.T_textfloat_static_extension.marshalText(_f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef RawMessagePointer = stdgo._internal.encoding.json.Json_RawMessagePointer.RawMessagePointer;
class RawMessage_static_extension {
    static public function unmarshalJSON(_m:RawMessage, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_RawMessage_static_extension.RawMessage_static_extension.unmarshalJSON(_m, _data);
    }
    static public function marshalJSON(_m:RawMessage):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_RawMessage_static_extension.RawMessage_static_extension.marshalJSON(_m);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef DelimPointer = stdgo._internal.encoding.json.Json_DelimPointer.DelimPointer;
class Delim_static_extension {
    static public function string(_d:Delim):String {
        return stdgo._internal.encoding.json.Json_Delim_static_extension.Delim_static_extension.string(_d);
    }
}
typedef T_strMarshalerPointer = stdgo._internal.encoding.json.Json_T_strMarshalerPointer.T_strMarshalerPointer;
class T_strMarshaler_static_extension {
    static public function marshalJSON(_s:T_strMarshaler):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_strMarshaler_static_extension.T_strMarshaler_static_extension.marshalJSON(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_strPtrMarshalerPointer = stdgo._internal.encoding.json.Json_T_strPtrMarshalerPointer.T_strPtrMarshalerPointer;
class T_strPtrMarshaler_static_extension {
    static public function marshalJSON(_s:stdgo.Pointer<T_strPtrMarshaler>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_strPtrMarshaler_static_extension.T_strPtrMarshaler_static_extension.marshalJSON(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef T_tagOptionsPointer = stdgo._internal.encoding.json.Json_T_tagOptionsPointer.T_tagOptionsPointer;
class T_tagOptions_static_extension {
    static public function contains(_o:T_tagOptions, _optionName:String):Bool {
        return stdgo._internal.encoding.json.Json_T_tagOptions_static_extension.T_tagOptions_static_extension.contains(_o, _optionName);
    }
}
typedef T_testUnmarshalEmbeddedUnexported___localname___S1_54465Pointer = stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S1_54465Pointer.T_testUnmarshalEmbeddedUnexported___localname___S1_54465Pointer;
class T_testUnmarshalEmbeddedUnexported___localname___S1_54465_static_extension {

}
typedef T_testUnmarshalEmbeddedUnexported___localname___S2_54503Pointer = stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S2_54503Pointer.T_testUnmarshalEmbeddedUnexported___localname___S2_54503Pointer;
class T_testUnmarshalEmbeddedUnexported___localname___S2_54503_static_extension {

}
typedef T_testUnmarshalEmbeddedUnexported___localname___S3_54541Pointer = stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S3_54541Pointer.T_testUnmarshalEmbeddedUnexported___localname___S3_54541Pointer;
class T_testUnmarshalEmbeddedUnexported___localname___S3_54541_static_extension {

}
typedef T_testUnmarshalEmbeddedUnexported___localname___S4_54578Pointer = stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S4_54578Pointer.T_testUnmarshalEmbeddedUnexported___localname___S4_54578Pointer;
class T_testUnmarshalEmbeddedUnexported___localname___S4_54578_static_extension {

}
typedef T_testUnmarshalEmbeddedUnexported___localname___S5_54617Pointer = stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S5_54617Pointer.T_testUnmarshalEmbeddedUnexported___localname___S5_54617Pointer;
class T_testUnmarshalEmbeddedUnexported___localname___S5_54617_static_extension {

}
typedef T_testUnmarshalEmbeddedUnexported___localname___S6_54655Pointer = stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S6_54655Pointer.T_testUnmarshalEmbeddedUnexported___localname___S6_54655Pointer;
class T_testUnmarshalEmbeddedUnexported___localname___S6_54655_static_extension {

}
typedef T_testUnmarshalEmbeddedUnexported___localname___S7_54699Pointer = stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S7_54699Pointer.T_testUnmarshalEmbeddedUnexported___localname___S7_54699Pointer;
class T_testUnmarshalEmbeddedUnexported___localname___S7_54699_static_extension {

}
typedef T_testUnmarshalEmbeddedUnexported___localname___S8_54753Pointer = stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S8_54753Pointer.T_testUnmarshalEmbeddedUnexported___localname___S8_54753Pointer;
class T_testUnmarshalEmbeddedUnexported___localname___S8_54753_static_extension {

}
typedef T_testUnmarshalEmbeddedUnexported___localname___S9_54837Pointer = stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S9_54837Pointer.T_testUnmarshalEmbeddedUnexported___localname___S9_54837Pointer;
class T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension {
    public static function f(__self__:stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S9_54837.T_testUnmarshalEmbeddedUnexported___localname___S9_54837):Void {
        stdgo._internal.encoding.json.Json_T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension.T_testUnmarshalEmbeddedUnexported___localname___S9_54837_static_extension.f(__self__);
    }
}
typedef T_testAnonymousFields___localname___S_8174Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8174Pointer.T_testAnonymousFields___localname___S_8174Pointer;
class T_testAnonymousFields___localname___S_8174_static_extension {

}
typedef T_testAnonymousFields___localname___S_8511Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8511Pointer.T_testAnonymousFields___localname___S_8511Pointer;
class T_testAnonymousFields___localname___S_8511_static_extension {

}
typedef T_testAnonymousFields___localname___S_8796Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_8796Pointer.T_testAnonymousFields___localname___S_8796Pointer;
class T_testAnonymousFields___localname___S_8796_static_extension {

}
typedef T_testAnonymousFields___localname___S_9019Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9019Pointer.T_testAnonymousFields___localname___S_9019Pointer;
class T_testAnonymousFields___localname___S_9019_static_extension {

}
typedef T_testAnonymousFields___localname___S_9282Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9282Pointer.T_testAnonymousFields___localname___S_9282Pointer;
class T_testAnonymousFields___localname___S_9282_static_extension {

}
typedef T_testAnonymousFields___localname___S_9564Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9564Pointer.T_testAnonymousFields___localname___S_9564Pointer;
class T_testAnonymousFields___localname___S_9564_static_extension {

}
typedef T_testAnonymousFields___localname___S_9958Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_9958Pointer.T_testAnonymousFields___localname___S_9958Pointer;
class T_testAnonymousFields___localname___S_9958_static_extension {

}
typedef T_testAnonymousFields___localname___S_10366Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10366Pointer.T_testAnonymousFields___localname___S_10366Pointer;
class T_testAnonymousFields___localname___S_10366_static_extension {

}
typedef T_testAnonymousFields___localname___s2_10709Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s2_10709Pointer.T_testAnonymousFields___localname___s2_10709Pointer;
class T_testAnonymousFields___localname___s2_10709_static_extension {

}
typedef T_testAnonymousFields___localname___s1_10758Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___s1_10758Pointer.T_testAnonymousFields___localname___s1_10758Pointer;
class T_testAnonymousFields___localname___s1_10758_static_extension {

}
typedef T_testAnonymousFields___localname___S_10811Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_10811Pointer.T_testAnonymousFields___localname___S_10811Pointer;
class T_testAnonymousFields___localname___S_10811_static_extension {

}
typedef T_testAnonymousFields___localname___S_11225Pointer = stdgo._internal.encoding.json.Json_T_testAnonymousFields___localname___S_11225Pointer.T_testAnonymousFields___localname___S_11225Pointer;
class T_testAnonymousFields___localname___S_11225_static_extension {

}
/**
    /|*{
    	dec.scan.reset()
    	scanp_5507034 = dec.scanp
    	gotoNext = 5507068
    	_ = gotoNext == 5507068
    	_ = 0
    	InputBreak = false
    	gotoNext = 5507179
    	_ = gotoNext == 5507179
    	if !InputBreak && (scanp_5507034 >= 0) {
    		gotoNext = 5507194
    		_ = gotoNext == 5507194
    		_ = 0
    		gotoNext = 5507240
    		_ = gotoNext == 5507240
    		if scanp_5507034 < len(dec.buf) {
    			gotoNext = 5507276
    			_ = gotoNext == 5507276
    			c_5507281 = dec.buf[scanp_5507034]
    			dec.scan.bytes++
    			gotoNext = 5507324
    			_ = gotoNext == 5507324
    			switch dec.scan.step(&dec.scan, c_5507281) {
    			case 10:
    				gotoNext = 5507364
    				_ = gotoNext == 5507364
    				dec.scan.bytes--
    				InputBreak = true
    				gotoNext = 5507179
    				gotoNext = 5507268
    			case 5, 8:
    				gotoNext = 5507577
    				_ = gotoNext == 5507577
    				if stateEndValue(&dec.scan, 32) == 10 {
    					gotoNext = 5507790
    					_ = gotoNext == 5507790
    					scanp_5507034++
    					InputBreak = true
    					gotoNext = 5507179
    					gotoNext = 5507268
    				} else {
    					gotoNext = 5507268
    				}
    				gotoNext = 5507268
    			case 11:
    				gotoNext = 5507831
    				_ = gotoNext == 5507831
    				dec.err = dec.scan.err
    				return 0, dec.scan.err
    				gotoNext = 5507268
    			default:
    				gotoNext = 5507268
    			}
    			_ = gotoNext == 5507268
    			scanp_5507034++
    			gotoNext = 5507240
    		} else {
    			gotoNext = 5507996
    		}
    		_ = gotoNext == 5507996
    		if err_5507058 != nil {
    			gotoNext = 5508010
    			_ = gotoNext == 5508010
    			if err_5507058 == io.EOF {
    				gotoNext = 5508032
    				_ = gotoNext == 5508032
    				if dec.scan.step(&dec.scan, 32) == 10 {
    					gotoNext = 5508082
    					_ = gotoNext == 5508082
    					InputBreak = true
    					gotoNext = 5507179
    					gotoNext = 5508111
    				} else {
    					gotoNext = 5508111
    				}
    				_ = gotoNext == 5508111
    				if nonSpace(dec.buf) {
    					gotoNext = 5508132
    					_ = gotoNext == 5508132
    					err_5507058 = io.ErrUnexpectedEOF
    					gotoNext = 5508179
    				} else {
    					gotoNext = 5508179
    				}
    				gotoNext = 5508179
    			} else {
    				gotoNext = 5508179
    			}
    			_ = gotoNext == 5508179
    			dec.err = err_5507058
    			return 0, err_5507058
    			gotoNext = 5508217
    		} else {
    			gotoNext = 5508217
    		}
    		_ = gotoNext == 5508217
    		n_5508217 = scanp_5507034 - dec.scanp
    		err_5507058 = dec.refill()
    		scanp_5507034 = dec.scanp + n_5508217
    		gotoNext = 5507179
    	} else {
    		gotoNext = 5508289
    	}
    	_ = gotoNext == 5508289
    	return scanp_5507034 - dec.scanp, nil
    	gotoNext = -1
    }*|/
**/
class Json {
    static public function benchmarkCodeEncoder(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkCodeEncoder.benchmarkCodeEncoder(_b);
    }
    static public function benchmarkCodeEncoderError(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkCodeEncoderError.benchmarkCodeEncoderError(_b);
    }
    static public function benchmarkCodeMarshal(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkCodeMarshal.benchmarkCodeMarshal(_b);
    }
    static public function benchmarkCodeMarshalError(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkCodeMarshalError.benchmarkCodeMarshalError(_b);
    }
    static public function benchmarkMarshalBytes(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkMarshalBytes.benchmarkMarshalBytes(_b);
    }
    static public function benchmarkMarshalBytesError(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkMarshalBytesError.benchmarkMarshalBytesError(_b);
    }
    static public function benchmarkCodeDecoder(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkCodeDecoder.benchmarkCodeDecoder(_b);
    }
    static public function benchmarkUnicodeDecoder(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkUnicodeDecoder.benchmarkUnicodeDecoder(_b);
    }
    static public function benchmarkDecoderStream(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkDecoderStream.benchmarkDecoderStream(_b);
    }
    static public function benchmarkCodeUnmarshal(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkCodeUnmarshal.benchmarkCodeUnmarshal(_b);
    }
    static public function benchmarkCodeUnmarshalReuse(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkCodeUnmarshalReuse.benchmarkCodeUnmarshalReuse(_b);
    }
    static public function benchmarkUnmarshalString(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkUnmarshalString.benchmarkUnmarshalString(_b);
    }
    static public function benchmarkUnmarshalFloat64(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkUnmarshalFloat64.benchmarkUnmarshalFloat64(_b);
    }
    static public function benchmarkUnmarshalInt64(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkUnmarshalInt64.benchmarkUnmarshalInt64(_b);
    }
    static public function benchmarkIssue10335(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkIssue10335.benchmarkIssue10335(_b);
    }
    static public function benchmarkIssue34127(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkIssue34127.benchmarkIssue34127(_b);
    }
    static public function benchmarkUnmapped(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkUnmapped.benchmarkUnmapped(_b);
    }
    static public function benchmarkTypeFieldsCache(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkTypeFieldsCache.benchmarkTypeFieldsCache(_b);
    }
    static public function benchmarkEncodeMarshaler(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkEncodeMarshaler.benchmarkEncodeMarshaler(_b);
    }
    static public function benchmarkEncoderEncode(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkEncoderEncode.benchmarkEncoderEncode(_b);
    }
    static public function benchmarkNumberIsValid(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkNumberIsValid.benchmarkNumberIsValid(_b);
    }
    static public function benchmarkNumberIsValidRegexp(_b:stdgo._internal.testing.Testing_B.B):Void {
        stdgo._internal.encoding.json.Json_benchmarkNumberIsValidRegexp.benchmarkNumberIsValidRegexp(_b);
    }
    /**
        Unmarshal parses the JSON-encoded data and stores the result
        in the value pointed to by v. If v is nil or not a pointer,
        Unmarshal returns an InvalidUnmarshalError.
        
        Unmarshal uses the inverse of the encodings that
        Marshal uses, allocating maps, slices, and pointers as necessary,
        with the following additional rules:
        
        To unmarshal JSON into a pointer, Unmarshal first handles the case of
        the JSON being the JSON literal null. In that case, Unmarshal sets
        the pointer to nil. Otherwise, Unmarshal unmarshals the JSON into
        the value pointed at by the pointer. If the pointer is nil, Unmarshal
        allocates a new value for it to point to.
        
        To unmarshal JSON into a value implementing the Unmarshaler interface,
        Unmarshal calls that value's UnmarshalJSON method, including
        when the input is a JSON null.
        Otherwise, if the value implements encoding.TextUnmarshaler
        and the input is a JSON quoted string, Unmarshal calls that value's
        UnmarshalText method with the unquoted form of the string.
        
        To unmarshal JSON into a struct, Unmarshal matches incoming object
        keys to the keys used by Marshal (either the struct field name or its tag),
        preferring an exact match but also accepting a case-insensitive match. By
        default, object keys which don't have a corresponding struct field are
        ignored (see Decoder.DisallowUnknownFields for an alternative).
        
        To unmarshal JSON into an interface value,
        Unmarshal stores one of these in the interface value:
        
        	bool, for JSON booleans
        	float64, for JSON numbers
        	string, for JSON strings
        	[]interface{}, for JSON arrays
        	map[string]interface{}, for JSON objects
        	nil for JSON null
        
        To unmarshal a JSON array into a slice, Unmarshal resets the slice length
        to zero and then appends each element to the slice.
        As a special case, to unmarshal an empty JSON array into a slice,
        Unmarshal replaces the slice with a new empty slice.
        
        To unmarshal a JSON array into a Go array, Unmarshal decodes
        JSON array elements into corresponding Go array elements.
        If the Go array is smaller than the JSON array,
        the additional JSON array elements are discarded.
        If the JSON array is smaller than the Go array,
        the additional Go array elements are set to zero values.
        
        To unmarshal a JSON object into a map, Unmarshal first establishes a map to
        use. If the map is nil, Unmarshal allocates a new map. Otherwise Unmarshal
        reuses the existing map, keeping existing entries. Unmarshal then stores
        key-value pairs from the JSON object into the map. The map's key type must
        either be any string type, an integer, implement json.Unmarshaler, or
        implement encoding.TextUnmarshaler.
        
        If the JSON-encoded data contain a syntax error, Unmarshal returns a SyntaxError.
        
        If a JSON value is not appropriate for a given target type,
        or if a JSON number overflows the target type, Unmarshal
        skips that field and completes the unmarshaling as best it can.
        If no more serious errors are encountered, Unmarshal returns
        an UnmarshalTypeError describing the earliest such error. In any
        case, it's not guaranteed that all the remaining fields following
        the problematic one will be unmarshaled into the target object.
        
        The JSON null value unmarshals into an interface, map, pointer, or slice
        by setting that Go value to nil. Because null is often used in JSON to mean
        “not present,” unmarshaling a JSON null into any other Go type has no effect
        on the value and produces no error.
        
        When unmarshaling quoted strings, invalid UTF-8 or
        invalid UTF-16 surrogate pairs are not treated as an error.
        Instead, they are replaced by the Unicode replacement
        character U+FFFD.
    **/
    static public function unmarshal(_data:Array<std.UInt>, _v:stdgo.AnyInterface):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_data, _v);
    }
    static public function testMarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshal.testMarshal(_t);
    }
    static public function testMarshalBadUTF8(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshalBadUTF8.testMarshalBadUTF8(_t);
    }
    static public function testMarshalNumberZeroVal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshalNumberZeroVal.testMarshalNumberZeroVal(_t);
    }
    static public function testMarshalEmbeds(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshalEmbeds.testMarshalEmbeds(_t);
    }
    static public function testUnmarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshal.testUnmarshal(_t);
    }
    static public function testUnmarshalMarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalMarshal.testUnmarshalMarshal(_t);
    }
    /**
        Independent of Decode, basic coverage of the accessors in Number
    **/
    static public function testNumberAccessors(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testNumberAccessors.testNumberAccessors(_t);
    }
    static public function testLargeByteSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testLargeByteSlice.testLargeByteSlice(_t);
    }
    static public function testUnmarshalInterface(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalInterface.testUnmarshalInterface(_t);
    }
    static public function testUnmarshalPtrPtr(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalPtrPtr.testUnmarshalPtrPtr(_t);
    }
    static public function testEscape(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testEscape.testEscape(_t);
    }
    /**
        If people misuse the ,string modifier, the error message should be
        helpful, telling the user that they're doing it wrong.
    **/
    static public function testErrorMessageFromMisusedString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testErrorMessageFromMisusedString.testErrorMessageFromMisusedString(_t);
    }
    static public function testRefUnmarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testRefUnmarshal.testRefUnmarshal(_t);
    }
    /**
        Test that the empty string doesn't panic decoding when ,string is specified
        Issue 3450
    **/
    static public function testEmptyString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testEmptyString.testEmptyString(_t);
    }
    /**
        Test that a null for ,string is not replaced with the previous quoted string (issue 7046).
        It should also not be an error (issue 2540, issue 8587).
    **/
    static public function testNullString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testNullString.testNullString(_t);
    }
    static public function testInterfaceSet(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testInterfaceSet.testInterfaceSet(_t);
    }
    /**
        JSON null values should be ignored for primitives and string values instead of resulting in an error.
        Issue 2540
    **/
    static public function testUnmarshalNulls(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalNulls.testUnmarshalNulls(_t);
    }
    static public function testStringKind(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testStringKind.testStringKind(_t);
    }
    /**
        Custom types with []byte as underlying type could not be marshaled
        and then unmarshaled.
        Issue 8962.
    **/
    static public function testByteKind(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testByteKind.testByteKind(_t);
    }
    /**
        The fix for issue 8962 introduced a regression.
        Issue 12921.
    **/
    static public function testSliceOfCustomByte(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testSliceOfCustomByte.testSliceOfCustomByte(_t);
    }
    static public function testUnmarshalTypeError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalTypeError.testUnmarshalTypeError(_t);
    }
    static public function testUnmarshalSyntax(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalSyntax.testUnmarshalSyntax(_t);
    }
    static public function testUnmarshalUnexported(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalUnexported.testUnmarshalUnexported(_t);
    }
    static public function testUnmarshalJSONLiteralError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalJSONLiteralError.testUnmarshalJSONLiteralError(_t);
    }
    /**
        Test that extra object elements in an array do not result in a
        "data changing underfoot" error.
        Issue 3717
    **/
    static public function testSkipArrayObjects(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testSkipArrayObjects.testSkipArrayObjects(_t);
    }
    /**
        Test semantics of pre-filled data, such as struct fields, map elements,
        slices, and arrays.
        Issues 4900 and 8837, among others.
    **/
    static public function testPrefilled(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testPrefilled.testPrefilled(_t);
    }
    static public function testInvalidUnmarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testInvalidUnmarshal.testInvalidUnmarshal(_t);
    }
    static public function testInvalidUnmarshalText(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testInvalidUnmarshalText.testInvalidUnmarshalText(_t);
    }
    /**
        Test that string option is ignored for invalid types.
        Issue 9812.
    **/
    static public function testInvalidStringOption(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testInvalidStringOption.testInvalidStringOption(_t);
    }
    /**
        Test unmarshal behavior with regards to embedded unexported structs.
        
        (Issue 21357) If the embedded struct is a pointer and is unallocated,
        this returns an error because unmarshal cannot set the field.
        
        (Issue 24152) If the embedded struct is given an explicit name,
        ensure that the normal unmarshal logic does not panic in reflect.
        
        (Issue 28145) If the embedded struct is given an explicit name and has
        exported methods, don't cause a panic trying to get its value.
    **/
    static public function testUnmarshalEmbeddedUnexported(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalEmbeddedUnexported.testUnmarshalEmbeddedUnexported(_t);
    }
    static public function testUnmarshalErrorAfterMultipleJSON(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalErrorAfterMultipleJSON.testUnmarshalErrorAfterMultipleJSON(_t);
    }
    static public function testUnmarshalPanic(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalPanic.testUnmarshalPanic(_t);
    }
    /**
        The decoder used to hang if decoding into an interface pointing to its own address.
        See golang.org/issues/31740.
    **/
    static public function testUnmarshalRecursivePointer(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalRecursivePointer.testUnmarshalRecursivePointer(_t);
    }
    /**
        Test unmarshal to a map, where the map key is a user defined type.
        See golang.org/issues/34437.
    **/
    static public function testUnmarshalMapWithTextUnmarshalerStringKey(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalMapWithTextUnmarshalerStringKey.testUnmarshalMapWithTextUnmarshalerStringKey(_t);
    }
    static public function testUnmarshalRescanLiteralMangledUnquote(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalRescanLiteralMangledUnquote.testUnmarshalRescanLiteralMangledUnquote(_t);
    }
    static public function testUnmarshalMaxDepth(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnmarshalMaxDepth.testUnmarshalMaxDepth(_t);
    }
    /**
        Marshal returns the JSON encoding of v.
        
        Marshal traverses the value v recursively.
        If an encountered value implements the Marshaler interface
        and is not a nil pointer, Marshal calls its MarshalJSON method
        to produce JSON. If no MarshalJSON method is present but the
        value implements encoding.TextMarshaler instead, Marshal calls
        its MarshalText method and encodes the result as a JSON string.
        The nil pointer exception is not strictly necessary
        but mimics a similar, necessary exception in the behavior of
        UnmarshalJSON.
        
        Otherwise, Marshal uses the following type-dependent default encodings:
        
        Boolean values encode as JSON booleans.
        
        Floating point, integer, and Number values encode as JSON numbers.
        NaN and +/-Inf values will return an [UnsupportedValueError].
        
        String values encode as JSON strings coerced to valid UTF-8,
        replacing invalid bytes with the Unicode replacement rune.
        So that the JSON will be safe to embed inside HTML <script> tags,
        the string is encoded using HTMLEscape,
        which replaces "<", ">", "&", U+2028, and U+2029 are escaped
        to "\u003c","\u003e", "\u0026", "\u2028", and "\u2029".
        This replacement can be disabled when using an Encoder,
        by calling SetEscapeHTML(false).
        
        Array and slice values encode as JSON arrays, except that
        []byte encodes as a base64-encoded string, and a nil slice
        encodes as the null JSON value.
        
        Struct values encode as JSON objects.
        Each exported struct field becomes a member of the object, using the
        field name as the object key, unless the field is omitted for one of the
        reasons given below.
        
        The encoding of each struct field can be customized by the format string
        stored under the "json" key in the struct field's tag.
        The format string gives the name of the field, possibly followed by a
        comma-separated list of options. The name may be empty in order to
        specify options without overriding the default field name.
        
        The "omitempty" option specifies that the field should be omitted
        from the encoding if the field has an empty value, defined as
        false, 0, a nil pointer, a nil interface value, and any empty array,
        slice, map, or string.
        
        As a special case, if the field tag is "-", the field is always omitted.
        Note that a field with name "-" can still be generated using the tag "-,".
        
        Examples of struct field tags and their meanings:
        
        	// Field appears in JSON as key "myName".
        	Field int `json:"myName"`
        
        	// Field appears in JSON as key "myName" and
        	// the field is omitted from the object if its value is empty,
        	// as defined above.
        	Field int `json:"myName,omitempty"`
        
        	// Field appears in JSON as key "Field" (the default), but
        	// the field is skipped if empty.
        	// Note the leading comma.
        	Field int `json:",omitempty"`
        
        	// Field is ignored by this package.
        	Field int `json:"-"`
        
        	// Field appears in JSON as key "-".
        	Field int `json:"-,"`
        
        The "string" option signals that a field is stored as JSON inside a
        JSON-encoded string. It applies only to fields of string, floating point,
        integer, or boolean types. This extra level of encoding is sometimes used
        when communicating with JavaScript programs:
        
        	Int64String int64 `json:",string"`
        
        The key name will be used if it's a non-empty string consisting of
        only Unicode letters, digits, and ASCII punctuation except quotation
        marks, backslash, and comma.
        
        Anonymous struct fields are usually marshaled as if their inner exported fields
        were fields in the outer struct, subject to the usual Go visibility rules amended
        as described in the next paragraph.
        An anonymous struct field with a name given in its JSON tag is treated as
        having that name, rather than being anonymous.
        An anonymous struct field of interface type is treated the same as having
        that type as its name, rather than being anonymous.
        
        The Go visibility rules for struct fields are amended for JSON when
        deciding which field to marshal or unmarshal. If there are
        multiple fields at the same level, and that level is the least
        nested (and would therefore be the nesting level selected by the
        usual Go rules), the following extra rules apply:
        
        1) Of those fields, if any are JSON-tagged, only tagged fields are considered,
        even if there are multiple untagged fields that would otherwise conflict.
        
        2) If there is exactly one field (tagged or not according to the first rule), that is selected.
        
        3) Otherwise there are multiple fields, and all are ignored; no error occurs.
        
        Handling of anonymous struct fields is new in Go 1.1.
        Prior to Go 1.1, anonymous struct fields were ignored. To force ignoring of
        an anonymous struct field in both current and earlier versions, give the field
        a JSON tag of "-".
        
        Map values encode as JSON objects. The map's key type must either be a
        string, an integer type, or implement encoding.TextMarshaler. The map keys
        are sorted and used as JSON object keys by applying the following rules,
        subject to the UTF-8 coercion described for string values above:
          - keys of any string type are used directly
          - encoding.TextMarshalers are marshaled
          - integer keys are converted to strings
        
        Pointer values encode as the value pointed to.
        A nil pointer encodes as the null JSON value.
        
        Interface values encode as the value contained in the interface.
        A nil interface value encodes as the null JSON value.
        
        Channel, complex, and function values cannot be encoded in JSON.
        Attempting to encode such a value causes Marshal to return
        an UnsupportedTypeError.
        
        JSON cannot represent cyclic data structures and Marshal does not
        handle them. Passing cyclic structures to Marshal will result in
        an error.
    **/
    static public function marshal(_v:stdgo.AnyInterface):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_marshal.marshal(_v);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        MarshalIndent is like Marshal but applies Indent to format the output.
        Each JSON element in the output will begin on a new line beginning with prefix
        followed by one or more copies of indent according to the indentation nesting.
    **/
    static public function marshalIndent(_v:stdgo.AnyInterface, _prefix:String, _indent:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_marshalIndent.marshalIndent(_v, _prefix, _indent);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function testOmitEmpty(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testOmitEmpty.testOmitEmpty(_t);
    }
    static public function testRoundtripStringTag(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testRoundtripStringTag.testRoundtripStringTag(_t);
    }
    static public function testEncodeRenamedByteSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testEncodeRenamedByteSlice.testEncodeRenamedByteSlice(_t);
    }
    static public function testSamePointerNoCycle(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testSamePointerNoCycle.testSamePointerNoCycle(_t);
    }
    static public function testSliceNoCycle(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testSliceNoCycle.testSliceNoCycle(_t);
    }
    static public function testUnsupportedValues(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testUnsupportedValues.testUnsupportedValues(_t);
    }
    /**
        Issue 43207
    **/
    static public function testMarshalTextFloatMap(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshalTextFloatMap.testMarshalTextFloatMap(_t);
    }
    static public function testRefValMarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testRefValMarshal.testRefValMarshal(_t);
    }
    static public function testMarshalerEscaping(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshalerEscaping.testMarshalerEscaping(_t);
    }
    static public function testAnonymousFields(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testAnonymousFields.testAnonymousFields(_t);
    }
    /**
        See golang.org/issue/16042 and golang.org/issue/34235.
    **/
    static public function testNilMarshal(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testNilMarshal.testNilMarshal(_t);
    }
    /**
        Issue 5245.
    **/
    static public function testEmbeddedBug(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testEmbeddedBug.testEmbeddedBug(_t);
    }
    /**
        Test that a field with a tag dominates untagged fields.
    **/
    static public function testTaggedFieldDominates(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testTaggedFieldDominates.testTaggedFieldDominates(_t);
    }
    static public function testDuplicatedFieldDisappears(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testDuplicatedFieldDisappears.testDuplicatedFieldDisappears(_t);
    }
    static public function testIssue10281(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testIssue10281.testIssue10281(_t);
    }
    static public function testMarshalErrorAndReuseEncodeState(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshalErrorAndReuseEncodeState.testMarshalErrorAndReuseEncodeState(_t);
    }
    static public function testHTMLEscape(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testHTMLEscape.testHTMLEscape(_t);
    }
    /**
        golang.org/issue/8582
    **/
    static public function testEncodePointerString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testEncodePointerString.testEncodePointerString(_t);
    }
    static public function testEncodeString(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testEncodeString.testEncodeString(_t);
    }
    /**
        Issue 13783
    **/
    static public function testEncodeBytekind(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testEncodeBytekind.testEncodeBytekind(_t);
    }
    static public function testTextMarshalerMapKeysAreSorted(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testTextMarshalerMapKeysAreSorted.testTextMarshalerMapKeysAreSorted(_t);
    }
    /**
        https://golang.org/issue/33675
    **/
    static public function testNilMarshalerTextMapKey(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testNilMarshalerTextMapKey.testNilMarshalerTextMapKey(_t);
    }
    static public function testMarshalFloat(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshalFloat.testMarshalFloat(_t);
    }
    static public function testMarshalRawMessageValue(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshalRawMessageValue.testMarshalRawMessageValue(_t);
    }
    static public function testMarshalPanic(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshalPanic.testMarshalPanic(_t);
    }
    static public function testMarshalUncommonFieldNames(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshalUncommonFieldNames.testMarshalUncommonFieldNames(_t);
    }
    static public function testMarshalerError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testMarshalerError.testMarshalerError(_t);
    }
    static public function fuzzEqualFold(_f:stdgo._internal.testing.Testing_F.F):Void {
        stdgo._internal.encoding.json.Json_fuzzEqualFold.fuzzEqualFold(_f);
    }
    static public function fuzzUnmarshalJSON(_f:stdgo._internal.testing.Testing_F.F):Void {
        stdgo._internal.encoding.json.Json_fuzzUnmarshalJSON.fuzzUnmarshalJSON(_f);
    }
    static public function fuzzDecoderToken(_f:stdgo._internal.testing.Testing_F.F):Void {
        stdgo._internal.encoding.json.Json_fuzzDecoderToken.fuzzDecoderToken(_f);
    }
    /**
        HTMLEscape appends to dst the JSON-encoded src with <, >, &, U+2028 and U+2029
        characters inside string literals changed to \u003c, \u003e, \u0026, \u2028, \u2029
        so that the JSON will be safe to embed inside HTML <script> tags.
        For historical reasons, web browsers don't honor standard HTML
        escaping within <script> tags, so an alternative JSON encoding must be used.
    **/
    static public function hTMLEscape(_dst:stdgo._internal.bytes.Bytes_Buffer.Buffer, _src:Array<std.UInt>):Void {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.json.Json_hTMLEscape.hTMLEscape(_dst, _src);
    }
    /**
        Compact appends to dst the JSON-encoded src with
        insignificant space characters elided.
    **/
    static public function compact(_dst:stdgo._internal.bytes.Bytes_Buffer.Buffer, _src:Array<std.UInt>):stdgo.Error {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_compact.compact(_dst, _src);
    }
    /**
        Indent appends to dst an indented form of the JSON-encoded src.
        Each element in a JSON object or array begins on a new,
        indented line beginning with prefix followed by one or more
        copies of indent according to the indentation nesting.
        The data appended to dst does not begin with the prefix nor
        any indentation, to make it easier to embed inside other formatted JSON data.
        Although leading space characters (space, tab, carriage return, newline)
        at the beginning of src are dropped, trailing space characters
        at the end of src are preserved and copied to dst.
        For example, if src has no trailing spaces, neither will dst;
        if src ends in a trailing newline, so will dst.
    **/
    static public function indent(_dst:stdgo._internal.bytes.Bytes_Buffer.Buffer, _src:Array<std.UInt>, _prefix:String, _indent:String):stdgo.Error {
        final _src = ([for (i in _src) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_indent.indent(_dst, _src, _prefix, _indent);
    }
    static public function testNumberIsValid(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testNumberIsValid.testNumberIsValid(_t);
    }
    /**
        Valid reports whether data is a valid JSON encoding.
    **/
    static public function valid(_data:Array<std.UInt>):Bool {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_valid.valid(_data);
    }
    static public function testValid(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testValid.testValid(_t);
    }
    static public function testCompact(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testCompact.testCompact(_t);
    }
    static public function testCompactSeparators(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testCompactSeparators.testCompactSeparators(_t);
    }
    static public function testIndent(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testIndent.testIndent(_t);
    }
    static public function testCompactBig(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testCompactBig.testCompactBig(_t);
    }
    static public function testIndentBig(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testIndentBig.testIndentBig(_t);
    }
    static public function testIndentErrors(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testIndentErrors.testIndentErrors(_t);
    }
    /**
        NewDecoder returns a new decoder that reads from r.
        
        The decoder introduces its own buffering and may
        read data from r beyond the JSON values requested.
    **/
    static public function newDecoder(_r:stdgo._internal.io.Io_Reader.Reader):Decoder {
        return stdgo._internal.encoding.json.Json_newDecoder.newDecoder(_r);
    }
    /**
        NewEncoder returns a new encoder that writes to w.
    **/
    static public function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):Encoder {
        return stdgo._internal.encoding.json.Json_newEncoder.newEncoder(_w);
    }
    static public function testEncoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testEncoder.testEncoder(_t);
    }
    static public function testEncoderErrorAndReuseEncodeState(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testEncoderErrorAndReuseEncodeState.testEncoderErrorAndReuseEncodeState(_t);
    }
    static public function testEncoderIndent(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testEncoderIndent.testEncoderIndent(_t);
    }
    static public function testEncoderSetEscapeHTML(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testEncoderSetEscapeHTML.testEncoderSetEscapeHTML(_t);
    }
    static public function testDecoder(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testDecoder.testDecoder(_t);
    }
    static public function testDecoderBuffered(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testDecoderBuffered.testDecoderBuffered(_t);
    }
    static public function testRawMessage(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testRawMessage.testRawMessage(_t);
    }
    static public function testNullRawMessage(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testNullRawMessage.testNullRawMessage(_t);
    }
    static public function testBlocking(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testBlocking.testBlocking(_t);
    }
    static public function testDecodeInStream(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testDecodeInStream.testDecodeInStream(_t);
    }
    /**
        Test from golang.org/issue/11893
    **/
    static public function testHTTPDecoding(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testHTTPDecoding.testHTTPDecoding(_t);
    }
    static public function testStructTagObjectKey(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testStructTagObjectKey.testStructTagObjectKey(_t);
    }
    static public function testTagParsing(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.encoding.json.Json_testTagParsing.testTagParsing(_t);
    }
}
