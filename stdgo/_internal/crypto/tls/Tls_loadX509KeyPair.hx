package stdgo._internal.crypto.tls;
function loadX509KeyPair(_certFile:stdgo.GoString, _keyFile:stdgo.GoString):{ var _0 : stdgo._internal.crypto.tls.Tls_Certificate.Certificate; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(_certFile?.__copy__()), _certPEMBlock:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new stdgo._internal.crypto.tls.Tls_Certificate.Certificate() : stdgo._internal.crypto.tls.Tls_Certificate.Certificate), _1 : _err };
        };
        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(_keyFile?.__copy__()), _keyPEMBlock:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new stdgo._internal.crypto.tls.Tls_Certificate.Certificate() : stdgo._internal.crypto.tls.Tls_Certificate.Certificate), _1 : _err };
        };
        return stdgo._internal.crypto.tls.Tls_x509keyPair.x509keyPair(_certPEMBlock, _keyPEMBlock);
    }
