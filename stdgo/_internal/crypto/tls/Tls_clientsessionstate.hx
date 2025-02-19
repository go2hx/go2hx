package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_clientsessionstate_static_extension.ClientSessionState_static_extension) class ClientSessionState {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ClientSessionState();
    }
}
