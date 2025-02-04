package stdgo._internal.html.template;
function _isJSType(_mimeType:stdgo.GoString):Bool {
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_mimeType?.__copy__(), (";" : stdgo.GoString));
            _mimeType = @:tmpset0 __tmp__._0?.__copy__();
        };
        _mimeType = stdgo._internal.strings.Strings_tolower.toLower(_mimeType?.__copy__())?.__copy__();
        _mimeType = stdgo._internal.strings.Strings_trimspace.trimSpace(_mimeType?.__copy__())?.__copy__();
        {
            final __value__ = _mimeType;
            if (__value__ == (("application/ecmascript" : stdgo.GoString)) || __value__ == (("application/javascript" : stdgo.GoString)) || __value__ == (("application/json" : stdgo.GoString)) || __value__ == (("application/ld+json" : stdgo.GoString)) || __value__ == (("application/x-ecmascript" : stdgo.GoString)) || __value__ == (("application/x-javascript" : stdgo.GoString)) || __value__ == (("module" : stdgo.GoString)) || __value__ == (("text/ecmascript" : stdgo.GoString)) || __value__ == (("text/javascript" : stdgo.GoString)) || __value__ == (("text/javascript1.0" : stdgo.GoString)) || __value__ == (("text/javascript1.1" : stdgo.GoString)) || __value__ == (("text/javascript1.2" : stdgo.GoString)) || __value__ == (("text/javascript1.3" : stdgo.GoString)) || __value__ == (("text/javascript1.4" : stdgo.GoString)) || __value__ == (("text/javascript1.5" : stdgo.GoString)) || __value__ == (("text/jscript" : stdgo.GoString)) || __value__ == (("text/livescript" : stdgo.GoString)) || __value__ == (("text/x-ecmascript" : stdgo.GoString)) || __value__ == (("text/x-javascript" : stdgo.GoString))) {
                return true;
            } else {
                return false;
            };
        };
    }
