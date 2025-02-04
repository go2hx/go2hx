package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_quicevent_static_extension.QUICEvent_static_extension) class QUICEvent {
    public var kind : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind);
    public var level : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel);
    public var data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var suite : stdgo.GoUInt16 = 0;
    public function new(?kind:stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind, ?level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, ?data:stdgo.Slice<stdgo.GoUInt8>, ?suite:stdgo.GoUInt16) {
        if (kind != null) this.kind = kind;
        if (level != null) this.level = level;
        if (data != null) this.data = data;
        if (suite != null) this.suite = suite;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new QUICEvent(kind, level, data, suite);
    }
}
