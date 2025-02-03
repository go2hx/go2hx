package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.Optionals_static_extension) abstract Optionals(stdgo._internal.encoding.json.Json_Optionals.Optionals) from stdgo._internal.encoding.json.Json_Optionals.Optionals to stdgo._internal.encoding.json.Json_Optionals.Optionals {
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
    public var mr(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get_mr():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this.mr;
    function set_mr(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this.mr = (v : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        return v;
    }
    public var mo(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get_mo():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this.mo;
    function set_mo(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this.mo = (v : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
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
(sr : stdgo.GoString),
(so : stdgo.GoString),
(sw : stdgo.GoString),
(ir : stdgo.GoInt),
(io : stdgo.GoInt),
([for (i in slr) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in slo) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(mr : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>),
(mo : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>),
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
