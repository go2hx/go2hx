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
function _fmtFrames(_pcs:haxe.Rest<stdgo.GoUIntptr>):stdgo.Slice<stdgo.GoString> {
        var _pcs = new stdgo.Slice<stdgo.GoUIntptr>(_pcs.length, 0, ..._pcs);
        var _res = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_pcs.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.internal.pkgbits.Pkgbits__walkFrames._walkFrames(_pcs, function(_file:stdgo.GoString, _line:stdgo.GoInt, _name:stdgo.GoString, _offset:stdgo.GoUIntptr):Void {
            _name = stdgo._internal.strings.Strings_trimPrefix.trimPrefix(_name?.__copy__(), ("cmd/compile/internal/noder." : stdgo.GoString))?.__copy__();
            _res = (_res.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%v: %s +0x%v" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_offset))?.__copy__()));
        });
        return _res;
    }
