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
@:keep @:allow(stdgo._internal.internal.pkgbits.Pkgbits.CodeVal_asInterface) class CodeVal_static_extension {
    @:keep
    @:tdfield
    static public function value( _c:stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal):stdgo.GoInt {
        @:recv var _c:stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal = _c;
        return (_c : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function marker( _c:stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal):stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker {
        @:recv var _c:stdgo._internal.internal.pkgbits.Pkgbits_CodeVal.CodeVal = _c;
        return (7 : stdgo._internal.internal.pkgbits.Pkgbits_SyncMarker.SyncMarker);
    }
}
