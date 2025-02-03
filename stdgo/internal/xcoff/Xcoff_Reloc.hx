package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.Reloc_static_extension) abstract Reloc(stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc) from stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc to stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc {
    public var virtualAddress(get, set) : haxe.UInt64;
    function get_virtualAddress():haxe.UInt64 return this.virtualAddress;
    function set_virtualAddress(v:haxe.UInt64):haxe.UInt64 {
        this.virtualAddress = (v : stdgo.GoUInt64);
        return v;
    }
    public var symbol(get, set) : Symbol;
    function get_symbol():Symbol return this.symbol;
    function set_symbol(v:Symbol):Symbol {
        this.symbol = (v : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>);
        return v;
    }
    public var signed(get, set) : Bool;
    function get_signed():Bool return this.signed;
    function set_signed(v:Bool):Bool {
        this.signed = v;
        return v;
    }
    public var instructionFixed(get, set) : Bool;
    function get_instructionFixed():Bool return this.instructionFixed;
    function set_instructionFixed(v:Bool):Bool {
        this.instructionFixed = v;
        return v;
    }
    public var length_(get, set) : std.UInt;
    function get_length_():std.UInt return this.length_;
    function set_length_(v:std.UInt):std.UInt {
        this.length_ = (v : stdgo.GoUInt8);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?virtualAddress:haxe.UInt64, ?symbol:Symbol, ?signed:Bool, ?instructionFixed:Bool, ?length_:std.UInt, ?type:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_Reloc.Reloc((virtualAddress : stdgo.GoUInt64), (symbol : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Symbol.Symbol>), signed, instructionFixed, (length_ : stdgo.GoUInt8), (type : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
