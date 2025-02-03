package stdgo.testing;
class InternalExample_static_extension {
    static public function _processRunResult(_eg:InternalExample, _stdout:String, _timeSpent:stdgo._internal.time.Time_Duration.Duration, _finished:Bool, _recovered:stdgo.AnyInterface):Bool {
        final _eg = (_eg : stdgo.Ref<stdgo._internal.testing.Testing_InternalExample.InternalExample>);
        final _stdout = (_stdout : stdgo.GoString);
        final _recovered = (_recovered : stdgo.AnyInterface);
        return stdgo._internal.testing.Testing_InternalExample_static_extension.InternalExample_static_extension._processRunResult(_eg, _stdout, _timeSpent, _finished, _recovered);
    }
}
