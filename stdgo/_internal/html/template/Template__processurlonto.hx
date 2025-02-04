package stdgo._internal.html.template;
function _processURLOnto(_s:stdgo.GoString, _norm:Bool, _b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>):Bool {
        @:check2r _b.grow(((_s.length) + (16 : stdgo.GoInt) : stdgo.GoInt));
        var _written = (0 : stdgo.GoInt);
        {
            var __0 = (0 : stdgo.GoInt), __1 = (_s.length : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
{
                    final __value__ = _c;
                    if (__value__ == ((33 : stdgo.GoUInt8)) || __value__ == ((35 : stdgo.GoUInt8)) || __value__ == ((36 : stdgo.GoUInt8)) || __value__ == ((38 : stdgo.GoUInt8)) || __value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((44 : stdgo.GoUInt8)) || __value__ == ((47 : stdgo.GoUInt8)) || __value__ == ((58 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8)) || __value__ == ((61 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8)) || __value__ == ((64 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8))) {
                        if (_norm) {
                            {
                                _i++;
                                continue;
                            };
                        };
                    } else if (__value__ == ((45 : stdgo.GoUInt8)) || __value__ == ((46 : stdgo.GoUInt8)) || __value__ == ((95 : stdgo.GoUInt8)) || __value__ == ((126 : stdgo.GoUInt8))) {
                        {
                            _i++;
                            continue;
                        };
                    } else if (__value__ == ((37 : stdgo.GoUInt8))) {
                        if ((((_norm && ((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) : Bool) && stdgo._internal.html.template.Template__ishex._isHex(_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.html.template.Template__ishex._isHex(_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                            {
                                _i++;
                                continue;
                            };
                        };
                    } else {
                        if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                            {
                                _i++;
                                continue;
                            };
                        };
                        if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                            {
                                _i++;
                                continue;
                            };
                        };
                        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                            {
                                _i++;
                                continue;
                            };
                        };
                    };
                };
@:check2r _b.writeString((_s.__slice__(_written, _i) : stdgo.GoString).__copy__());
stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%%%02x" : stdgo.GoString), stdgo.Go.toInterface(_c));
_written = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                _i++;
            };
        };
        @:check2r _b.writeString((_s.__slice__(_written) : stdgo.GoString)?.__copy__());
        return _written != ((0 : stdgo.GoInt));
    }
