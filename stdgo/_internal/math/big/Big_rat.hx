package stdgo._internal.math.big;
@:structInit @:using(stdgo._internal.math.big.Big_rat_static_extension.Rat_static_extension) class Rat {
    public var _a : stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
    public var _b : stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
    public function new(?_a:stdgo._internal.math.big.Big_int_.Int_, ?_b:stdgo._internal.math.big.Big_int_.Int_) {
        if (_a != null) this._a = _a;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rat(_a, _b);
    }
}
