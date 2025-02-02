package stdgo._internal.encoding.json;
function _typeEncoder(_t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc {
        {
            var __tmp__ = @:check2 stdgo._internal.encoding.json.Json__encoderCache._encoderCache.load(stdgo.Go.toInterface(_t)), _fi:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return (stdgo.Go.typeAssert((_fi : stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc)) : stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc);
            };
        };
        var __0:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup), __1:stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc = (null : stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc);
var _f = __1, _wg = __0;
        @:check2 _wg.add((1 : stdgo.GoInt));
        var __tmp__ = @:check2 stdgo._internal.encoding.json.Json__encoderCache._encoderCache.loadOrStore(stdgo.Go.toInterface(_t), stdgo.Go.toInterface((function(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
            @:check2 _wg.wait_();
            _f(_e, _v?.__copy__(), _opts?.__copy__());
        } : stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc))), _fi:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
        if (_loaded) {
            return (stdgo.Go.typeAssert((_fi : stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc)) : stdgo._internal.encoding.json.Json_T_encoderFunc.T_encoderFunc);
        };
        _f = stdgo._internal.encoding.json.Json__newTypeEncoder._newTypeEncoder(_t, true);
        @:check2 _wg.done();
        @:check2 stdgo._internal.encoding.json.Json__encoderCache._encoderCache.store(stdgo.Go.toInterface(_t), stdgo.Go.toInterface(_f));
        return _f;
    }
