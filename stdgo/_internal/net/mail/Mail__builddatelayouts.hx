package stdgo._internal.net.mail;
function _buildDateLayouts():Void {
        var _dows = (new stdgo.GoArray<stdgo.GoString>(2, 2, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("Mon, " : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__();
        var _days = (new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("2" : stdgo.GoString), ("02" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__();
        var _years = (new stdgo.GoArray<stdgo.GoString>(2, 2, ...[("2006" : stdgo.GoString), ("06" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__();
        var _seconds = (new stdgo.GoArray<stdgo.GoString>(2, 2, ...[(":05" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__();
        var _zones = (new stdgo.GoArray<stdgo.GoString>(3, 3, ...[("-0700" : stdgo.GoString), ("MST" : stdgo.GoString), ("UT" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L133"
        for (__0 => _dow in _dows.__copy__()) {
            //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L134"
            for (__1 => _day in _days.__copy__()) {
                //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L135"
                for (__2 => _year in _years.__copy__()) {
                    //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L136"
                    for (__3 => _second in _seconds.__copy__()) {
                        //"file:///home/runner/.go/go1.21.3/src/net/mail/message.go#L137"
                        for (__4 => _zone in _zones.__copy__()) {
                            var _s = ((((((((_dow + _day?.__copy__() : stdgo.GoString) + (" Jan " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _year?.__copy__() : stdgo.GoString) + (" 15:04" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _second?.__copy__() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _zone?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            stdgo._internal.net.mail.Mail__datelayouts._dateLayouts = (stdgo._internal.net.mail.Mail__datelayouts._dateLayouts.__append__(_s?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        };
                    };
                };
            };
        };
    }
