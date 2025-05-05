package stdgo._internal.html.template;
function _filterSrcsetElement(_s:stdgo.GoString, _left:stdgo.GoInt, _right:stdgo.GoInt, _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Void {
        var _start = (_left : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L187"
        while (((_start < _right : Bool) && stdgo._internal.html.template.Template__ishtmlspace._isHTMLSpace(_s[(_start : stdgo.GoInt)]) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L188"
            _start++;
        };
        var _end = (_right : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L191"
        {
            var _i = (_start : stdgo.GoInt);
            while ((_i < _right : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L192"
                if (stdgo._internal.html.template.Template__ishtmlspace._isHTMLSpace(_s[(_i : stdgo.GoInt)])) {
                    _end = _i;
                    //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L194"
                    break;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L197"
        {
            var _url = ((_s.__slice__(_start, _end) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (stdgo._internal.html.template.Template__issafeurl._isSafeURL(_url?.__copy__())) {
                var _metadataOk = (true : Bool);
                //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L201"
                {
                    var _i = (_end : stdgo.GoInt);
                    while ((_i < _right : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L202"
                        if (!stdgo._internal.html.template.Template__ishtmlspaceorasciialnum._isHTMLSpaceOrASCIIAlnum(_s[(_i : stdgo.GoInt)])) {
                            _metadataOk = false;
                            //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L204"
                            break;
                        };
                        _i++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L207"
                if (_metadataOk) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L208"
                    _b.writeString((_s.__slice__(_left, _start) : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L209"
                    stdgo._internal.html.template.Template__processurlonto._processURLOnto(_url?.__copy__(), true, _b);
                    //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L210"
                    _b.writeString((_s.__slice__(_end, _right) : stdgo.GoString)?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L211"
                    return;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L214"
        _b.writeString(("#" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L215"
        _b.writeString(("ZgotmplZ" : stdgo.GoString));
    }
