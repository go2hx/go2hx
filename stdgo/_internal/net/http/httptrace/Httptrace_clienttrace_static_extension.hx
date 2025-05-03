package stdgo._internal.net.http.httptrace;
@:keep @:allow(stdgo._internal.net.http.httptrace.Httptrace.ClientTrace_asInterface) class ClientTrace_static_extension {
    @:keep
    @:tdfield
    static public function _hasNetHooks( _t:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace> = _t;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L230"
        if (({
            final value = _t;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L231"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L233"
        return ((((@:checkr _t ?? throw "null pointer dereference").dNSStart != null || (@:checkr _t ?? throw "null pointer dereference").dNSDone != null : Bool) || (@:checkr _t ?? throw "null pointer dereference").connectStart != null : Bool) || ((@:checkr _t ?? throw "null pointer dereference").connectDone != null) : Bool);
    }
    @:keep
    @:tdfield
    static public function _compose( _t:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>, _old:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace> = _t;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L176"
        if (({
            final value = _old;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L177"
            return;
        };
        var _tv = (stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_t))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _ov = (stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_old))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _structType = (_tv.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L182"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _structType.numField() : Bool)) {
                var _tf = (_tv.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
var _hookType = (_tf.type() : stdgo._internal.reflect.Reflect_type_.Type_);
//"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L185"
                if (_hookType.kind() != ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L186"
                    {
                        _i++;
                        continue;
                    };
                };
var _of = (_ov.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L189"
                if (_of.isNil()) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L190"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L192"
                if (_tf.isNil()) {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L193"
                    _tf.set(_of.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L194"
                    {
                        _i++;
                        continue;
                    };
                };
var _tfCopy = (stdgo._internal.reflect.Reflect_valueof.valueOf(_tf.interface_()).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
var _newFunc = (stdgo._internal.reflect.Reflect_makefunc.makeFunc(_hookType, function(_args:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> {
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L203"
                    _tfCopy.call(_args);
                    //"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L204"
                    return _of.call(_args);
                }).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///home/runner/.go/go1.21.3/src/net/http/httptrace/trace.go#L206"
                _tv.field(_i).set(_newFunc.__copy__());
                _i++;
            };
        };
    }
}
