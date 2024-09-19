package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:local @:using(stdgo._internal.crypto.x509.X509_T__struct_0_static_extension.T__struct_0_static_extension) typedef T__struct_0 = {
    @:embedded
    public var once : stdgo._internal.sync.Sync_Once.Once;
    public var _v : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>;
};
