package stdgo._internal.encoding.csv;
function _errorWithPosition(_err:stdgo.Error, _recNum:stdgo.GoInt, _positions:stdgo.Slice<stdgo.Slice<stdgo.GoArray<stdgo.GoInt>>>, _errPositions:stdgo.GoMap<stdgo.GoInt, stdgo.GoArray<stdgo.GoInt>>):stdgo.Error {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>), _1 : false };
        }, _parseErr = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return _err;
        };
        if ((_recNum >= (_positions.length) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("no positions found for error at record %d" : stdgo.GoString), stdgo.Go.toInterface(_recNum)));
        };
        var __tmp__ = (_errPositions != null && _errPositions.__exists__(_recNum) ? { _0 : _errPositions[_recNum], _1 : true } : { _0 : new stdgo.GoArray<stdgo.GoInt>(2, 2).__setNumber32__(), _1 : false }), _errPos:stdgo.GoArray<stdgo.GoInt> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("no error position found for error at record %d" : stdgo.GoString), stdgo.Go.toInterface(_recNum)));
        };
        var _parseErr1 = ((_parseErr : stdgo._internal.encoding.csv.Csv_parseerror.ParseError)?.__copy__() : stdgo._internal.encoding.csv.Csv_parseerror.ParseError);
        _parseErr1.startLine = _positions[(_recNum : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)];
        _parseErr1.line = _errPos[(0 : stdgo.GoInt)];
        _parseErr1.column = _errPos[(1 : stdgo.GoInt)];
        return stdgo.Go.asInterface((stdgo.Go.setRef(_parseErr1) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_parseerror.ParseError>));
    }
