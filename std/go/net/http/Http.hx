package go.net.http;

function _newTLSConfig()
    return null;

@:recv(Transport)
function _onceSetNextProtoDefaults() {}


@:recv(Transport)
function _replaceReqCanceler() {
	return true;
}


@:recv(Transport)
function registerProtocol() {}