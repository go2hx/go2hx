package stdgo._internal.encoding.json;
function testDecodeInStream(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_ci => _tcase in stdgo._internal.encoding.json.Json__tokenStreamCases._tokenStreamCases) {
            var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_tcase._json?.__copy__())));
            for (_i => _etk in _tcase._expTokens) {
                var _tk:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                var _tk__pointer__ = (stdgo.Go.setRef(_tk) : stdgo.Ref<stdgo.AnyInterface>);
                var _tk__pointer__ = (stdgo.Go.setRef(_tk) : stdgo.Ref<stdgo.AnyInterface>);
                var _tk__pointer__ = (stdgo.Go.setRef(_tk) : stdgo.Ref<stdgo.AnyInterface>);
                var _tk__pointer__ = (stdgo.Go.setRef(_tk) : stdgo.Ref<stdgo.AnyInterface>);
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_etk : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis)) : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.encoding.json.Json_T_decodeThis.T_decodeThis), _1 : false };
                    }, _dt = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _etk = _dt._v;
                        _err = _dec.decode(stdgo.Go.toInterface(_tk__pointer__));
                    } else {
                        {
                            var __tmp__ = _dec.token();
                            _tk = stdgo.Go.toInterface(__tmp__._0);
                            _err = __tmp__._1;
                        };
                    };
                };
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_etk : stdgo.Error)) : stdgo.Error), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Error), _1 : false };
                    }, _experr = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        if (((_err == null) || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_experr)) : Bool)) {
                            _t.errorf(("case %v: Expected error %#v in %q, but was %#v" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_experr), stdgo.Go.toInterface(_tcase._json), stdgo.Go.toInterface(_err));
                        };
                        break;
                    } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _t.errorf(("case %v: Unexpected EOF in %q" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_tcase._json));
                        break;
                    } else if (_err != null) {
                        _t.errorf(("case %v: Unexpected error \'%#v\' in %q" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tcase._json));
                        break;
                    };
                };
                if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_tk, _etk)) {
                    _t.errorf(("case %v: %q @ %v expected %T(%v) was %T(%v)" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_tcase._json), stdgo.Go.toInterface(_i), _etk, _etk, _tk, _tk);
                    break;
                };
            };
        };
    }
