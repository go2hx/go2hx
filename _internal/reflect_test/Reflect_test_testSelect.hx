package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSelect(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.reflect_test.Reflect_test__selectWatch._selectWatch._once.do_(function():Void {
            stdgo.Go.routine(() -> _internal.reflect_test.Reflect_test__selectWatcher._selectWatcher());
        });
        var _x:_internal.reflect_test.Reflect_test_T_exhaustive.T_exhaustive = ({} : _internal.reflect_test.Reflect_test_T_exhaustive.T_exhaustive);
        var _nch = (0 : stdgo.GoInt);
        var _newop = (function(_n:stdgo.GoInt, _cap:stdgo.GoInt):{ var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo._internal.reflect.Reflect_Value.Value; } {
            var _ch = ({} : stdgo._internal.reflect.Reflect_Value.Value), _val = ({} : stdgo._internal.reflect.Reflect_Value.Value);
            _nch++;
            if (((_nch % (101 : stdgo.GoInt) : stdgo.GoInt) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                var _c = (new stdgo.Chan<stdgo.GoInt>((_cap : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                _ch = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_c))?.__copy__();
                _val = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_n))?.__copy__();
            } else {
                var _c = (new stdgo.Chan<stdgo.GoString>((_cap : stdgo.GoInt).toBasic(), () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
                _ch = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_c))?.__copy__();
                _val = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))))?.__copy__();
            };
            return { _0 : _ch, _1 : _val };
        } : (stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo._internal.reflect.Reflect_Value.Value; var _1 : stdgo._internal.reflect.Reflect_Value.Value; });
        {
            var _n = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_x.next(), _n++, {
                if ((stdgo._internal.testing.Testing_short.short() && (_n >= (1000 : stdgo.GoInt) : Bool) : Bool)) {
                    break;
                };
                if (((_n >= (100000 : stdgo.GoInt) : Bool) && !_internal.reflect_test.Reflect_test__allselect._allselect.value : Bool)) {
                    break;
                };
                if ((((_n % (100000 : stdgo.GoInt) : stdgo.GoInt) == (0 : stdgo.GoInt)) && stdgo._internal.testing.Testing_verbose.verbose() : Bool)) {
                    stdgo.Go.println(("TestSelect" : stdgo.GoString), _n);
                };
                var _cases:stdgo.Slice<stdgo._internal.reflect.Reflect_SelectCase.SelectCase> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_SelectCase.SelectCase>);
                var _info:stdgo.Slice<_internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo> = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo>);
                if (_x.maybe()) {
                    var __tmp__ = _newop((_cases.length), (1 : stdgo.GoInt)), _ch:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _val:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._1;
                    _cases = (_cases.__append__(({ dir : (1 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), chan : _ch?.__copy__(), send : _val?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                    _info = (_info.__append__(({ _desc : ("ready send" : stdgo.GoString), _canSelect : true } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                };
                if (_x.maybe()) {
                    var __tmp__ = _newop((_cases.length), (1 : stdgo.GoInt)), _ch:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _val:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._1;
                    _ch.send(_val?.__copy__());
                    _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), chan : _ch?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                    _info = (_info.__append__(({ _desc : ("ready recv" : stdgo.GoString), _canSelect : true, _recv : _val?.__copy__() } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                };
                if (_x.maybe()) {
                    var __tmp__ = _newop((_cases.length), (0 : stdgo.GoInt)), _ch:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _val:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._1;
                    _cases = (_cases.__append__(({ dir : (1 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), chan : _ch?.__copy__(), send : _val?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                    if (_x.maybe()) {
                        var _f = (function():Void {
                            _ch.recv();
                        } : () -> Void);
                        _info = (_info.__append__(({ _desc : ("blocking send" : stdgo.GoString), _helper : _f } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                    } else {
                        _info = (_info.__append__(({ _desc : ("blocking send" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                    };
                };
                if (_x.maybe()) {
                    var __tmp__ = _newop((_cases.length), (0 : stdgo.GoInt)), _ch:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _val:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._1;
                    _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), chan : _ch?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                    if (_x.maybe()) {
                        var _f = (function():Void {
                            _ch.send(_val?.__copy__());
                        } : () -> Void);
                        _info = (_info.__append__(({ _desc : ("blocking recv" : stdgo.GoString), _recv : _val?.__copy__(), _helper : _f } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                    } else {
                        _info = (_info.__append__(({ _desc : ("blocking recv" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                    };
                };
                if (_x.maybe()) {
                    var _val:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
                    if (_x.maybe()) {
                        _val = stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((100 : stdgo.GoInt)))?.__copy__();
                    };
                    _cases = (_cases.__append__(({ dir : (1 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), send : _val?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                    _info = (_info.__append__(({ _desc : ("zero Chan send" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                };
                if (_x.maybe()) {
                    _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir) } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                    _info = (_info.__append__(({ _desc : ("zero Chan recv" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                };
                if (_x.maybe()) {
                    _cases = (_cases.__append__(({ dir : (1 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((null : stdgo.Chan<stdgo.GoInt>)))?.__copy__(), send : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((101 : stdgo.GoInt)))?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                    _info = (_info.__append__(({ _desc : ("nil Chan send" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                };
                if (_x.maybe()) {
                    _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((null : stdgo.Chan<stdgo.GoInt>)))?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                    _info = (_info.__append__(({ _desc : ("nil Chan recv" : stdgo.GoString) } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                };
                if (_x.maybe()) {
                    var _ch = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                    if (_ch != null) _ch.__close__();
                    _cases = (_cases.__append__(({ dir : (1 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_ch))?.__copy__(), send : stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface((101 : stdgo.GoInt)))?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                    _info = (_info.__append__(({ _desc : ("closed Chan send" : stdgo.GoString), _canSelect : true, _panic : true } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                };
                if (_x.maybe()) {
                    var __tmp__ = _newop((_cases.length), (0 : stdgo.GoInt)), _ch:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._0, _val:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._1;
                    _ch.close();
                    _val = stdgo._internal.reflect.Reflect_zero.zero(_val.type())?.__copy__();
                    _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir), chan : _ch?.__copy__() } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                    _info = (_info.__append__(({ _desc : ("closed Chan recv" : stdgo.GoString), _canSelect : true, _closed : true, _recv : _val?.__copy__() } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                };
                var _helper:() -> Void = null;
                var _numCanSelect = (0 : stdgo.GoInt);
                var _canProceed = (false : Bool);
                var _canBlock = (true : Bool);
                var _canPanic = (false : Bool);
                var _helpers = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                for (_i => _c in _info) {
                    if (_c._canSelect) {
                        _canProceed = true;
                        _canBlock = false;
                        _numCanSelect++;
                        if (_c._panic) {
                            _canPanic = true;
                        };
                    } else if (_c._helper != null) {
                        _canProceed = true;
                        _helpers = (_helpers.__append__(_i));
                    };
                };
                if ((!_canProceed || _x.maybe() : Bool)) {
                    _cases = (_cases.__append__(({ dir : (3 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir) } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)));
                    _info = (_info.__append__(({ _desc : ("default" : stdgo.GoString), _canSelect : _canBlock } : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo)));
                    _numCanSelect++;
                } else if (_canBlock) {
                    var _cas = (stdgo.Go.setRef(_info[(_helpers[(_x.choose((_helpers.length)) : stdgo.GoInt)] : stdgo.GoInt)]) : stdgo.Ref<_internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo>);
                    _helper = _cas._helper;
                    _cas._canSelect = true;
                    _numCanSelect++;
                };
                {
                    var _loop = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_loop < (2 : stdgo.GoInt) : Bool), _loop++, {
                        var _i = (_x.choose((_cases.length)) : stdgo.GoInt);
                        var _j = (_x.choose((_cases.length)) : stdgo.GoInt);
                        {
                            final __tmp__0 = _cases[(_j : stdgo.GoInt)];
                            final __tmp__1 = _cases[(_i : stdgo.GoInt)];
                            final __tmp__2 = _cases;
                            final __tmp__3 = (_i : stdgo.GoInt);
                            final __tmp__4 = _cases;
                            final __tmp__5 = (_j : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        {
                            final __tmp__0 = _info[(_j : stdgo.GoInt)];
                            final __tmp__1 = _info[(_i : stdgo.GoInt)];
                            final __tmp__2 = _info;
                            final __tmp__3 = (_i : stdgo.GoInt);
                            final __tmp__4 = _info;
                            final __tmp__5 = (_j : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                    });
                };
                if (_helper != null) {
                    var _pause = (10000i64 : stdgo._internal.time.Time_Duration.Duration);
                    if (stdgo._internal.testing.Testing_short.short()) {
                        _pause = (100000i64 : stdgo._internal.time.Time_Duration.Duration);
                    };
                    stdgo._internal.time.Time_afterFunc.afterFunc(_pause, _helper);
                };
                var __tmp__ = _internal.reflect_test.Reflect_test__runSelect._runSelect(_cases, _info), _i:stdgo.GoInt = __tmp__._0, _recv:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._1, _recvOK:Bool = __tmp__._2, _panicErr:stdgo.AnyInterface = __tmp__._3;
                if (((_panicErr != null) && !_canPanic : Bool)) {
                    _t.fatalf(("%s\npanicked unexpectedly: %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fmtSelect._fmtSelect(_info)), _panicErr);
                };
                if (((_panicErr == null && _canPanic : Bool) && (_numCanSelect == (1 : stdgo.GoInt)) : Bool)) {
                    _t.fatalf(("%s\nselected #%d incorrectly (should panic)" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fmtSelect._fmtSelect(_info)), stdgo.Go.toInterface(_i));
                };
                if (_panicErr != null) {
                    continue;
                };
                var _cas = (_info[(_i : stdgo.GoInt)] : _internal.reflect_test.Reflect_test_T_caseInfo.T_caseInfo);
                if (!_cas._canSelect) {
                    var _recvStr = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
                    if (_recv.isValid()) {
                        _recvStr = stdgo._internal.fmt.Fmt_sprintf.sprintf((", received %v, %v" : stdgo.GoString), _recv.interface_(), stdgo.Go.toInterface(_recvOK))?.__copy__();
                    };
                    _t.fatalf(("%s\nselected #%d incorrectly%s" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fmtSelect._fmtSelect(_info)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_recvStr));
                };
                if (_cas._panic) {
                    _t.fatalf(("%s\nselected #%d incorrectly (case should panic)" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fmtSelect._fmtSelect(_info)), stdgo.Go.toInterface(_i));
                };
                if (_cases[(_i : stdgo.GoInt)].dir == ((2 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir))) {
                    if (!_recv.isValid()) {
                        _t.fatalf(("%s\nselected #%d but got %v, %v, want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fmtSelect._fmtSelect(_info)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_recv)), stdgo.Go.toInterface(_recvOK), _cas._recv.interface_(), stdgo.Go.toInterface(!_cas._closed));
                    };
                    if (!_cas._recv.isValid()) {
                        _t.fatalf(("%s\nselected #%d but internal error: missing recv value" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fmtSelect._fmtSelect(_info)), stdgo.Go.toInterface(_i));
                    };
                    if (((_recv.interface_() != _cas._recv.interface_()) || (_recvOK != !_cas._closed) : Bool)) {
                        if (((_recv.interface_() == _cas._recv.interface_()) && (_recvOK == !_cas._closed) : Bool)) {
                            _t.fatalf(("%s\nselected #%d, got %#v, %v, and DeepEqual is broken on %T" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fmtSelect._fmtSelect(_info)), stdgo.Go.toInterface(_i), _recv.interface_(), stdgo.Go.toInterface(_recvOK), _recv.interface_());
                        };
                        _t.fatalf(("%s\nselected #%d but got %#v, %v, want %#v, %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fmtSelect._fmtSelect(_info)), stdgo.Go.toInterface(_i), _recv.interface_(), stdgo.Go.toInterface(_recvOK), _cas._recv.interface_(), stdgo.Go.toInterface(!_cas._closed));
                    };
                } else {
                    if ((_recv.isValid() || _recvOK : Bool)) {
                        _t.fatalf(("%s\nselected #%d but got %v, %v, want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.reflect_test.Reflect_test__fmtSelect._fmtSelect(_info)), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_recv)), stdgo.Go.toInterface(_recvOK), stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.reflect.Reflect_Value.Value() : stdgo._internal.reflect.Reflect_Value.Value))), stdgo.Go.toInterface(false));
                    };
                };
            });
        };
    }
