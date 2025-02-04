package stdgo._internal.html.template;
function _isSafeURL(_s:stdgo.GoString):Bool {
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), (":" : stdgo.GoString)), _protocol:stdgo.GoString = __tmp__._0, __6:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if ((_ok && !stdgo._internal.strings.Strings_contains.contains(_protocol?.__copy__(), ("/" : stdgo.GoString)) : Bool)) {
                if (((!stdgo._internal.strings.Strings_equalfold.equalFold(_protocol?.__copy__(), ("http" : stdgo.GoString)) && !stdgo._internal.strings.Strings_equalfold.equalFold(_protocol?.__copy__(), ("https" : stdgo.GoString)) : Bool) && !stdgo._internal.strings.Strings_equalfold.equalFold(_protocol?.__copy__(), ("mailto" : stdgo.GoString)) : Bool)) {
                    return false;
                };
            };
        };
        return true;
    }
