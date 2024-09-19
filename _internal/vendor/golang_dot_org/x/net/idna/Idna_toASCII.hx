package _internal.vendor.golang_dot_org.x.net.idna;
function toASCII(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        return _internal.vendor.golang_dot_org.x.net.idna.Idna_punycode.punycode._process(_s?.__copy__(), true);
    }
