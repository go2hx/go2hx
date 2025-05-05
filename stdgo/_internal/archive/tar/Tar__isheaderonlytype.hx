package stdgo._internal.archive.tar;
function _isHeaderOnlyType(_flag:stdgo.GoUInt8):Bool {
        //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L723"
        {
            final __value__ = _flag;
            if (__value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L725"
                return true;
            } else {
                //"file:///home/runner/.go/go1.21.3/src/archive/tar/common.go#L727"
                return false;
            };
        };
    }
