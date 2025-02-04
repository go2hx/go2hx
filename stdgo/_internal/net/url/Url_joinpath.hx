package stdgo._internal.net.url;
function joinPath(_base:stdgo.GoString, _elem:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        var _result = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_base?.__copy__()), _url:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _result, _1 : _err };
        };
        _result = (@:check2r @:check2r _url.joinPath(...(_elem : Array<stdgo.GoString>)).string() : stdgo.GoString)?.__copy__();
        return { _0 : _result, _1 : _err };
    }
