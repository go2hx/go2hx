package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_ipstackcapabilities_static_extension.T_ipStackCapabilities_static_extension) class T_ipStackCapabilities {
    @:embedded
    public var once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public function new(?once:stdgo._internal.sync.Sync_once.Once) {
        if (once != null) this.once = once;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var do_(get, never) : (() -> Void) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_do_():(() -> Void) -> Void return @:check32 this.once.do_;
    public var _doSlow(get, never) : (() -> Void) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__doSlow():(() -> Void) -> Void return @:check32 this.once._doSlow;
    public function __copy__() {
        return new T_ipStackCapabilities(once);
    }
}
