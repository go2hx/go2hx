package stdgo.time;
class Ticker_static_extension {
    static public function reset(_t:Ticker, _d:Duration):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Ticker.Ticker>);
        stdgo._internal.time.Time_Ticker_static_extension.Ticker_static_extension.reset(_t, _d);
    }
    static public function stop(_t:Ticker):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Ticker.Ticker>);
        stdgo._internal.time.Time_Ticker_static_extension.Ticker_static_extension.stop(_t);
    }
}
