package stdgo._internal.encoding.json;
function testDecodeInStream(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L431"
        for (_ci => _tcase in stdgo._internal.encoding.json.Json__tokenstreamcases._tokenStreamCases) {
            var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_tcase._json?.__copy__())));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L434"
            for (_i => _etk in _tcase._expTokens) {
                var _tk:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                var _err:stdgo.Error = (null : stdgo.Error);
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L439"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_etk : stdgo._internal.encoding.json.Json_t_decodethis.T_decodeThis)) : stdgo._internal.encoding.json.Json_t_decodethis.T_decodeThis), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.encoding.json.Json_t_decodethis.T_decodeThis), _1 : false };
                    }, _dt = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _etk = _dt._v;
                        _err = _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_tk) : stdgo.Ref<stdgo.AnyInterface>)));
                    } else {
                        {
                            var __tmp__ = _dec.token();
                            _tk = stdgo.Go.toInterface(@:tmpset0 __tmp__._0);
                            _err = @:tmpset0 __tmp__._1;
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L445"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_etk : stdgo.Error)) : stdgo.Error), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Error), _1 : false };
                    }, _experr = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L446"
                        if (((_err == null) || !stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_experr)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L447"
                            _t.errorf(("case %v: Expected error %#v in %q, but was %#v" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_experr), stdgo.Go.toInterface(_tcase._json), stdgo.Go.toInterface(_err));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L449"
                        break;
                    } else if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L451"
                        _t.errorf(("case %v: Unexpected EOF in %q" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_tcase._json));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L452"
                        break;
                    } else if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L454"
                        _t.errorf(("case %v: Unexpected error \'%#v\' in %q" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tcase._json));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L455"
                        break;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L457"
                if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_tk, _etk)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L458"
                    _t.errorf(("case %v: %q @ %v expected %T(%v) was %T(%v)" : stdgo.GoString), stdgo.Go.toInterface(_ci), stdgo.Go.toInterface(_tcase._json), stdgo.Go.toInterface(_i), _etk, _etk, _tk, _tk);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L459"
                    break;
                };
            };
        };
    }
