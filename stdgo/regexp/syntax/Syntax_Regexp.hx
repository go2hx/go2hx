package stdgo.regexp.syntax;
@:structInit @:using(stdgo.regexp.syntax.Syntax.Regexp_static_extension) abstract Regexp(stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp) from stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp to stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp {
    public var op(get, set) : Op;
    function get_op():Op return this.op;
    function set_op(v:Op):Op {
        this.op = v;
        return v;
    }
    public var flags(get, set) : Flags;
    function get_flags():Flags return this.flags;
    function set_flags(v:Flags):Flags {
        this.flags = v;
        return v;
    }
    public var sub(get, set) : Array<Regexp>;
    function get_sub():Array<Regexp> return [for (i in this.sub) i];
    function set_sub(v:Array<Regexp>):Array<Regexp> {
        this.sub = ([for (i in v) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        return v;
    }
    public var sub0(get, set) : haxe.ds.Vector<Regexp>;
    function get_sub0():haxe.ds.Vector<Regexp> return haxe.ds.Vector.fromArrayCopy([for (i in this.sub0) i]);
    function set_sub0(v:haxe.ds.Vector<Regexp>):haxe.ds.Vector<Regexp> {
        this.sub0 = ([for (i in v) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>)] : stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>);
        return v;
    }
    public var rune(get, set) : Array<StdTypes.Int>;
    function get_rune():Array<StdTypes.Int> return [for (i in this.rune) i];
    function set_rune(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.rune = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var rune0(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get_rune0():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this.rune0) i]);
    function set_rune0(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this.rune0 = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>);
        return v;
    }
    public var min(get, set) : StdTypes.Int;
    function get_min():StdTypes.Int return this.min;
    function set_min(v:StdTypes.Int):StdTypes.Int {
        this.min = (v : stdgo.GoInt);
        return v;
    }
    public var max(get, set) : StdTypes.Int;
    function get_max():StdTypes.Int return this.max;
    function set_max(v:StdTypes.Int):StdTypes.Int {
        this.max = (v : stdgo.GoInt);
        return v;
    }
    public var cap(get, set) : StdTypes.Int;
    function get_cap():StdTypes.Int return this.cap;
    function set_cap(v:StdTypes.Int):StdTypes.Int {
        this.cap = (v : stdgo.GoInt);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?op:Op, ?flags:Flags, ?sub:Array<Regexp>, ?sub0:haxe.ds.Vector<Regexp>, ?rune:Array<StdTypes.Int>, ?rune0:haxe.ds.Vector<StdTypes.Int>, ?min:StdTypes.Int, ?max:StdTypes.Int, ?cap:StdTypes.Int, ?name:String) this = new stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp(op, flags, ([for (i in sub) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>), ([for (i in sub0) (i : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>)] : stdgo.GoArray<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>), ([for (i in rune) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>), ([for (i in rune0) (i : stdgo.GoInt32)] : stdgo.GoArray<stdgo.GoInt32>), (min : stdgo.GoInt), (max : stdgo.GoInt), (cap : stdgo.GoInt), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
