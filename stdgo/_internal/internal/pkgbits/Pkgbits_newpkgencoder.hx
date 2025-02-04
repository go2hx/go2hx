package stdgo._internal.internal.pkgbits;
function newPkgEncoder(_syncFrames:stdgo.GoInt):stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder {
        return ({ _stringsIdx : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.internal.pkgbits.Pkgbits_index.Index>();
            x.__defaultValue__ = () -> ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_index.Index>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_index.Index>), _syncFrames : _syncFrames } : stdgo._internal.internal.pkgbits.Pkgbits_pkgencoder.PkgEncoder);
    }
