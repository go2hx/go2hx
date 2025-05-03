package stdgo._internal.encoding.json;
function _typeEncoder(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L345"
        {
            var __tmp__ = stdgo._internal.encoding.json.Json__encodercache._encoderCache.load(stdgo.Go.toInterface(_t)), _fi:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L346"
                return (stdgo.Go.typeAssert((_fi : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc)) : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
            };
        };
        var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup), _f:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc = (null : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L357"
        _wg.add((1 : stdgo.GoInt));
        var __tmp__ = stdgo._internal.encoding.json.Json__encodercache._encoderCache.loadOrStore(stdgo.Go.toInterface(_t), stdgo.Go.toInterface((function(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L359"
            _wg.wait_();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L360"
            _f(_e, _v?.__copy__(), _opts?.__copy__());
        } : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc))), _fi:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L362"
        if (_loaded) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L363"
            return (stdgo.Go.typeAssert((_fi : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc)) : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
        };
        _f = stdgo._internal.encoding.json.Json__newtypeencoder._newTypeEncoder(_t, true);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L368"
        _wg.done();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L369"
        stdgo._internal.encoding.json.Json__encodercache._encoderCache.store(stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_f));
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L370"
        return _f;
    }
