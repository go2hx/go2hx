package stdgo._internal.internal.pkgbits;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.go.constant.Constant;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.strconv.Strconv;
function newPkgEncoder(_syncFrames:stdgo.GoInt):stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder {
        return ({ _stringsIdx : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>();
            x.__defaultValue__ = () -> ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_Index.Index);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.internal.pkgbits.Pkgbits_Index.Index>), _syncFrames : _syncFrames } : stdgo._internal.internal.pkgbits.Pkgbits_PkgEncoder.PkgEncoder);
    }
