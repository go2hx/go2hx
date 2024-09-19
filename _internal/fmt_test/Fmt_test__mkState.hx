package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function _mkState(_w:stdgo.GoInt, _p:stdgo.GoInt, _flags:stdgo.GoString):_internal.fmt_test.Fmt_test_T_testState.T_testState {
        var _s = (new _internal.fmt_test.Fmt_test_T_testState.T_testState() : _internal.fmt_test.Fmt_test_T_testState.T_testState);
        if (_w != ((-1000 : stdgo.GoInt))) {
            _s._width = _w;
            _s._widthOK = true;
        };
        if (_p != ((-1000 : stdgo.GoInt))) {
            _s._prec = _p;
            _s._precOK = true;
        };
        _s._flag = ({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, Bool>);
        for (__3 => _c in _flags) {
            _s._flag[(_c : stdgo.GoInt)] = true;
        };
        return _s?.__copy__();
    }
