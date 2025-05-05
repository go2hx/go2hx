package stdgo._internal.net.mail;
@:keep @:allow(stdgo._internal.net.mail.Mail.Address_asInterface) class Address_static_extension {
    @:keep
    @:tdfield
    static public function string( _a:stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address>):stdgo.GoString {
        @:recv var _a:stdgo.Ref<stdgo._internal.net.mail.Mail_address.Address> = _a;
        var _at = (stdgo._internal.strings.Strings_lastindex.lastIndex((@:checkr _a ?? throw "null pointer dereference").address?.__copy__(), ("@" : stdgo.GoString)) : stdgo.GoInt);
        var _local:stdgo.GoString = ("" : stdgo.GoString), _domain:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L272"
        if ((_at < (0 : stdgo.GoInt) : Bool)) {
            _local = (@:checkr _a ?? throw "null pointer dereference").address?.__copy__();
        } else {
            {
                final __tmp__0 = ((@:checkr _a ?? throw "null pointer dereference").address.__slice__(0, _at) : stdgo.GoString)?.__copy__();
                final __tmp__1 = ((@:checkr _a ?? throw "null pointer dereference").address.__slice__((_at + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _local = @:binopAssign __tmp__0;
                _domain = @:binopAssign __tmp__1;
            };
        };
        var _quoteLocal = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L282"
        for (_i => _r in _local) {
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L283"
            if (stdgo._internal.net.mail.Mail__isatext._isAtext(_r, false, false)) {
                //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L284"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L286"
            if (_r == ((46 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L290"
                if ((((_i > (0 : stdgo.GoInt) : Bool) && _local[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((46 : stdgo.GoUInt8)) : Bool) && (_i < ((_local.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L291"
                    continue;
                };
            };
            _quoteLocal = true;
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L295"
            break;
        };
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L297"
        if (_quoteLocal) {
            _local = stdgo._internal.net.mail.Mail__quotestring._quoteString(_local?.__copy__())?.__copy__();
        };
        var _s = (((((("<" : stdgo.GoString) + _local?.__copy__() : stdgo.GoString) + ("@" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _domain?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L304"
        if ((@:checkr _a ?? throw "null pointer dereference").name == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L305"
            return _s?.__copy__();
        };
        var _allPrintable = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L310"
        for (__0 => _r in (@:checkr _a ?? throw "null pointer dereference").name) {
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L313"
            if (((!stdgo._internal.net.mail.Mail__isvchar._isVchar(_r) && !stdgo._internal.net.mail.Mail__iswsp._isWSP(_r) : Bool) || stdgo._internal.net.mail.Mail__ismultibyte._isMultibyte(_r) : Bool)) {
                _allPrintable = false;
                //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L315"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L318"
        if (_allPrintable) {
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L319"
            return ((stdgo._internal.net.mail.Mail__quotestring._quoteString((@:checkr _a ?? throw "null pointer dereference").name?.__copy__()) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L325"
        if (stdgo._internal.strings.Strings_containsany.containsAny((@:checkr _a ?? throw "null pointer dereference").name?.__copy__(), ("\"#$%&\'(),.:;<>@[]^`{|}~" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L326"
            return (((98 : stdgo._internal.mime.Mime_wordencoder.WordEncoder).encode(("utf-8" : stdgo.GoString), (@:checkr _a ?? throw "null pointer dereference").name?.__copy__()) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L328"
        return (((113 : stdgo._internal.mime.Mime_wordencoder.WordEncoder).encode(("utf-8" : stdgo.GoString), (@:checkr _a ?? throw "null pointer dereference").name?.__copy__()) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
