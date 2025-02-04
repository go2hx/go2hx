package stdgo._internal.mime;
function formatMediaType(_t:stdgo.GoString, _param:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_t?.__copy__(), ("/" : stdgo.GoString)), _major:stdgo.GoString = __tmp__._0, _sub:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                if (!stdgo._internal.mime.Mime__istoken._isToken(_t?.__copy__())) {
                    return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
                @:check2 _b.writeString(stdgo._internal.strings.Strings_tolower.toLower(_t?.__copy__())?.__copy__());
            } else {
                if ((!stdgo._internal.mime.Mime__istoken._isToken(_major?.__copy__()) || !stdgo._internal.mime.Mime__istoken._isToken(_sub?.__copy__()) : Bool)) {
                    return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
                @:check2 _b.writeString(stdgo._internal.strings.Strings_tolower.toLower(_major?.__copy__())?.__copy__());
                @:check2 _b.writeByte((47 : stdgo.GoUInt8));
                @:check2 _b.writeString(stdgo._internal.strings.Strings_tolower.toLower(_sub?.__copy__())?.__copy__());
            };
        };
        var _attrs = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_param.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_a => _ in _param) {
            _attrs = (_attrs.__append__(_a?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_attrs);
        for (__0 => _attribute in _attrs) {
            var _value = ((_param[_attribute] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            @:check2 _b.writeByte((59 : stdgo.GoUInt8));
            @:check2 _b.writeByte((32 : stdgo.GoUInt8));
            if (!stdgo._internal.mime.Mime__istoken._isToken(_attribute?.__copy__())) {
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            @:check2 _b.writeString(stdgo._internal.strings.Strings_tolower.toLower(_attribute?.__copy__())?.__copy__());
            var _needEnc = (stdgo._internal.mime.Mime__needsencoding._needsEncoding(_value?.__copy__()) : Bool);
            if (_needEnc) {
                @:check2 _b.writeByte((42 : stdgo.GoUInt8));
            };
            @:check2 _b.writeByte((61 : stdgo.GoUInt8));
            if (_needEnc) {
                @:check2 _b.writeString(("utf-8\'\'" : stdgo.GoString));
                var _offset = (0 : stdgo.GoInt);
                {
                    var _index = (0 : stdgo.GoInt);
                    while ((_index < (_value.length) : Bool)) {
                        var _ch = (_value[(_index : stdgo.GoInt)] : stdgo.GoUInt8);
if (((((((_ch <= (32 : stdgo.GoUInt8) : Bool) || (_ch >= (127 : stdgo.GoUInt8) : Bool) : Bool) || _ch == ((42 : stdgo.GoUInt8)) : Bool) || _ch == ((39 : stdgo.GoUInt8)) : Bool) || _ch == ((37 : stdgo.GoUInt8)) : Bool) || stdgo._internal.mime.Mime__istspecial._isTSpecial((_ch : stdgo.GoInt32)) : Bool)) {
                            @:check2 _b.writeString((_value.__slice__(_offset, _index) : stdgo.GoString).__copy__());
                            _offset = (_index + (1 : stdgo.GoInt) : stdgo.GoInt);
                            @:check2 _b.writeByte((37 : stdgo.GoUInt8));
                            @:check2 _b.writeByte(("0123456789ABCDEF" : stdgo.GoString)[((_ch >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]);
                            @:check2 _b.writeByte(("0123456789ABCDEF" : stdgo.GoString)[((_ch & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]);
                        };
                        _index++;
                    };
                };
                @:check2 _b.writeString((_value.__slice__(_offset) : stdgo.GoString)?.__copy__());
                continue;
            };
            if (stdgo._internal.mime.Mime__istoken._isToken(_value?.__copy__())) {
                @:check2 _b.writeString(_value?.__copy__());
                continue;
            };
            @:check2 _b.writeByte((34 : stdgo.GoUInt8));
            var _offset = (0 : stdgo.GoInt);
            {
                var _index = (0 : stdgo.GoInt);
                while ((_index < (_value.length) : Bool)) {
                    var _character = (_value[(_index : stdgo.GoInt)] : stdgo.GoUInt8);
if (((_character == (34 : stdgo.GoUInt8)) || (_character == (92 : stdgo.GoUInt8)) : Bool)) {
                        @:check2 _b.writeString((_value.__slice__(_offset, _index) : stdgo.GoString).__copy__());
                        _offset = _index;
                        @:check2 _b.writeByte((92 : stdgo.GoUInt8));
                    };
                    _index++;
                };
            };
            @:check2 _b.writeString((_value.__slice__(_offset) : stdgo.GoString)?.__copy__());
            @:check2 _b.writeByte((34 : stdgo.GoUInt8));
        };
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
