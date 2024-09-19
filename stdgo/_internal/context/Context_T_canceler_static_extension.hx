package stdgo._internal.context;
@:keep class T_canceler_static_extension {
    static public function done(t:T_canceler):stdgo.Chan<{ }> return t.done();
    static public function _cancel(t:T_canceler, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void t._cancel(_removeFromParent, _err, _cause);
}
