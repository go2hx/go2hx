package stdgo._internal.net.http.httptrace;
@:keep @:allow(stdgo._internal.net.http.httptrace.Httptrace.ClientTrace_asInterface) class ClientTrace_static_extension {
    @:keep
    static public function _hasNetHooks( _t:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace> = _t;
        if (_t == null || (_t : Dynamic).__nil__) {
            return false;
        };
        return (((_t.dnsstart != null || _t.dnsdone != null : Bool) || _t.connectStart != null : Bool) || (_t.connectDone != null) : Bool);
    }
    @:keep
    static public function _compose( _t:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>, _old:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace> = _t;
        if (_old == null || (_old : Dynamic).__nil__) {
            return;
        };
        var _tv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_t))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _ov = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_old))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        var _structType = (_tv.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _structType.numField() : Bool), _i++, {
                var _tf = (_tv.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                var _hookType = (_tf.type() : stdgo._internal.reflect.Reflect_Type_.Type_);
                if (_hookType.kind() != ((19u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                    continue;
                };
                var _of = (_ov.field(_i)?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                if (_of.isNil()) {
                    continue;
                };
                if (_tf.isNil()) {
                    _tf.set(_of?.__copy__());
                    continue;
                };
                var _tfCopy = (stdgo._internal.reflect.Reflect_valueOf.valueOf(_tf.interface_())?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                var _newFunc = (stdgo._internal.reflect.Reflect_makeFunc.makeFunc(_hookType, function(_args:stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value> {
                    _tfCopy.call(_args);
                    return _of.call(_args);
                })?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
                _tv.field(_i).set(_newFunc?.__copy__());
            });
        };
    }
}