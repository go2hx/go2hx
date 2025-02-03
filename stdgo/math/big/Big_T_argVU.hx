package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_argVU_static_extension) abstract T_argVU(stdgo._internal.math.big.Big_T_argVU.T_argVU) from stdgo._internal.math.big.Big_T_argVU.T_argVU to stdgo._internal.math.big.Big_T_argVU.T_argVU {
    public var _d(get, set) : Array<Word>;
    function get__d():Array<Word> return [for (i in this._d) i];
    function set__d(v:Array<Word>):Array<Word> {
        this._d = ([for (i in v) i] : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
        return v;
    }
    public var _l(get, set) : std.UInt;
    function get__l():std.UInt return this._l;
    function set__l(v:std.UInt):std.UInt {
        this._l = (v : stdgo.GoUInt);
        return v;
    }
    public var _xp(get, set) : std.UInt;
    function get__xp():std.UInt return this._xp;
    function set__xp(v:std.UInt):std.UInt {
        this._xp = (v : stdgo.GoUInt);
        return v;
    }
    public var _zp(get, set) : std.UInt;
    function get__zp():std.UInt return this._zp;
    function set__zp(v:std.UInt):std.UInt {
        this._zp = (v : stdgo.GoUInt);
        return v;
    }
    public var _s(get, set) : std.UInt;
    function get__s():std.UInt return this._s;
    function set__s(v:std.UInt):std.UInt {
        this._s = (v : stdgo.GoUInt);
        return v;
    }
    public var _r(get, set) : Array<Word>;
    function get__r():Array<Word> return [for (i in this._r) i];
    function set__r(v:Array<Word>):Array<Word> {
        this._r = ([for (i in v) i] : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>);
        return v;
    }
    public var _c(get, set) : Word;
    function get__c():Word return this._c;
    function set__c(v:Word):Word {
        this._c = v;
        return v;
    }
    public var _m(get, set) : String;
    function get__m():String return this._m;
    function set__m(v:String):String {
        this._m = (v : stdgo.GoString);
        return v;
    }
    public function new(?_d:Array<Word>, ?_l:std.UInt, ?_xp:std.UInt, ?_zp:std.UInt, ?_s:std.UInt, ?_r:Array<Word>, ?_c:Word, ?_m:String) this = new stdgo._internal.math.big.Big_T_argVU.T_argVU(([for (i in _d) i] : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>), (_l : stdgo.GoUInt), (_xp : stdgo.GoUInt), (_zp : stdgo.GoUInt), (_s : stdgo.GoUInt), ([for (i in _r) i] : stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>), _c, (_m : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
