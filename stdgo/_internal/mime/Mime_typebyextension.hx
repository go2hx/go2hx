package stdgo._internal.mime;
function typeByExtension(_ext:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L112"
        stdgo._internal.mime.Mime__once._once.do_(stdgo._internal.mime.Mime__initmime._initMime);
        //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L115"
        {
            var __tmp__ = stdgo._internal.mime.Mime__mimetypes._mimeTypes.load(stdgo.Go.toInterface(_ext)), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L116"
                return (stdgo.Go.typeAssert((_v : stdgo.GoString)) : stdgo.GoString)?.__copy__();
            };
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10).__setNumber32__();
        var _lower = (_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        {};
        //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L125"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_ext.length) : Bool)) {
                var _c = (_ext[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/mime/type.go#L127"
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    var __tmp__ = stdgo._internal.mime.Mime__mimetypeslower._mimeTypesLower.load(stdgo.Go.toInterface(stdgo._internal.strings.Strings_tolower.toLower(_ext.__copy__()))), _si:stdgo.AnyInterface = __tmp__._0, __8:Bool = __tmp__._1;
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_si : stdgo.GoString)) : stdgo.GoString), _1 : true };
                    } catch(_) {
                        { _0 : ("" : stdgo.GoString), _1 : false };
                    }, _s = __tmp__._0, __9 = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L131"
                    return _s.__copy__();
                };
//"file:///home/runner/.go/go1.21.3/src/mime/type.go#L133"
                if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _lower = (_lower.__append__((_c + (32 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    _lower = (_lower.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                };
                _i++;
            };
        };
        var __tmp__ = stdgo._internal.mime.Mime__mimetypeslower._mimeTypesLower.load(stdgo.Go.toInterface((_lower : stdgo.GoString))), _si:stdgo.AnyInterface = __tmp__._0, __8:Bool = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_si : stdgo.GoString)) : stdgo.GoString), _1 : true };
        } catch(_) {
            { _0 : ("" : stdgo.GoString), _1 : false };
        }, _s = __tmp__._0, __9 = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L141"
        return _s?.__copy__();
    }
