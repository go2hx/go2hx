package go.runtime;

function caller() {
	return {
		_0: new stdgo.GoUIntptr(0),
		_1: "",
		_2: 0,
		_3: false
	};
}

function numCPU()
	return 1;

final compiler = ("go2hx" : stdgo.GoString);

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
	return stdgo.Go.goroutines + 1
