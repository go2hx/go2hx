package stdgo._internal.crypto.x509;
function _matchEmailConstraint(_mailbox:stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox, _constraint:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        if (stdgo._internal.strings.Strings_contains.contains(_constraint?.__copy__(), ("@" : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.crypto.x509.X509__parserfc2821mailbox._parseRFC2821Mailbox(_constraint?.__copy__()), _constraintMailbox:stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: internal error: cannot parse constraint %q" : stdgo.GoString), stdgo.Go.toInterface(_constraint)) };
            };
            return { _0 : ((_mailbox._local == _constraintMailbox._local) && stdgo._internal.strings.Strings_equalfold.equalFold(_mailbox._domain?.__copy__(), _constraintMailbox._domain?.__copy__()) : Bool), _1 : (null : stdgo.Error) };
        };
        return stdgo._internal.crypto.x509.X509__matchdomainconstraint._matchDomainConstraint(_mailbox._domain?.__copy__(), _constraint?.__copy__());
    }
