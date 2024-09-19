package stdgo._internal.net.mail;
@:keep @:allow(stdgo._internal.net.mail.Mail.Address_asInterface) class Address_static_extension {
    @:keep
    static public function string( _a:stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.mail.Mail_Address.Address> = _a;
        var _at = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_a.address?.__copy__(), ("@" : stdgo.GoString)) : stdgo.GoInt);
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _domain = __1, _local = __0;
        if ((_at < (0 : stdgo.GoInt) : Bool)) {
            _local = _a.address?.__copy__();
        } else {
            {
                final __tmp__0 = (_a.address.__slice__(0, _at) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (_a.address.__slice__((_at + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _local = __tmp__0;
                _domain = __tmp__1;
            };
        };
        var _quoteLocal = (false : Bool);
        for (_i => _r in _local) {
            if (stdgo._internal.net.mail.Mail__isAtext._isAtext(_r, false, false)) {
                continue;
            };
            if (_r == ((46 : stdgo.GoInt32))) {
                if ((((_i > (0 : stdgo.GoInt) : Bool) && _local[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((46 : stdgo.GoUInt8)) : Bool) && (_i < ((_local.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                    continue;
                };
            };
            _quoteLocal = true;
            break;
        };
        if (_quoteLocal) {
            _local = stdgo._internal.net.mail.Mail__quoteString._quoteString(_local?.__copy__())?.__copy__();
        };
        var _s = (((((("<" : stdgo.GoString) + _local?.__copy__() : stdgo.GoString) + ("@" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _domain?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_a.name == (stdgo.Go.str())) {
            return _s?.__copy__();
        };
        var _allPrintable = (true : Bool);
        for (__0 => _r in _a.name) {
            if (((!stdgo._internal.net.mail.Mail__isVchar._isVchar(_r) && !stdgo._internal.net.mail.Mail__isWSP._isWSP(_r) : Bool) || stdgo._internal.net.mail.Mail__isMultibyte._isMultibyte(_r) : Bool)) {
                _allPrintable = false;
                break;
            };
        };
        if (_allPrintable) {
            return ((stdgo._internal.net.mail.Mail__quoteString._quoteString(_a.name?.__copy__()) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
        };
        if (stdgo._internal.strings.Strings_containsAny.containsAny(_a.name?.__copy__(), ("\"#$%&\'(),.:;<>@[]^`{|}~" : stdgo.GoString))) {
            return (((98 : stdgo._internal.mime.Mime_WordEncoder.WordEncoder).encode(("utf-8" : stdgo.GoString), _a.name?.__copy__()) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return (((113 : stdgo._internal.mime.Mime_WordEncoder.WordEncoder).encode(("utf-8" : stdgo.GoString), _a.name?.__copy__()) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
    }
}