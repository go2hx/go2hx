package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.fmt_test.Fmt_test_T_testState_static_extension.T_testState_static_extension) class T_testState {
    public var _width : stdgo.GoInt = 0;
    public var _widthOK : Bool = false;
    public var _prec : stdgo.GoInt = 0;
    public var _precOK : Bool = false;
    public var _flag : stdgo.GoMap<stdgo.GoInt, Bool> = (null : stdgo.GoMap<stdgo.GoInt, Bool>);
    public function new(?_width:stdgo.GoInt, ?_widthOK:Bool, ?_prec:stdgo.GoInt, ?_precOK:Bool, ?_flag:stdgo.GoMap<stdgo.GoInt, Bool>) {
        if (_width != null) this._width = _width;
        if (_widthOK != null) this._widthOK = _widthOK;
        if (_prec != null) this._prec = _prec;
        if (_precOK != null) this._precOK = _precOK;
        if (_flag != null) this._flag = _flag;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testState(_width, _widthOK, _prec, _precOK, _flag);
    }
}
