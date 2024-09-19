package stdgo._internal.os.signal;
@:keep @:allow(stdgo._internal.os.signal.Signal.T_signalCtx_asInterface) class T_signalCtx_static_extension {
    @:keep
    static public function string( _c:stdgo.Ref<stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx> = _c;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _name = (((stdgo.Go.typeAssert((stdgo.Go.toInterface(_c.context) : stdgo._internal.os.signal.Signal_T_stringer.T_stringer)) : stdgo._internal.os.signal.Signal_T_stringer.T_stringer).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _name = (_name.__slice__(0, ((_name.length) - ((".WithCancel" : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _buf = (_buf.__append__(...((("signal.NotifyContext(" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) : Array<stdgo.GoUInt8>)));
        if ((_c._signals.length) != ((0 : stdgo.GoInt))) {
            _buf = (_buf.__append__(...((", [" : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            for (_i => _s in _c._signals) {
                _buf = (_buf.__append__(...((_s.string() : stdgo.GoString) : Array<stdgo.GoUInt8>)));
                if (_i != (((_c._signals.length) - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _buf = (_buf.__append__((32 : stdgo.GoUInt8)));
                };
            };
            _buf = (_buf.__append__((93 : stdgo.GoUInt8)));
        };
        _buf = (_buf.__append__((41 : stdgo.GoUInt8)));
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _stop( _c:stdgo.Ref<stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx> = _c;
        _c._cancel();
        stdgo._internal.os.signal.Signal_stop.stop(_c._ch);
    }
    @:embedded
    public static function value( __self__:stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface return __self__.value(_key);
    @:embedded
    public static function err( __self__:stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx):stdgo.Error return __self__.err();
    @:embedded
    public static function done( __self__:stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx):stdgo.Chan<{ }> return __self__.done();
    @:embedded
    public static function deadline( __self__:stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : Bool; } return __self__.deadline();
}
