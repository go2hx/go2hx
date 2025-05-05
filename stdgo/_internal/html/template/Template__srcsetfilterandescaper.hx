package stdgo._internal.html.template;
function _srcsetFilterAndEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L145"
        {
            final __value__ = _t;
            if (__value__ == ((7 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L147"
                return _s?.__copy__();
            } else if (__value__ == ((6 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
                var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
                //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L152"
                if (stdgo._internal.html.template.Template__processurlonto._processURLOnto(_s?.__copy__(), true, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>))) {
                    _s = (_b.string() : stdgo.GoString)?.__copy__();
                };
                //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L156"
                return stdgo._internal.strings.Strings_replaceall.replaceAll(_s?.__copy__(), ("," : stdgo.GoString), ("%2c" : stdgo.GoString))?.__copy__();
            };
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _written = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L161"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L162"
                if (_s[(_i : stdgo.GoInt)] == ((44 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L163"
                    stdgo._internal.html.template.Template__filtersrcsetelement._filterSrcsetElement(_s.__copy__(), _written, _i, (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
                    //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L164"
                    _b.writeString(("," : stdgo.GoString));
                    _written = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L168"
        stdgo._internal.html.template.Template__filtersrcsetelement._filterSrcsetElement(_s?.__copy__(), _written, (_s.length), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L169"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
