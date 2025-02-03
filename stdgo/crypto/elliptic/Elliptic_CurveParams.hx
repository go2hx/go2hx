package stdgo.crypto.elliptic;
@:structInit @:using(stdgo.crypto.elliptic.Elliptic.CurveParams_static_extension) abstract CurveParams(stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams) from stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams to stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams {
    public var p(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_p():stdgo._internal.math.big.Big_Int_.Int_ return this.p;
    function set_p(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.p = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var n(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_n():stdgo._internal.math.big.Big_Int_.Int_ return this.n;
    function set_n(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.n = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var b(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_b():stdgo._internal.math.big.Big_Int_.Int_ return this.b;
    function set_b(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.b = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var gx(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_gx():stdgo._internal.math.big.Big_Int_.Int_ return this.gx;
    function set_gx(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.gx = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var gy(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_gy():stdgo._internal.math.big.Big_Int_.Int_ return this.gy;
    function set_gy(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.gy = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var bitSize(get, set) : StdTypes.Int;
    function get_bitSize():StdTypes.Int return this.bitSize;
    function set_bitSize(v:StdTypes.Int):StdTypes.Int {
        this.bitSize = (v : stdgo.GoInt);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?p:stdgo._internal.math.big.Big_Int_.Int_, ?n:stdgo._internal.math.big.Big_Int_.Int_, ?b:stdgo._internal.math.big.Big_Int_.Int_, ?gx:stdgo._internal.math.big.Big_Int_.Int_, ?gy:stdgo._internal.math.big.Big_Int_.Int_, ?bitSize:StdTypes.Int, ?name:String) this = new stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams((p : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (n : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (b : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (gx : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (gy : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (bitSize : stdgo.GoInt), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
