package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function _testUnquote(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _in:stdgo.GoString, _want:stdgo.GoString, _wantErr:stdgo.Error):Void {
        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_in?.__copy__()), _got:stdgo.GoString = __tmp__._0, _gotErr:stdgo.Error = __tmp__._1;
        if (((_got != _want) || (stdgo.Go.toInterface(_gotErr) != stdgo.Go.toInterface(_wantErr)) : Bool)) {
            _t.errorf(("Unquote(%q) = (%q, %v), want (%q, %v)" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_gotErr), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_wantErr));
        };
        if (_gotErr == null) {
            _want = _in?.__copy__();
        };
        var _suffix = ("\n\r\\\"`\'" : stdgo.GoString);
        if (((_in.length) > (0 : stdgo.GoInt) : Bool)) {
            _suffix = stdgo._internal.strings.Strings_replaceAll.replaceAll(_suffix?.__copy__(), (_in.__slice__(0, (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), stdgo.Go.str()?.__copy__())?.__copy__();
        };
        _in = (_in + (_suffix)?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_quotedPrefix.quotedPrefix(_in?.__copy__());
            _got = __tmp__._0?.__copy__();
            _gotErr = __tmp__._1;
        };
        if (((_gotErr == null) && (_wantErr != null) : Bool)) {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_got?.__copy__());
                _wantErr = __tmp__._1;
            };
            _want = _got?.__copy__();
        };
        if (((_got != _want) || (stdgo.Go.toInterface(_gotErr) != stdgo.Go.toInterface(_wantErr)) : Bool)) {
            _t.errorf(("QuotedPrefix(%q) = (%q, %v), want (%q, %v)" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_gotErr), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_wantErr));
        };
    }
