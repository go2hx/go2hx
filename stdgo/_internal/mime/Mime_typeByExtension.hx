package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function typeByExtension(_ext:stdgo.GoString):stdgo.GoString {
        @:check2 stdgo._internal.mime.Mime__once._once.do_(stdgo._internal.mime.Mime__initMime._initMime);
        {
            var __tmp__ = @:check2 stdgo._internal.mime.Mime__mimeTypes._mimeTypes.load(stdgo.Go.toInterface(_ext)), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return (stdgo.Go.typeAssert((_v : stdgo.GoString)) : stdgo.GoString)?.__copy__();
            };
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10).__setNumber32__();
        var _lower = (_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        {};
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_ext.length) : Bool)) {
                var _c = (_ext[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    var __tmp__ = @:check2 stdgo._internal.mime.Mime__mimeTypesLower._mimeTypesLower.load(stdgo.Go.toInterface(stdgo._internal.strings.Strings_toLower.toLower(_ext.__copy__()))), _si:stdgo.AnyInterface = __tmp__._0, __8:Bool = __tmp__._1;
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_si : stdgo.GoString)) : stdgo.GoString), _1 : true };
                    } catch(_) {
                        { _0 : ("" : stdgo.GoString), _1 : false };
                    }, _s = __tmp__._0, __9 = __tmp__._1;
                    return _s.__copy__();
                };
if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _lower = (_lower.__append__((_c + (32 : stdgo.GoUInt8) : stdgo.GoUInt8)));
                } else {
                    _lower = (_lower.__append__(_c));
                };
                _i++;
            };
        };
        var __tmp__ = @:check2 stdgo._internal.mime.Mime__mimeTypesLower._mimeTypesLower.load(stdgo.Go.toInterface((_lower : stdgo.GoString))), _si:stdgo.AnyInterface = __tmp__._0, __8:Bool = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_si : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _s = __tmp__._0, __9 = __tmp__._1;
        return _s?.__copy__();
    }
