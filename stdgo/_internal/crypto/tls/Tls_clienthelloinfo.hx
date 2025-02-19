package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_clienthelloinfo_static_extension.ClientHelloInfo_static_extension) class ClientHelloInfo {
    public var cipherSuites : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var serverName : stdgo.GoString = "";
    public var supportedCurves : stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID>);
    public var supportedPoints : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var signatureSchemes : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
    public var supportedProtos : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var supportedVersions : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public function new(?cipherSuites:stdgo.Slice<stdgo.GoUInt16>, ?serverName:stdgo.GoString, ?supportedCurves:stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID>, ?supportedPoints:stdgo.Slice<stdgo.GoUInt8>, ?signatureSchemes:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>, ?supportedProtos:stdgo.Slice<stdgo.GoString>, ?supportedVersions:stdgo.Slice<stdgo.GoUInt16>, ?conn:stdgo._internal.net.Net_conn.Conn) {
        if (cipherSuites != null) this.cipherSuites = cipherSuites;
        if (serverName != null) this.serverName = serverName;
        if (supportedCurves != null) this.supportedCurves = supportedCurves;
        if (supportedPoints != null) this.supportedPoints = supportedPoints;
        if (signatureSchemes != null) this.signatureSchemes = signatureSchemes;
        if (supportedProtos != null) this.supportedProtos = supportedProtos;
        if (supportedVersions != null) this.supportedVersions = supportedVersions;
        if (conn != null) this.conn = conn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ClientHelloInfo(cipherSuites, serverName, supportedCurves, supportedPoints, signatureSchemes, supportedProtos, supportedVersions, conn);
    }
}
