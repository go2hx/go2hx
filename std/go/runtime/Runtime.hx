package go.runtime;

function caller() {
	return {
		_0: new go.GoUIntptr(0),
		_1: "",
		_2: 0,
		_3: false
	};
}

function callers(_skip, _pc)
	return 0;

function version()
	return "go1.21.3";

function numCPU()
	return 1;

final compiler = ("go2hx" : go.GoString);

function setMutexProfileFraction()
	return 0;

function readMemStats() {}
function setFinalizer() {}
function setBlockProfileRate() {}
function lockOSThread() {}
function unlockOSThread() {}

function startTrace()
	return null;

function stopTrace() {}

function numCgoCall()
	return 0;

function keepAlive() {}
function goexit() {}
function gC() {}

function gOMAXPROCS()
	return 1;

function numGoroutine()
	return go.Go.goroutines + 1;
