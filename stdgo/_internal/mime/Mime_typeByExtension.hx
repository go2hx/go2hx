package stdgo._internal.mime;
function typeByExtension(_ext:stdgo.GoString):stdgo.GoString {
        stdgo._internal.mime.Mime__once._once.do_(stdgo._internal.mime.Mime__initMime._initMime);
        {
            var __tmp__ = stdgo._internal.mime.Mime__mimeTypes._mimeTypes.load(stdgo.Go.toInterface(_ext)), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return (stdgo.Go.typeAssert((_v : stdgo.GoString)) : stdgo.GoString)?.__copy__();
            };
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10, ...[for (i in 0 ... 10) (0 : stdgo.GoUInt8)]);
        var _lower = (_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_ext.length) : Bool), _i++, {
                var _c = (_ext[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    var __tmp__ = stdgo._internal.mime.Mime__mimeTypesLower._mimeTypesLower.load(stdgo.Go.toInterface(stdgo._internal.strings.Strings_toLower.toLower(_ext?.__copy__()))), _si:stdgo.AnyInterface = __tmp__._0, __8:Bool = __tmp__._1;
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_si : stdgo.GoString)) : stdgo.GoString), _1 : true };
                    } catch(_) {
                        { _0 : ("" : stdgo.GoString), _1 : false };
                    }, _s = __tmp__._0, __9 = __tmp__._1;
                    return _s?.__copy__();
                };
                if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _lower = (_lower.__append__((_c + (32 : stdgo.GoUInt8) : stdgo.GoUInt8)));
                } else {
                    _lower = (_lower.__append__(_c));
                };
            });
        };
        var __tmp__ = stdgo._internal.mime.Mime__mimeTypesLower._mimeTypesLower.load(stdgo.Go.toInterface((_lower : stdgo.GoString))), _si:stdgo.AnyInterface = __tmp__._0, __8:Bool = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_si : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _s = __tmp__._0, __9 = __tmp__._1;
        return _s?.__copy__();
    }