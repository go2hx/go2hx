package stdgo._internal.mime;
function extensionsByType(_typ:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.mime.Mime_parsemediatype.parseMediaType(_typ?.__copy__()), _justType:stdgo.GoString = __tmp__._0, __0:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        @:check2 stdgo._internal.mime.Mime__once._once.do_(stdgo._internal.mime.Mime__initmime._initMime);
        var __tmp__ = @:check2 stdgo._internal.mime.Mime__extensions._extensions.load(stdgo.Go.toInterface(_justType)), _s:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var _ret = ((null : stdgo.Slice<stdgo.GoString>).__append__(...((stdgo.Go.typeAssert((_s : stdgo.Slice<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>) : Array<stdgo.GoString>)));
        stdgo._internal.sort.Sort_strings.strings(_ret);
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
