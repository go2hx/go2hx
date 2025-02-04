package stdgo._internal.html.template;
function _cssValueFilter(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, _t:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        if (_t == ((1 : stdgo._internal.html.template.Template_t_contenttype.T_contentType))) {
            return _s?.__copy__();
        };
        var __0 = stdgo._internal.html.template.Template__decodecss._decodeCSS((_s : stdgo.Slice<stdgo.GoUInt8>)), __1 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
var _id = __1, _b = __0;
        for (_i => _c in _b) {
            {
                final __value__ = _c;
                if (__value__ == ((0 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8)) || __value__ == ((39 : stdgo.GoUInt8)) || __value__ == ((40 : stdgo.GoUInt8)) || __value__ == ((41 : stdgo.GoUInt8)) || __value__ == ((47 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((64 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8)) || __value__ == ((96 : stdgo.GoUInt8)) || __value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8)) || __value__ == ((60 : stdgo.GoUInt8)) || __value__ == ((62 : stdgo.GoUInt8))) {
                    return ("ZgotmplZ" : stdgo.GoString);
                } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                    if (((_i != (0 : stdgo.GoInt)) && (_b[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                        return ("ZgotmplZ" : stdgo.GoString);
                    };
                } else {
                    if (((_c < (128 : stdgo.GoUInt8) : Bool) && stdgo._internal.html.template.Template__iscssnmchar._isCSSNmchar((_c : stdgo.GoInt32)) : Bool)) {
                        _id = (_id.__append__(_c));
                    };
                };
            };
        };
        _id = stdgo._internal.bytes.Bytes_tolower.toLower(_id);
        if ((stdgo._internal.bytes.Bytes_contains.contains(_id, stdgo._internal.html.template.Template__expressionbytes._expressionBytes) || stdgo._internal.bytes.Bytes_contains.contains(_id, stdgo._internal.html.template.Template__mozbindingbytes._mozBindingBytes) : Bool)) {
            return ("ZgotmplZ" : stdgo.GoString);
        };
        return (_b : stdgo.GoString)?.__copy__();
    }
