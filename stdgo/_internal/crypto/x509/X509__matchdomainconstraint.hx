package stdgo._internal.crypto.x509;
function _matchDomainConstraint(_domain:stdgo.GoString, _constraint:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        if ((_constraint.length) == ((0 : stdgo.GoInt))) {
            return { _0 : true, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_domain?.__copy__()), _domainLabels:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: internal error: cannot parse domain %q" : stdgo.GoString), stdgo.Go.toInterface(_domain)) };
        };
        var _mustHaveSubdomains = (false : Bool);
        if (_constraint[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
            _mustHaveSubdomains = true;
            _constraint = (_constraint.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_constraint?.__copy__()), _constraintLabels:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: internal error: cannot parse domain %q" : stdgo.GoString), stdgo.Go.toInterface(_constraint)) };
        };
        if ((((_domainLabels.length) < (_constraintLabels.length) : Bool) || ((_mustHaveSubdomains && (_domainLabels.length == (_constraintLabels.length)) : Bool)) : Bool)) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        for (_i => _constraintLabel in _constraintLabels) {
            if (!stdgo._internal.strings.Strings_equalfold.equalFold(_constraintLabel?.__copy__(), _domainLabels[(_i : stdgo.GoInt)]?.__copy__())) {
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
