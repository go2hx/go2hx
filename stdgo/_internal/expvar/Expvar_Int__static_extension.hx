package stdgo._internal.expvar;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.net.http.Http;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.encoding.json.Json;
@:keep @:allow(stdgo._internal.expvar.Expvar.Int__asInterface) class Int__static_extension {
    @:keep
    @:tdfield
    static public function set( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>, _value:stdgo.GoInt64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_> = _v;
        _internal.sync.atomic_.Atomic__storeInt64.storeInt64(stdgo.Go.pointer((@:checkr _v ?? throw "null pointer dereference")._i), _value);
    }
    @:keep
    @:tdfield
    static public function add( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>, _delta:stdgo.GoInt64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_> = _v;
        _internal.sync.atomic_.Atomic__addInt64.addInt64(stdgo.Go.pointer((@:checkr _v ?? throw "null pointer dereference")._i), _delta);
    }
    @:keep
    @:tdfield
    static public function string( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>):stdgo.GoString {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_> = _v;
        return stdgo._internal.strconv.Strconv_formatInt.formatInt(_internal.sync.atomic_.Atomic__loadInt64.loadInt64(stdgo.Go.pointer((@:checkr _v ?? throw "null pointer dereference")._i)), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function value( _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_>):stdgo.GoInt64 {
        @:recv var _v:stdgo.Ref<stdgo._internal.expvar.Expvar_Int_.Int_> = _v;
        return _internal.sync.atomic_.Atomic__loadInt64.loadInt64(stdgo.Go.pointer((@:checkr _v ?? throw "null pointer dereference")._i));
    }
}
