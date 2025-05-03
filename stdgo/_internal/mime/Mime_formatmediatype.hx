package stdgo._internal.mime;
function formatMediaType(_t:stdgo.GoString, _param:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L22"
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_t?.__copy__(), ("/" : stdgo.GoString)), _major:stdgo.GoString = __tmp__._0, _sub:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L23"
                if (!stdgo._internal.mime.Mime__istoken._isToken(_t?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L24"
                    return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L26"
                _b.writeString(stdgo._internal.strings.Strings_tolower.toLower(_t?.__copy__())?.__copy__());
            } else {
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L28"
                if ((!stdgo._internal.mime.Mime__istoken._isToken(_major?.__copy__()) || !stdgo._internal.mime.Mime__istoken._isToken(_sub?.__copy__()) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L29"
                    return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L31"
                _b.writeString(stdgo._internal.strings.Strings_tolower.toLower(_major?.__copy__())?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L32"
                _b.writeByte((47 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L33"
                _b.writeString(stdgo._internal.strings.Strings_tolower.toLower(_sub?.__copy__())?.__copy__());
            };
        };
        var _attrs = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_param.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L37"
        for (_a => _ in _param) {
            _attrs = (_attrs.__append__(_a?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L40"
        stdgo._internal.sort.Sort_strings.strings(_attrs);
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L42"
        for (__0 => _attribute in _attrs) {
            var _value = ((_param[_attribute] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L44"
            _b.writeByte((59 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L45"
            _b.writeByte((32 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L46"
            if (!stdgo._internal.mime.Mime__istoken._isToken(_attribute?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L47"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L49"
            _b.writeString(stdgo._internal.strings.Strings_tolower.toLower(_attribute?.__copy__())?.__copy__());
            var _needEnc = (stdgo._internal.mime.Mime__needsencoding._needsEncoding(_value?.__copy__()) : Bool);
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L52"
            if (_needEnc) {
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L54"
                _b.writeByte((42 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L56"
            _b.writeByte((61 : stdgo.GoUInt8));
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L58"
            if (_needEnc) {
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L59"
                _b.writeString(("utf-8\'\'" : stdgo.GoString));
                var _offset = (0 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L62"
                {
                    var _index = (0 : stdgo.GoInt);
                    while ((_index < (_value.length) : Bool)) {
                        var _ch = (_value[(_index : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L66"
                        if (((((((_ch <= (32 : stdgo.GoUInt8) : Bool) || (_ch >= (127 : stdgo.GoUInt8) : Bool) : Bool) || _ch == ((42 : stdgo.GoUInt8)) : Bool) || _ch == ((39 : stdgo.GoUInt8)) : Bool) || _ch == ((37 : stdgo.GoUInt8)) : Bool) || stdgo._internal.mime.Mime__istspecial._isTSpecial((_ch : stdgo.GoInt32)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L70"
                            _b.writeString((_value.__slice__(_offset, _index) : stdgo.GoString).__copy__());
                            _offset = (_index + (1 : stdgo.GoInt) : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L73"
                            _b.writeByte((37 : stdgo.GoUInt8));
                            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L74"
                            _b.writeByte(("0123456789ABCDEF" : stdgo.GoString)[((_ch >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]);
                            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L75"
                            _b.writeByte(("0123456789ABCDEF" : stdgo.GoString)[((_ch & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]);
                        };
                        _index++;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L78"
                _b.writeString((_value.__slice__(_offset) : stdgo.GoString)?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L79"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L82"
            if (stdgo._internal.mime.Mime__istoken._isToken(_value?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L83"
                _b.writeString(_value?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L84"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L87"
            _b.writeByte((34 : stdgo.GoUInt8));
            var _offset = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L89"
            {
                var _index = (0 : stdgo.GoInt);
                while ((_index < (_value.length) : Bool)) {
                    var _character = (_value[(_index : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L91"
                    if (((_character == (34 : stdgo.GoUInt8)) || (_character == (92 : stdgo.GoUInt8)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L92"
                        _b.writeString((_value.__slice__(_offset, _index) : stdgo.GoString).__copy__());
                        _offset = _index;
                        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L94"
                        _b.writeByte((92 : stdgo.GoUInt8));
                    };
                    _index++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L97"
            _b.writeString((_value.__slice__(_offset) : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L98"
            _b.writeByte((34 : stdgo.GoUInt8));
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L100"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
