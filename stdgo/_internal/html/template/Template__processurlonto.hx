package stdgo._internal.html.template;
function _processURLOnto(_s:stdgo.GoString, _norm:Bool, _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L88"
        _b.grow(((_s.length) + (16 : stdgo.GoInt) : stdgo.GoInt));
        var _written = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L96"
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_s.length : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L98"
                {
                    final __value__ = _c;
                    if (__value__ == ((33 : stdgo.GoUInt8)) || __value__ == ((35 : stdgo.GoUInt8)) || __value__ == ((36 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((44 : stdgo.GoUInt8)) || __value__ == ((47 : stdgo.GoUInt8)) || __value__ == ((58 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((61 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((64 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L106"
                        if (_norm) {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L107"
                            {
                                _i++;
                                continue;
                            };
                        };
                    } else if (__value__ == ((45 : stdgo.GoUInt8)) || __value__ == ((46 : stdgo.GoUInt8)) || __value__ == ((95 : stdgo.GoUInt8)) || __value__ == ((126 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L115"
                        {
                            _i++;
                            continue;
                        };
                    } else if (__value__ == ((37 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L118"
                        if ((((_norm && ((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) : Bool) && stdgo._internal.html.template.Template__ishex._isHex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.html.template.Template__ishex._isHex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L119"
                            {
                                _i++;
                                continue;
                            };
                        };
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L123"
                        if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L124"
                            {
                                _i++;
                                continue;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L126"
                        if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L127"
                            {
                                _i++;
                                continue;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L129"
                        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L130"
                            {
                                _i++;
                                continue;
                            };
                        };
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L133"
                _b.writeString((_s.__slice__(_written, _i) : stdgo.GoString).__copy__());
//"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L134"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%%%02x" : stdgo.GoString), stdgo.Go.toInterface(_c));
_written = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L137"
        _b.writeString((_s.__slice__(_written) : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/html/template/url.go#L138"
        return _written != ((0 : stdgo.GoInt));
    }
