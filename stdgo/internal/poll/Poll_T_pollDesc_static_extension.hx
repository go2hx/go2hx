package stdgo.internal.poll;
class T_pollDesc_static_extension {
    static public function _pollable(_pd:T_pollDesc):Bool {
        final _pd = (_pd : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc>);
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._pollable(_pd);
    }
    static public function _waitCanceled(_pd:T_pollDesc, _mode:StdTypes.Int):Void {
        final _pd = (_pd : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc>);
        final _mode = (_mode : stdgo.GoInt);
        stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._waitCanceled(_pd, _mode);
    }
    static public function _waitWrite(_pd:T_pollDesc, _isFile:Bool):stdgo.Error {
        final _pd = (_pd : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc>);
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._waitWrite(_pd, _isFile);
    }
    static public function _waitRead(_pd:T_pollDesc, _isFile:Bool):stdgo.Error {
        final _pd = (_pd : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc>);
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._waitRead(_pd, _isFile);
    }
    static public function _wait(_pd:T_pollDesc, _mode:StdTypes.Int, _isFile:Bool):stdgo.Error {
        final _pd = (_pd : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc>);
        final _mode = (_mode : stdgo.GoInt);
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._wait(_pd, _mode, _isFile);
    }
    static public function _prepareWrite(_pd:T_pollDesc, _isFile:Bool):stdgo.Error {
        final _pd = (_pd : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc>);
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._prepareWrite(_pd, _isFile);
    }
    static public function _prepareRead(_pd:T_pollDesc, _isFile:Bool):stdgo.Error {
        final _pd = (_pd : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc>);
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._prepareRead(_pd, _isFile);
    }
    static public function _prepare(_pd:T_pollDesc, _mode:StdTypes.Int, _isFile:Bool):stdgo.Error {
        final _pd = (_pd : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc>);
        final _mode = (_mode : stdgo.GoInt);
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._prepare(_pd, _mode, _isFile);
    }
    static public function _evict(_pd:T_pollDesc):Void {
        final _pd = (_pd : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc>);
        stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._evict(_pd);
    }
    static public function _close(_pd:T_pollDesc):Void {
        final _pd = (_pd : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc>);
        stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._close(_pd);
    }
    static public function _init(_pd:T_pollDesc, _fd:FD):stdgo.Error {
        final _pd = (_pd : stdgo.Ref<stdgo._internal.internal.poll.Poll_T_pollDesc.T_pollDesc>);
        final _fd = (_fd : stdgo.Ref<stdgo._internal.internal.poll.Poll_FD.FD>);
        return stdgo._internal.internal.poll.Poll_T_pollDesc_static_extension.T_pollDesc_static_extension._init(_pd, _fd);
    }
}
