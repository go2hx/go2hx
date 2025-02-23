package stdgo._internal.crypto.tls;
function _supportedVersionsFromMax(_maxVersion:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt16> {
        var _versions = (new stdgo.Slice<stdgo.GoUInt16>((0 : stdgo.GoInt).toBasic(), (stdgo._internal.crypto.tls.Tls__supportedversions._supportedVersions.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        for (__65 => _v in stdgo._internal.crypto.tls.Tls__supportedversions._supportedVersions) {
            if ((_v > _maxVersion : Bool)) {
                continue;
            };
            _versions = (_versions.__append__(_v));
        };
        return _versions;
    }
