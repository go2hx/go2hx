package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Pipeline_asInterface) class Pipeline_static_extension {
    @:keep
    @:tdfield
    static public function endResponse( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline> = _p;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._response.end(_id);
    }
    @:keep
    @:tdfield
    static public function startResponse( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline> = _p;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._response.start(_id);
    }
    @:keep
    @:tdfield
    static public function endRequest( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline> = _p;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._request.end(_id);
    }
    @:keep
    @:tdfield
    static public function startRequest( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline>, _id:stdgo.GoUInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline> = _p;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._request.start(_id);
    }
    @:keep
    @:tdfield
    static public function next( _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline>):stdgo.GoUInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Pipeline.Pipeline> = _p;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.lock();
        var _id = ((@:checkr _p ?? throw "null pointer dereference")._id : stdgo.GoUInt);
        (@:checkr _p ?? throw "null pointer dereference")._id++;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._mu.unlock();
        return _id;
    }
}
