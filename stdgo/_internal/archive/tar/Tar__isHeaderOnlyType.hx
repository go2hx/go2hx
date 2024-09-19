package stdgo._internal.archive.tar;
function _isHeaderOnlyType(_flag:stdgo.GoUInt8):Bool {
        {
            final __value__ = _flag;
            if (__value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8))) {
                return true;
            } else {
                return false;
            };
        };
    }
